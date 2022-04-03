contract main {




// =====================  Runtime code  =====================


#
#  - panic()
#  - pause()
#
const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 stor0; offset 160
address owner;
address keeperAddress;
address strategistAddress;
address unirouterAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
address outputAddress;
address wantAddress;
address lpToken0Address;
address lpToken1Address;
uint32 stor13;
address rewardPoolAddress;
uint256 stor13;
array of struct outputToWantRoute;
uint8 stor15;
uint256 lastHarvest;

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return unirouterAddress
}

function paused() payable {
    return bool(stor0)
}

function lpToken0() payable {
    return lpToken0Address
}

function rewardPool() payable {
    return address(rewardPoolAddress)
}

function lpToken1() payable {
    return lpToken1Address
}

function harvestOnDeposit() payable {
    return bool(stor15)
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function beefyFeeRecipient() payable {
    return beefyFeeRecipientAddress
}

function callFee() payable {
    return callFee
}

function keeper() payable {
    return keeperAddress
}

function beefyFee() payable {
    return beefyFee
}

function outputToWantRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToWantRoute.length
    return outputToWantRoute[arg1].field_0
}

function lastHarvest() payable {
    return lastHarvest
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return address(vaultAddress)
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

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unirouterAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(vaultAddress) = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setBeefyFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beefyFeeRecipientAddress = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -arg1 + 888
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(address(rewardPoolAddress))
    staticcall address(rewardPoolAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    stor15 = uint8(arg1)
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if bool(uint8(arg1)) != 1:
        withdrawalFee = 5
    else:
        withdrawalFee = 0
}

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(rewardPoolAddress))
        call address(rewardPoolAddress).stake(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(address(rewardPoolAddress))
    staticcall address(rewardPoolAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(rewardPoolAddress))
    staticcall address(rewardPoolAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(rewardPoolAddress))
    call address(rewardPoolAddress).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function outputToWant() payable {
    mem[64] = (32 * outputToWantRoute.length) + 128
    mem[96] = outputToWantRoute.length
    if not outputToWantRoute.length:
        mem[(32 * outputToWantRoute.length) + 128] = 32
        mem[(32 * outputToWantRoute.length) + 160] = outputToWantRoute.length
        idx = 0
        s = (32 * outputToWantRoute.length) + 192
        t = 128
        while idx < outputToWantRoute.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * outputToWantRoute.length) + 128
           len (96 * outputToWantRoute.length) + 64
    mem[128] = address(outputToWantRoute.field_0)
    idx = 128
    s = 0
    while (32 * outputToWantRoute.length) + 96 > idx:
        mem[idx + 32] = outputToWantRoute[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * outputToWantRoute.length) + 128] = 32
    mem[(32 * outputToWantRoute.length) + 160] = outputToWantRoute.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < outputToWantRoute.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * outputToWantRoute.length) + -mem[64] + 192
}

function unpause() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    mem[100] = this.address
    mem[132] = address(rewardPoolAddress)
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(rewardPoolAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = address(rewardPoolAddress)
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor13)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address rg1, uint256 rg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call wantAddress with:
       funct Mask(32, 224, approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 0, stor13) == bool(0, Mask(224, 0, stor13))
            if not 0, Mask(224, 0, stor13):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 264] = this.address
        mem[ceil32(return_data.size) + 296] = unirouterAddress
        require ext_code.size(outputAddress)
        staticcall outputAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), unirouterAddress
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 296] = unirouterAddress
        mem[(2 * ceil32(return_data.size)) + 328] = -1
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address rg1, uint256 rg2)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, unirouterAddress, -1, 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call outputAddress with:
           funct Mask(32, 224, 0, unirouterAddress, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, unirouterAddress, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 0, stor13) == bool(0, Mask(224, 0, stor13))
                if not 0, Mask(224, 0, stor13):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                if not mem[(2 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if stor0:
            revert with 0, 'Pausable: paused'
    else:
        mem[ceil32(return_data.size) + 260] = return_data.size
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
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = unirouterAddress
        require ext_code.size(outputAddress)
        staticcall outputAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), unirouterAddress
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = unirouterAddress
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address rg1, uint256 rg2)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, unirouterAddress, -1, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call outputAddress with:
           funct Mask(32, 224, 0, unirouterAddress, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, unirouterAddress, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 0, stor13) == bool(0, Mask(224, 0, stor13))
                if not 0, Mask(224, 0, stor13):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if stor0:
                revert with 0, 'Pausable: paused'
        else:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 430] = 32
                mem[(4 * ceil32(return_data.size)) + 462] = 32
                mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 426
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 430] = 32
                    mem[(4 * ceil32(return_data.size)) + 462] = 42
                    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 426
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            if stor0:
                mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 430] = 32
                mem[(4 * ceil32(return_data.size)) + 462] = 16
                mem[(4 * ceil32(return_data.size)) + 494] = 0x5061757361626c653a2070617573656400000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 426
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    ('iszero', ('stor', ('name', 'stor0', 0)))
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(rewardPoolAddress))
        call address(rewardPoolAddress).stake(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
            else:
                if stor0:
                    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                    else:
                        if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), 0) << 288)
        else:
            if tx.origin == owner:
                mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                mem[ceil32(return_data.size) + 164] = arg1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
            else:
                if stor0:
                    mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                    mem[ceil32(return_data.size) + 164] = arg1
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = arg1
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                    else:
                        if withdrawalFee * arg1 / arg1 != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
                        mem[ceil32(return_data.size) + 164] = arg1 - (withdrawalFee * arg1 / 10000)
                        mem[ceil32(return_data.size) + 96] = 68
                        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
                        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 196] = 32
                        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0
                        mem[ceil32(return_data.size) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
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
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(rewardPoolAddress))
        call address(rewardPoolAddress).0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
            else:
                if stor0:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
                    else:
                        if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), 0) << 288)
        else:
            if tx.origin == owner:
                mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                mem[(2 * ceil32(return_data.size)) + 164] = arg1
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
            else:
                if stor0:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                    mem[(2 * ceil32(return_data.size)) + 164] = arg1
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call wantAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = arg1
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1, 0) << 288)
                    else:
                        if withdrawalFee * arg1 / arg1 != withdrawalFee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
                        mem[(2 * ceil32(return_data.size)) + 164] = arg1 - (withdrawalFee * arg1 / 10000)
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor4)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call wantAddress with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function harvest() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if msg.sender == tx.origin:
        require ext_code.size(address(rewardPoolAddress))
        call address(rewardPoolAddress).getReward() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[100] = this.address
        require ext_code.size(outputAddress)
        staticcall outputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = tx.origin
            mem[ceil32(return_data.size) + 164] = 0
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(outputAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0
            mem[ceil32(return_data.size) + 328] = 0
            call outputAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 264] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 296] = 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 160
                    mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 456
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 360] = this.address
                    mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _2019 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                    _2051 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                    mem[(4 * ceil32(return_data.size)) + 260] = _2051
                    require return_data.size >= _2019 + (32 * _2051) + 32
                    mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2051] = mem[(2 * ceil32(return_data.size)) + _2019 + 292 len 32 * _2051]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2627]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2627]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[ceil32(return_data.size) + 264] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 296] = 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 160
                    mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 456
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 360] = this.address
                    mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _2020 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                    _2052 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                    mem[(4 * ceil32(return_data.size)) + 260] = _2052
                    require return_data.size >= _2020 + (32 * _2052) + 32
                    mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2052] = mem[(2 * ceil32(return_data.size)) + _2020 + 292 len 32 * _2052]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2628 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2628]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2628]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[ceil32(return_data.size) + 260] = return_data.size
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _2021 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                    _2053 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2053
                    require return_data.size >= _2021 + (32 * _2053) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2053] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2021 + 293 len 32 * _2053]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2629 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2629]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2629]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _2022 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                    _2054 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2054
                    require return_data.size >= _2022 + (32 * _2054) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2054] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2022 + 293 len 32 * _2054]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2630 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2630]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2630]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 132] = tx.origin
            mem[ceil32(return_data.size) + 164] = 5 * ext_call.return_data[0] / 1000
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(outputAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0
            mem[ceil32(return_data.size) + 328] = 0
            call outputAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 264] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 296] = 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 160
                    mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 456
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 360] = this.address
                    mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _2011 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                    _2043 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                    mem[(4 * ceil32(return_data.size)) + 260] = _2043
                    require return_data.size >= _2011 + (32 * _2043) + 32
                    mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2043] = mem[(2 * ceil32(return_data.size)) + _2011 + 292 len 32 * _2043]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2619 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2619]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2619]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[ceil32(return_data.size) + 264] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 296] = 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 160
                    mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 456
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 360] = this.address
                    mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _2012 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                    _2044 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                    mem[(4 * ceil32(return_data.size)) + 260] = _2044
                    require return_data.size >= _2012 + (32 * _2044) + 32
                    mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2044] = mem[(2 * ceil32(return_data.size)) + _2012 + 292 len 32 * _2044]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2620 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2620]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2620]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[ceil32(return_data.size) + 260] = return_data.size
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _2013 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                    _2045 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2045
                    require return_data.size >= _2013 + (32 * _2045) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2045] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2013 + 293 len 32 * _2045]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2621 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2621]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2621]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _2014 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                    _2046 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2046
                    require return_data.size >= _2014 + (32 * _2046) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2046] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2014 + 293 len 32 * _2046]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2622 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2622]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2622]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        if address(vaultAddress) != msg.sender:
            revert with 0, '!contract'
        require ext_code.size(address(rewardPoolAddress))
        call address(rewardPoolAddress).getReward() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[100] = this.address
        require ext_code.size(outputAddress)
        staticcall outputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = tx.origin
            mem[ceil32(return_data.size) + 164] = 0
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(outputAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0
            mem[ceil32(return_data.size) + 328] = 0
            call outputAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 264] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 296] = 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 160
                    mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 456
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 360] = this.address
                    mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _2035 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                    _2067 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                    mem[(4 * ceil32(return_data.size)) + 260] = _2067
                    require return_data.size >= _2035 + (32 * _2067) + 32
                    mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2067] = mem[(2 * ceil32(return_data.size)) + _2035 + 292 len 32 * _2067]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2643 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2643]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2643]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[ceil32(return_data.size) + 264] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 296] = 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 160
                    mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 456
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 360] = this.address
                    mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _2036 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                    _2068 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                    mem[(4 * ceil32(return_data.size)) + 260] = _2068
                    require return_data.size >= _2036 + (32 * _2068) + 32
                    mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2068] = mem[(2 * ceil32(return_data.size)) + _2036 + 292 len 32 * _2068]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2644]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2644]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[ceil32(return_data.size) + 260] = return_data.size
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _2037 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                    _2069 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2069
                    require return_data.size >= _2037 + (32 * _2069) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2069] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2037 + 293 len 32 * _2069]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2645]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2645]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _2038 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                    _2070 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2070
                    require return_data.size >= _2038 + (32 * _2070) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2070] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2038 + 293 len 32 * _2070]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2646 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2646]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2646]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 132] = tx.origin
            mem[ceil32(return_data.size) + 164] = 5 * ext_call.return_data[0] / 1000
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(outputAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0
            mem[ceil32(return_data.size) + 328] = 0
            call outputAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 264] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 296] = 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 160
                    mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 456
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 360] = this.address
                    mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _2027 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                    _2059 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                    mem[(4 * ceil32(return_data.size)) + 260] = _2059
                    require return_data.size >= _2027 + (32 * _2059) + 32
                    mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2059] = mem[(2 * ceil32(return_data.size)) + _2027 + 292 len 32 * _2059]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2635 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2635]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2635]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[ceil32(return_data.size) + 264] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 296] = 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 160
                    mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 456
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 360] = this.address
                    mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _2028 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                    _2060 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                    mem[(4 * ceil32(return_data.size)) + 260] = _2060
                    require return_data.size >= _2028 + (32 * _2060) + 32
                    mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2060] = mem[(2 * ceil32(return_data.size)) + _2028 + 292 len 32 * _2060]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2636 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2636]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2636]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[ceil32(return_data.size) + 260] = return_data.size
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _2029 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                    _2061 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2061
                    require return_data.size >= _2029 + (32 * _2061) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2061] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2029 + 293 len 32 * _2061]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2637 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2637]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2637]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                    require ext_code.size(outputAddress)
                    staticcall outputAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                    mem[0] = 14
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    t = 0
                    while idx < outputToWantRoute.length:
                        mem[s] = outputToWantRoute[t].field_0
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _2030 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                    _2062 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2062
                    require return_data.size >= _2030 + (32 * _2062) + 32
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2062] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2030 + 293 len 32 * _2062]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2638]:
                        require ext_code.size(address(rewardPoolAddress))
                        call address(rewardPoolAddress).stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_2638]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    lastHarvest = block.timestamp
    emit StratHarvest(msg.sender);
}

function beforeDeposit() payable {
    if stor15:
        if address(vaultAddress) != msg.sender:
            revert with 0, '!vault'
        if msg.sender == tx.origin:
            require ext_code.size(address(rewardPoolAddress))
            call address(rewardPoolAddress).getReward() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[100] = this.address
            require ext_code.size(outputAddress)
            staticcall outputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 132] = tx.origin
                mem[ceil32(return_data.size) + 164] = 0
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(outputAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0
                mem[ceil32(return_data.size) + 328] = 0
                call outputAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _2017 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _2049 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _2049
                        require return_data.size >= _2017 + (32 * _2049) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2049] = mem[(2 * ceil32(return_data.size)) + _2017 + 292 len 32 * _2049]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2625 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2625]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2625]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _2018 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _2050 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _2050
                        require return_data.size >= _2018 + (32 * _2050) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2050] = mem[(2 * ceil32(return_data.size)) + _2018 + 292 len 32 * _2050]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2626 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2626]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2626]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2019 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _2051 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2051
                        require return_data.size >= _2019 + (32 * _2051) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2051] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2019 + 293 len 32 * _2051]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2627 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2627]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2627]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2020 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _2052 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2052
                        require return_data.size >= _2020 + (32 * _2052) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2052] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2020 + 293 len 32 * _2052]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2628 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2628]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2628]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 132] = tx.origin
                mem[ceil32(return_data.size) + 164] = 5 * ext_call.return_data[0] / 1000
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(outputAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0
                mem[ceil32(return_data.size) + 328] = 0
                call outputAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _2009 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _2041 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _2041
                        require return_data.size >= _2009 + (32 * _2041) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2041] = mem[(2 * ceil32(return_data.size)) + _2009 + 292 len 32 * _2041]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2617 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2617]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2617]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _2010 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _2042 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _2042
                        require return_data.size >= _2010 + (32 * _2042) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2042] = mem[(2 * ceil32(return_data.size)) + _2010 + 292 len 32 * _2042]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2618 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2618]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2618]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2011 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _2043 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2043
                        require return_data.size >= _2011 + (32 * _2043) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2043] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2011 + 293 len 32 * _2043]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2619 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2619]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2619]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2012 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _2044 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2044
                        require return_data.size >= _2012 + (32 * _2044) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2044] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2012 + 293 len 32 * _2044]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2620 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2620]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2620]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            if address(vaultAddress) != msg.sender:
                revert with 0, '!contract'
            require ext_code.size(address(rewardPoolAddress))
            call address(rewardPoolAddress).getReward() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[100] = this.address
            require ext_code.size(outputAddress)
            staticcall outputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 132] = tx.origin
                mem[ceil32(return_data.size) + 164] = 0
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(outputAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0
                mem[ceil32(return_data.size) + 328] = 0
                call outputAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _2033 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _2065 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _2065
                        require return_data.size >= _2033 + (32 * _2065) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2065] = mem[(2 * ceil32(return_data.size)) + _2033 + 292 len 32 * _2065]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2641 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2641]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2641]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _2034 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _2066 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _2066
                        require return_data.size >= _2034 + (32 * _2066) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2066] = mem[(2 * ceil32(return_data.size)) + _2034 + 292 len 32 * _2066]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2642 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2642]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2642]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2035 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _2067 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2067
                        require return_data.size >= _2035 + (32 * _2067) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2067] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2035 + 293 len 32 * _2067]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2643 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2643]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2643]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2036 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _2068 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2068
                        require return_data.size >= _2036 + (32 * _2068) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2068] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2036 + 293 len 32 * _2068]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2644 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2644]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2644]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 132] = tx.origin
                mem[ceil32(return_data.size) + 164] = 5 * ext_call.return_data[0] / 1000
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(outputAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0
                mem[ceil32(return_data.size) + 328] = 0
                call outputAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _2025 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _2057 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _2057
                        require return_data.size >= _2025 + (32 * _2057) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2057] = mem[(2 * ceil32(return_data.size)) + _2025 + 292 len 32 * _2057]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2633 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2633]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2633]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _2026 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _2058 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _2058
                        require return_data.size >= _2026 + (32 * _2058) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _2058] = mem[(2 * ceil32(return_data.size)) + _2026 + 292 len 32 * _2058]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2634 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2634]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2634]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2027 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _2059 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2059
                        require return_data.size >= _2027 + (32 * _2059) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2059] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2027 + 293 len 32 * _2059]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2635 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2635]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2635]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2028 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _2060 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2060
                        require return_data.size >= _2028 + (32 * _2060) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _2060] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2028 + 293 len 32 * _2060]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_2636]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_2636]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        lastHarvest = block.timestamp
        emit StratHarvest(msg.sender);
}

function managerHarvest() payable {
    if msg.sender == owner:
        if msg.sender == tx.origin:
            require ext_code.size(address(rewardPoolAddress))
            call address(rewardPoolAddress).getReward() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[100] = this.address
            require ext_code.size(outputAddress)
            staticcall outputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 132] = tx.origin
                mem[ceil32(return_data.size) + 164] = 0
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(outputAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0
                mem[ceil32(return_data.size) + 328] = 0
                call outputAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4019 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4083 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4083
                        require return_data.size >= _4019 + (32 * _4083) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4083] = mem[(2 * ceil32(return_data.size)) + _4019 + 292 len 32 * _4083]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5235 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5235]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5235]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4020 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4084 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4084
                        require return_data.size >= _4020 + (32 * _4084) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4084] = mem[(2 * ceil32(return_data.size)) + _4020 + 292 len 32 * _4084]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5236 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5236]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5236]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4021 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4085 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4085
                        require return_data.size >= _4021 + (32 * _4085) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4085] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4021 + 293 len 32 * _4085]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5237 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5237]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5237]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4022 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4086 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4086
                        require return_data.size >= _4022 + (32 * _4086) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4086] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4022 + 293 len 32 * _4086]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5238 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5238]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5238]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 132] = tx.origin
                mem[ceil32(return_data.size) + 164] = 5 * ext_call.return_data[0] / 1000
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(outputAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0
                mem[ceil32(return_data.size) + 328] = 0
                call outputAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4011 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4075 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4075
                        require return_data.size >= _4011 + (32 * _4075) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4075] = mem[(2 * ceil32(return_data.size)) + _4011 + 292 len 32 * _4075]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5227 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5227]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5227]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4012 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4076 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4076
                        require return_data.size >= _4012 + (32 * _4076) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4076] = mem[(2 * ceil32(return_data.size)) + _4012 + 292 len 32 * _4076]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5228 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5228]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5228]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4013 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4077 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4077
                        require return_data.size >= _4013 + (32 * _4077) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4077] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4013 + 293 len 32 * _4077]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5229 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5229]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5229]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4014 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4078 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4078
                        require return_data.size >= _4014 + (32 * _4078) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4078] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4014 + 293 len 32 * _4078]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5230 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5230]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5230]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            if address(vaultAddress) != msg.sender:
                revert with 0, '!contract'
            require ext_code.size(address(rewardPoolAddress))
            call address(rewardPoolAddress).getReward() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[100] = this.address
            require ext_code.size(outputAddress)
            staticcall outputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 132] = tx.origin
                mem[ceil32(return_data.size) + 164] = 0
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(outputAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0
                mem[ceil32(return_data.size) + 328] = 0
                call outputAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4035 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4099 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4099
                        require return_data.size >= _4035 + (32 * _4099) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4099] = mem[(2 * ceil32(return_data.size)) + _4035 + 292 len 32 * _4099]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5251 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5251]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5251]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4036 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4100 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4100
                        require return_data.size >= _4036 + (32 * _4100) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4100] = mem[(2 * ceil32(return_data.size)) + _4036 + 292 len 32 * _4100]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5252 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5252]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5252]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4037 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4101 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4101
                        require return_data.size >= _4037 + (32 * _4101) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4101] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4037 + 293 len 32 * _4101]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5253 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5253]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5253]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4038 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4102 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4102
                        require return_data.size >= _4038 + (32 * _4102) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4102] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4038 + 293 len 32 * _4102]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5254 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5254]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5254]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 132] = tx.origin
                mem[ceil32(return_data.size) + 164] = 5 * ext_call.return_data[0] / 1000
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(outputAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0
                mem[ceil32(return_data.size) + 328] = 0
                call outputAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4027 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4091 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4091
                        require return_data.size >= _4027 + (32 * _4091) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4091] = mem[(2 * ceil32(return_data.size)) + _4027 + 292 len 32 * _4091]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5243 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5243]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5243]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4028 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4092 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4092
                        require return_data.size >= _4028 + (32 * _4092) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4092] = mem[(2 * ceil32(return_data.size)) + _4028 + 292 len 32 * _4092]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5244 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5244]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5244]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4029 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4093 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4093
                        require return_data.size >= _4029 + (32 * _4093) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4093] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4029 + 293 len 32 * _4093]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5245 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5245]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5245]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4030 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4094 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4094
                        require return_data.size >= _4030 + (32 * _4094) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4094] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4030 + 293 len 32 * _4094]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5246 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5246]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5246]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        if msg.sender == tx.origin:
            require ext_code.size(address(rewardPoolAddress))
            call address(rewardPoolAddress).getReward() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[100] = this.address
            require ext_code.size(outputAddress)
            staticcall outputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 132] = tx.origin
                mem[ceil32(return_data.size) + 164] = 0
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(outputAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0
                mem[ceil32(return_data.size) + 328] = 0
                call outputAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4051 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4115 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4115
                        require return_data.size >= _4051 + (32 * _4115) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4115] = mem[(2 * ceil32(return_data.size)) + _4051 + 292 len 32 * _4115]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5267 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5267]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5267]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4052 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4116 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4116
                        require return_data.size >= _4052 + (32 * _4116) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4116] = mem[(2 * ceil32(return_data.size)) + _4052 + 292 len 32 * _4116]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5268 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5268]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5268]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4053 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4117 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4117
                        require return_data.size >= _4053 + (32 * _4117) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4117] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4053 + 293 len 32 * _4117]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5269 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5269]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5269]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4054 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4118 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4118
                        require return_data.size >= _4054 + (32 * _4118) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4118] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4054 + 293 len 32 * _4118]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5270 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5270]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5270]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 132] = tx.origin
                mem[ceil32(return_data.size) + 164] = 5 * ext_call.return_data[0] / 1000
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(outputAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0
                mem[ceil32(return_data.size) + 328] = 0
                call outputAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4043 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4107 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4107
                        require return_data.size >= _4043 + (32 * _4107) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4107] = mem[(2 * ceil32(return_data.size)) + _4043 + 292 len 32 * _4107]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5259]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5259]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4044 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4108 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4108
                        require return_data.size >= _4044 + (32 * _4108) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4108] = mem[(2 * ceil32(return_data.size)) + _4044 + 292 len 32 * _4108]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5260 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5260]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5260]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4045 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4109 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4109
                        require return_data.size >= _4045 + (32 * _4109) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4109] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4045 + 293 len 32 * _4109]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5261 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5261]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5261]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4046 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4110 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4110
                        require return_data.size >= _4046 + (32 * _4110) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4110] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4046 + 293 len 32 * _4110]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5262]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5262]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            if address(vaultAddress) != msg.sender:
                revert with 0, '!contract'
            require ext_code.size(address(rewardPoolAddress))
            call address(rewardPoolAddress).getReward() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[100] = this.address
            require ext_code.size(outputAddress)
            staticcall outputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 132] = tx.origin
                mem[ceil32(return_data.size) + 164] = 0
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(outputAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0
                mem[ceil32(return_data.size) + 328] = 0
                call outputAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 0, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4067 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4131 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4131
                        require return_data.size >= _4067 + (32 * _4131) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4131] = mem[(2 * ceil32(return_data.size)) + _4067 + 292 len 32 * _4131]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5283 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5283]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5283]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4068 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4132 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4132
                        require return_data.size >= _4068 + (32 * _4132) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4132] = mem[(2 * ceil32(return_data.size)) + _4068 + 292 len 32 * _4132]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5284 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5284]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5284]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4069 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4133 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4133
                        require return_data.size >= _4069 + (32 * _4133) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4133] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4069 + 293 len 32 * _4133]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5285 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5285]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5285]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4070 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4134 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4134
                        require return_data.size >= _4070 + (32 * _4134) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4134] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4070 + 293 len 32 * _4134]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5286 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5286]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5286]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 132] = tx.origin
                mem[ceil32(return_data.size) + 164] = 5 * ext_call.return_data[0] / 1000
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = address(tx.origin) << 64
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(outputAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0
                mem[ceil32(return_data.size) + 328] = 0
                call outputAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(tx.origin) << 64, 0, 5 * ext_call.return_data[0] / 1000, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4059 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4123 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4123
                        require return_data.size >= _4059 + (32 * _4123) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4123] = mem[(2 * ceil32(return_data.size)) + _4059 + 292 len 32 * _4123]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5275 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5275]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5275]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 296] = 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 160
                        mem[(2 * ceil32(return_data.size)) + 424] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 456
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 360] = this.address
                        mem[(2 * ceil32(return_data.size)) + 392] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + 456 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 260
                        require return_data.size >= 32
                        _4060 = mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 260 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 291
                        _4124 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 260 len 4], ext_call.return_data[0 len 28] + 260]) + 292
                        mem[(4 * ceil32(return_data.size)) + 260] = _4124
                        require return_data.size >= _4060 + (32 * _4124) + 32
                        mem[(4 * ceil32(return_data.size)) + 292 len 32 * _4124] = mem[(2 * ceil32(return_data.size)) + _4060 + 292 len 32 * _4124]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5276 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5276]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5276]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4061 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4125 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4125
                        require return_data.size >= _4061 + (32 * _4125) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4125] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4061 + 293 len 32 * _4125]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5277 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5277]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5277]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(outputAddress)
                        staticcall outputAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = outputToWantRoute.length
                        mem[0] = 14
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        t = 0
                        while idx < outputToWantRoute.length:
                            mem[s] = outputToWantRoute[t].field_0
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp
                        require ext_code.size(unirouterAddress)
                        call unirouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWantRoute.length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 32 * outputToWantRoute.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _4062 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 292
                        _4126 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 32 >= 0 and (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 261]) + 293
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _4126
                        require return_data.size >= _4062 + (32 * _4126) + 32
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _4126] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _4062 + 293 len 32 * _4126]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5278 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5278]:
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5278]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    lastHarvest = block.timestamp
    emit StratHarvest(msg.sender);
}



}
