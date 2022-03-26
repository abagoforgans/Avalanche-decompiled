contract main {




// =====================  Runtime code  =====================


#
#  - depositWithPermit(uint256 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5)
#
const decimals = 18

const DOMAIN_TYPEHASH = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const VERSION_HASH = 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6


array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint256 nonces;
address owner;
uint256 totalDeposits;
address routerAddress;
address depositTokenAddress;
address stor10;
address stor11;
address rewardTokenAddress;
address stakingContractAddress;
uint256 PID;
uint256 MIN_TOKENS_TO_REINVEST;
uint256 REINVEST_REWARD_BIPS;
uint256 ADMIN_FEE_BIPS;
uint8 stor18;
uint256 stor18;
uint256 MIN_TOKENS_TO_REINVEST_BEFORE_DEPOSIT;

function name() payable {
    return name[0 len name.length].field_0
}

function ADMIN_FEE_BIPS() payable {
    return ADMIN_FEE_BIPS
}

function MIN_TOKENS_TO_REINVEST_BEFORE_DEPOSIT() payable {
    return MIN_TOKENS_TO_REINVEST_BEFORE_DEPOSIT
}

function REQUIRE_REINVEST_BEFORE_DEPOSIT() payable {
    return bool(uint8(stor18))
}

function totalSupply() payable {
    return totalSupply
}

function PID() payable {
    return PID
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function totalDeposits() payable {
    return totalDeposits
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function REINVEST_REWARD_BIPS() payable {
    return REINVEST_REWARD_BIPS
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function MIN_TOKENS_TO_REINVEST() payable {
    return MIN_TOKENS_TO_REINVEST
}

function depositToken() payable {
    return depositTokenAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function stakingContract() payable {
    return stakingContractAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function router() payable {
    return routerAddress
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

function updateRequireReinvestBeforeDeposit() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor18) = not bool(uint8(stor18)) or Mask(248, 8, uint256(stor18))
    emit UpdateRequireReinvestBeforeDeposit(bool(uint8(stor18)));
}

function updateMinTokensToReinvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit UpdateMinTokensToReinvest(MIN_TOKENS_TO_REINVEST, arg1);
    MIN_TOKENS_TO_REINVEST = arg1
}

function updateMinTokensToReinvestBeforeDeposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit UpdateMinTokensToReinvestBeforeDeposit(MIN_TOKENS_TO_REINVEST_BEFORE_DEPOSIT, arg1);
    MIN_TOKENS_TO_REINVEST_BEFORE_DEPOSIT = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0, '_approve::owner zero address'
    if not arg1:
        revert with 0, '_approve::spender zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args PID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    totalDeposits = 0
}

function updateAdminFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 + REINVEST_REWARD_BIPS < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + REINVEST_REWARD_BIPS > 10000:
        revert with 0, 'admin fee too high'
    emit UpdateAdminFee(ADMIN_FEE_BIPS, arg1);
    ADMIN_FEE_BIPS = arg1
}

function recoverAVAX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'amount too low'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(0, arg1);
}

function updateReinvestReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 + ADMIN_FEE_BIPS < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + ADMIN_FEE_BIPS > 10000:
        revert with 0, 'reinvest reward too high'
    emit UpdateReinvestReward(REINVEST_REWARD_BIPS, arg1);
    REINVEST_REWARD_BIPS = arg1
}

function revokeAllowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'amount too low'
    if arg1 == depositTokenAddress:
        revert with 0, 'cannot recover deposit token'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Recovered(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '_transferTokens: cannot transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    46,
                    0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63, mem[174 len 18] >> 112,
                    0
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function checkReward() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.pendingOlive(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args PID, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function getDomainSeparator() payable {
    if not bool(name.length):
        mem[96] = Mask(248, 8, name.length)
        return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len name.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
    if bool(name.length) != 1:
        return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len -96]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
    idx = 0
    s = 0
    while idx < name.length.field_1:
        mem[idx + 96] = name[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len name.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
}

function getDepositTokensForShares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return 0
    require totalSupply
    if totalSupply * totalDeposits / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalSupply * totalDeposits:
        return 0
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if totalSupply:
            return (0 / totalSupply)
    else:
        if arg1:
            if arg1 * totalDeposits / arg1 != totalDeposits:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if totalSupply:
                return (arg1 * totalDeposits / totalSupply)
    revert
}

function getSharesForDepositTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return arg1
    require totalSupply
    if totalSupply * totalDeposits / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalSupply * totalDeposits:
        return arg1
    if not arg1:
        if totalDeposits <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if totalDeposits:
            return (0 / totalDeposits)
    else:
        if arg1:
            if arg1 * totalSupply / arg1 != totalSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalDeposits <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if totalDeposits:
                return (arg1 * totalSupply / totalDeposits)
    revert
}

function estimateReinvestReward() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.pendingOlive(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args PID, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if 2 * ext_call.return_data[0] < MIN_TOKENS_TO_REINVEST:
        return 0
    if not uint255(ext_call.return_data[0]):
        return 0
    require 2 * ext_call.return_data[0]
    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 2 * ext_call.return_data[0] != REINVEST_REWARD_BIPS:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
}

function setAllowances() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stakingContractAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor10)
    call stor10.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor11)
    call stor11.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if arg4 < block.timestamp:
        revert with 0, 'permit::expired'
    nonces[address(arg1)]++
    if not bool(name.length):
        mem[320] = Mask(248, 8, name.length)
        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[320 len name.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    else:
        if bool(name.length) != 1:
            signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[320 len -320]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        else:
            idx = 0
            s = 0
            while idx < name.length.field_1:
                mem[idx + 320] = name[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[320 len name.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Arch::validateSig: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'Arch::validateSig: invalid signature'
    if not arg1:
        revert with 0, '_approve::owner zero address'
    if not arg2:
        revert with 0, '_approve::spender zero address'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if msg.sender == arg1:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '_transferTokens: cannot transfer to the zero address'
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        46,
                        0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63, mem[174 len 18] >> 112,
                        0
    else:
        if allowance[address(arg1)][address(msg.sender)] == -1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            '_transferTokens: cannot transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            46,
                            0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63, mem[174 len 18] >> 112,
                            0
        else:
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            47,
                            0x797472616e7366657246726f6d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[175 len 17] >> 120,
                            0
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            if not arg2:
                revert with 0, '_transferTokens: cannot transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            46,
                            0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63, mem[270 len 18] >> 112,
                            0
    ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 4))))
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply:
        require totalSupply
        if totalSupply * totalDeposits / totalSupply != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalSupply * totalDeposits:
            if not arg1:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require totalSupply
                if 0 / totalSupply > 0:
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.withdraw(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, 0 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(depositTokenAddress)
                    call depositTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer failed'
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x655f6275726e3a206275726e20616d6f756e7420657863656564732066726f6d2062616c616e63, mem[ceil32(return_data.size) + 231 len 25] >> 56,
                                    0
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe5f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c, mem[ceil32(return_data.size) + 327 len 25] >> 56,
                                    0
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if 0 / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    totalDeposits -= 0 / totalSupply
                    emit Withdraw((0 / totalSupply), msg.sender);
            else:
                require arg1
                if arg1 * totalDeposits / arg1 != totalDeposits:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require totalSupply
                if arg1 * totalDeposits / totalSupply > 0:
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.withdraw(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, arg1 * totalDeposits / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(depositTokenAddress)
                    call depositTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * totalDeposits / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer failed'
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x655f6275726e3a206275726e20616d6f756e7420657863656564732066726f6d2062616c616e63, mem[ceil32(return_data.size) + 231 len 25] >> 56,
                                    0
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe5f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c, mem[ceil32(return_data.size) + 327 len 25] >> 56,
                                    0
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if arg1 * totalDeposits / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    totalDeposits -= arg1 * totalDeposits / totalSupply
                    emit Withdraw((arg1 * totalDeposits / totalSupply), msg.sender);
}

function reinvest() payable {
    if msg.sender != tx.origin:
        revert with 0, 'onlyEOA'
    mem[100] = PID
    mem[132] = this.address
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.pendingOlive(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args PID, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if 2 * ext_call.return_data[0] < MIN_TOKENS_TO_REINVEST:
        revert with 0, 'MIN_TOKENS_TO_REINVEST'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args PID, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not uint255(ext_call.return_data[0]):
        mem[(2 * ceil32(return_data.size)) + 96] = 26
        mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if not uint255(ext_call.return_data[0]):
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            mem[(2 * ceil32(return_data.size)) + 224] = 31
            mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction underflow', 0
            mem[(2 * ceil32(return_data.size)) + 288] = 31
            mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
            mem[(2 * ceil32(return_data.size)) + 352] = 26
            mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
            if uint255(ext_call.return_data[0]) <= 0:
                revert with 0, 'amount too low'
            mem[(2 * ceil32(return_data.size)) + 416] = 3
            mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
            mem[(2 * ceil32(return_data.size)) + 480] = stor11
            mem[(2 * ceil32(return_data.size)) + 512] = stor10
            if rewardTokenAddress == stor10:
                mem[(2 * ceil32(return_data.size)) + 544] = 2
                mem[(2 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                mem[(2 * ceil32(return_data.size)) + 608] = stor11
                if rewardTokenAddress == stor11:
                    mem[(2 * ceil32(return_data.size)) + 708] = uint255(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 740] = uint255(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 772] = 0
                    mem[(2 * ceil32(return_data.size)) + 804] = 0
                    mem[(2 * ceil32(return_data.size)) + 836] = this.address
                    mem[(2 * ceil32(return_data.size)) + 868] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args stor10, stor11, 2 * ext_call.return_data[0], 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                    mem[(2 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    if ext_call.return_data[64] <= 0:
                        mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 644] = 32
                        mem[(4 * ceil32(return_data.size)) + 676] = 14
                        mem[(4 * ceil32(return_data.size)) + 708] = 'amount too low'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 644] = PID
                        mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 644 len (5 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                            totalDeposits += ext_call.return_data[64]
                            mem[(4 * ceil32(return_data.size)) + 640] = totalDeposits
                            mem[(4 * ceil32(return_data.size)) + 672] = totalSupply
                            emit Reinvest(uint256 rg1, uint256 rg2):
                                          mem[(4 * ceil32(return_data.size)) + 640 len (5 * ceil32(return_data.size)) + 64],
                        mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 644] = 32
                        mem[(4 * ceil32(return_data.size)) + 676] = 27
                        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 640
                       len (5 * ceil32(return_data.size)) + 100
                mem[(2 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 644] = uint255(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 676] = 64
                mem[(2 * ceil32(return_data.size)) + 708] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 576
                t = (2 * ceil32(return_data.size)) + 740
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 2 * ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 740 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 640
                require return_data.size >= 32
                _833 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                _875 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640] <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 672
                mem[(4 * ceil32(return_data.size)) + 640] = _875
                require _833 + (32 * _875) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _833 + 672
                t = (4 * ceil32(return_data.size)) + 672
                while idx < _875:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _875 - 1 < _875
                _1982 = mem[(32 * _875 - 1) + (4 * ceil32(return_data.size)) + 672]
                _1983 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                mem[mem[64] + 36] = _1982
                mem[mem[64] + 68] = 160
                _2008 = mem[(2 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 544]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 576
                t = mem[64] + 196
                while idx < _2008:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1983 + 100] = this.address
                mem[_1983 + 132] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1983 + (32 * _2008) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2932 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2948 = mem[_2932]
                require mem[_2932] <= test266151307()
                require _2932 + mem[_2932] + 31 < _2932 + return_data.size
                _2964 = mem[_2932 + mem[_2932]]
                require mem[_2932 + mem[_2932]] <= test266151307()
                require _2932 + ceil32(return_data.size) + (32 * mem[_2932 + mem[_2932]]) + 32 <= test266151307() and (32 * mem[_2932 + mem[_2932]]) + 32 >= 0
                mem[64] = _2932 + ceil32(return_data.size) + (32 * mem[_2932 + mem[_2932]]) + 32
                mem[_2932 + ceil32(return_data.size)] = _2964
                require _2948 + (32 * _2964) + 32 <= return_data.size
                idx = 0
                s = _2932 + _2948 + 32
                t = _2932 + ceil32(return_data.size) + 32
                while idx < _2964:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                require mem[(2 * ceil32(return_data.size)) + 544] - 1 < mem[(2 * ceil32(return_data.size)) + 544]
                _3837 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 544] - 1) + (2 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                mem[mem[64] + 68] = uint255(ext_call.return_data[0])
                mem[mem[64] + 100] = _1982
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_3837), 2 * ext_call.return_data[0], _1982, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4124 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_4124] == mem[_4124]
                require mem[_4124 + 32] == mem[_4124 + 32]
                require mem[_4124 + 64] == mem[_4124 + 64]
                if mem[_4124 + 64] <= 0:
                    revert with 0, 'amount too low'
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args PID, mem[_4124 + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalDeposits + mem[_4124 + 64] < totalDeposits:
                    revert with 0, 'SafeMath: addition overflow'
                totalDeposits += mem[_4124 + 64]
            else:
                mem[(2 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 548] = uint255(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 580] = 64
                mem[(2 * ceil32(return_data.size)) + 612] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 448
                t = (2 * ceil32(return_data.size)) + 644
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 2 * ext_call.return_data[0], Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 644 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 544
                require return_data.size >= 32
                _834 = mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
                _876 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544] <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]) + 576 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]) + 576
                mem[(4 * ceil32(return_data.size)) + 544] = _876
                require _834 + (32 * _876) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _834 + 576
                t = (4 * ceil32(return_data.size)) + 576
                while idx < _876:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _876 - 1 < _876
                _1984 = mem[(32 * _876 - 1) + (4 * ceil32(return_data.size)) + 576]
                _1985 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                mem[mem[64] + 36] = _1984
                mem[mem[64] + 68] = 160
                _2009 = mem[(2 * ceil32(return_data.size)) + 416]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 448
                t = mem[64] + 196
                while idx < _2009:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1985 + 100] = this.address
                mem[_1985 + 132] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1985 + (32 * _2009) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2933 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2949 = mem[_2933]
                require mem[_2933] <= test266151307()
                require _2933 + mem[_2933] + 31 < _2933 + return_data.size
                _2965 = mem[_2933 + mem[_2933]]
                require mem[_2933 + mem[_2933]] <= test266151307()
                require _2933 + ceil32(return_data.size) + (32 * mem[_2933 + mem[_2933]]) + 32 <= test266151307() and (32 * mem[_2933 + mem[_2933]]) + 32 >= 0
                mem[64] = _2933 + ceil32(return_data.size) + (32 * mem[_2933 + mem[_2933]]) + 32
                mem[_2933 + ceil32(return_data.size)] = _2965
                require _2949 + (32 * _2965) + 32 <= return_data.size
                idx = 0
                s = _2933 + _2949 + 32
                t = _2933 + ceil32(return_data.size) + 32
                while idx < _2965:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3822 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3822 + 32 len 64] = call.data[calldata.size len 64]
                require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                require 0 < mem[_3822]
                mem[_3822 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                require 1 < mem[_3822]
                mem[_3822 + 64] = stor11
                require mem[_3822] - 1 < mem[_3822]
                require 0 < mem[_3822]
                if mem[_3822 + 44 len 20] == mem[(32 * mem[_3822] - 1) + _3822 + 44 len 20]:
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[_3822] - 1 < mem[_3822]
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3822] - 1) + _3822 + 44 len 20], _1984, 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    if ext_call.return_data[64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, ext_call.return_data[64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += ext_call.return_data[64]
                else:
                    mem[_3822 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3822 + 100] = uint255(ext_call.return_data[0])
                    mem[_3822 + 132] = 64
                    mem[_3822 + 164] = mem[_3822]
                    idx = 0
                    s = _3822 + 32
                    t = _3822 + 196
                    while idx < mem[_3822]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3822 + (32 * mem[_3822]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4629 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4640 = mem[_4629]
                    require mem[_4629] <= test266151307()
                    require _4629 + mem[_4629] + 31 < _4629 + return_data.size
                    _4653 = mem[_4629 + mem[_4629]]
                    require mem[_4629 + mem[_4629]] <= test266151307()
                    require _4629 + ceil32(return_data.size) + (32 * mem[_4629 + mem[_4629]]) + 32 <= test266151307() and (32 * mem[_4629 + mem[_4629]]) + 32 >= 0
                    mem[64] = _4629 + ceil32(return_data.size) + (32 * mem[_4629 + mem[_4629]]) + 32
                    mem[_4629 + ceil32(return_data.size)] = _4653
                    require _4640 + (32 * _4653) + 32 <= return_data.size
                    idx = 0
                    s = _4629 + _4640 + 32
                    t = _4629 + ceil32(return_data.size) + 32
                    while idx < _4653:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4653 - 1 < _4653
                    _5043 = mem[(32 * _4653 - 1) + _4629 + ceil32(return_data.size) + 32]
                    _5044 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                    mem[mem[64] + 36] = _5043
                    mem[mem[64] + 68] = 160
                    _5056 = mem[_3822]
                    mem[mem[64] + 164] = mem[_3822]
                    idx = 0
                    s = _3822 + 32
                    t = mem[64] + 196
                    while idx < _5056:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_5044 + 100] = this.address
                    mem[_5044 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _5044 + (32 * _5056) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5335 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5343 = mem[_5335]
                    require mem[_5335] <= test266151307()
                    require _5335 + mem[_5335] + 31 < _5335 + return_data.size
                    _5351 = mem[_5335 + mem[_5335]]
                    require mem[_5335 + mem[_5335]] <= test266151307()
                    require _5335 + ceil32(return_data.size) + (32 * mem[_5335 + mem[_5335]]) + 32 <= test266151307() and (32 * mem[_5335 + mem[_5335]]) + 32 >= 0
                    mem[64] = _5335 + ceil32(return_data.size) + (32 * mem[_5335 + mem[_5335]]) + 32
                    mem[_5335 + ceil32(return_data.size)] = _5351
                    require _5343 + (32 * _5351) + 32 <= return_data.size
                    idx = 0
                    s = _5335 + _5343 + 32
                    t = _5335 + ceil32(return_data.size) + 32
                    while idx < _5351:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[_3822] - 1 < mem[_3822]
                    _5618 = mem[(32 * mem[_3822] - 1) + _3822 + 32]
                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = _1984
                    mem[mem[64] + 100] = _5043
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_5618), _1984, _5043, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5648 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_5648] == mem[_5648]
                    require mem[_5648 + 32] == mem[_5648 + 32]
                    require mem[_5648 + 64] == mem[_5648 + 64]
                    if mem[_5648 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, mem[_5648 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_5648 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_5648 + 64]
            emit Reinvest(totalDeposits, totalSupply);
        else:
            require 2 * ext_call.return_data[0]
            if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 2 * ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 <= 0:
                mem[(2 * ceil32(return_data.size)) + 224] = 31
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                if 0 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[(2 * ceil32(return_data.size)) + 288] = 31
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[(2 * ceil32(return_data.size)) + 352] = 26
                mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2 <= 0:
                    revert with 0, 'amount too low'
                mem[(2 * ceil32(return_data.size)) + 416] = 3
                mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                mem[(2 * ceil32(return_data.size)) + 480] = stor11
                mem[(2 * ceil32(return_data.size)) + 512] = stor10
                if rewardTokenAddress == stor10:
                    mem[(2 * ceil32(return_data.size)) + 544] = 2
                    mem[(2 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 608] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 772] = 0
                        mem[(2 * ceil32(return_data.size)) + 804] = 0
                        mem[(2 * ceil32(return_data.size)) + 836] = this.address
                        mem[(2 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 644] = 32
                            mem[(4 * ceil32(return_data.size)) + 676] = 14
                            mem[(4 * ceil32(return_data.size)) + 708] = 'amount too low'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 644] = PID
                            mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 644 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                totalDeposits += ext_call.return_data[64]
                                mem[(4 * ceil32(return_data.size)) + 640] = totalDeposits
                                mem[(4 * ceil32(return_data.size)) + 672] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(4 * ceil32(return_data.size)) + 640 len (5 * ceil32(return_data.size)) + 64],
                            mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 644] = 32
                            mem[(4 * ceil32(return_data.size)) + 676] = 27
                            mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 640
                           len (5 * ceil32(return_data.size)) + 100
                    mem[(2 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[(2 * ceil32(return_data.size)) + 676] = 64
                    mem[(2 * ceil32(return_data.size)) + 708] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 576
                    t = (2 * ceil32(return_data.size)) + 740
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 740 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 640
                    require return_data.size >= 32
                    _825 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                    _870 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                    mem[(4 * ceil32(return_data.size)) + 640] = _870
                    require _825 + (32 * _870) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _825 + 672
                    t = (4 * ceil32(return_data.size)) + 672
                    while idx < _870:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _870 - 1 < _870
                    _1974 = mem[(32 * _870 - 1) + (4 * ceil32(return_data.size)) + 672]
                    _1975 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1974
                    mem[mem[64] + 68] = 160
                    _2004 = mem[(2 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 544]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 576
                    t = mem[64] + 196
                    while idx < _2004:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1975 + 100] = this.address
                    mem[_1975 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1975 + (32 * _2004) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2928 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2944 = mem[_2928]
                    require mem[_2928] <= test266151307()
                    require _2928 + mem[_2928] + 31 < _2928 + return_data.size
                    _2960 = mem[_2928 + mem[_2928]]
                    require mem[_2928 + mem[_2928]] <= test266151307()
                    require _2928 + ceil32(return_data.size) + (32 * mem[_2928 + mem[_2928]]) + 32 <= test266151307() and (32 * mem[_2928 + mem[_2928]]) + 32 >= 0
                    mem[64] = _2928 + ceil32(return_data.size) + (32 * mem[_2928 + mem[_2928]]) + 32
                    mem[_2928 + ceil32(return_data.size)] = _2960
                    require _2944 + (32 * _2960) + 32 <= return_data.size
                    idx = 0
                    s = _2928 + _2944 + 32
                    t = _2928 + ceil32(return_data.size) + 32
                    while idx < _2960:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[(2 * ceil32(return_data.size)) + 544] - 1 < mem[(2 * ceil32(return_data.size)) + 544]
                    _3833 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 544] - 1) + (2 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _1974
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3833), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1974, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4122 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_4122] == mem[_4122]
                    require mem[_4122 + 32] == mem[_4122 + 32]
                    require mem[_4122 + 64] == mem[_4122 + 64]
                    if mem[_4122 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, mem[_4122 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_4122 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_4122 + 64]
                else:
                    mem[(2 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[(2 * ceil32(return_data.size)) + 580] = 64
                    mem[(2 * ceil32(return_data.size)) + 612] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = (2 * ceil32(return_data.size)) + 644
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 644 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _826 = mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
                    _871 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                    mem[(4 * ceil32(return_data.size)) + 544] = _871
                    require _826 + (32 * _871) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _826 + 576
                    t = (4 * ceil32(return_data.size)) + 576
                    while idx < _871:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _871 - 1 < _871
                    _1976 = mem[(32 * _871 - 1) + (4 * ceil32(return_data.size)) + 576]
                    _1977 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1976
                    mem[mem[64] + 68] = 160
                    _2005 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _2005:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1977 + 100] = this.address
                    mem[_1977 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1977 + (32 * _2005) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2929 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2945 = mem[_2929]
                    require mem[_2929] <= test266151307()
                    require _2929 + mem[_2929] + 31 < _2929 + return_data.size
                    _2961 = mem[_2929 + mem[_2929]]
                    require mem[_2929 + mem[_2929]] <= test266151307()
                    require _2929 + ceil32(return_data.size) + (32 * mem[_2929 + mem[_2929]]) + 32 <= test266151307() and (32 * mem[_2929 + mem[_2929]]) + 32 >= 0
                    mem[64] = _2929 + ceil32(return_data.size) + (32 * mem[_2929 + mem[_2929]]) + 32
                    mem[_2929 + ceil32(return_data.size)] = _2961
                    require _2945 + (32 * _2961) + 32 <= return_data.size
                    idx = 0
                    s = _2929 + _2945 + 32
                    t = _2929 + ceil32(return_data.size) + 32
                    while idx < _2961:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3814 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3814 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3814]
                    mem[_3814 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3814]
                    mem[_3814 + 64] = stor11
                    require mem[_3814] - 1 < mem[_3814]
                    require 0 < mem[_3814]
                    if mem[_3814 + 44 len 20] == mem[(32 * mem[_3814] - 1) + _3814 + 44 len 20]:
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_3814] - 1 < mem[_3814]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3814] - 1) + _3814 + 44 len 20], _1976, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, ext_call.return_data[64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += ext_call.return_data[64]
                    else:
                        mem[_3814 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3814 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[_3814 + 132] = 64
                        mem[_3814 + 164] = mem[_3814]
                        idx = 0
                        s = _3814 + 32
                        t = _3814 + 196
                        while idx < mem[_3814]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3814 + (32 * mem[_3814]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4627 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4638 = mem[_4627]
                        require mem[_4627] <= test266151307()
                        require _4627 + mem[_4627] + 31 < _4627 + return_data.size
                        _4651 = mem[_4627 + mem[_4627]]
                        require mem[_4627 + mem[_4627]] <= test266151307()
                        require _4627 + ceil32(return_data.size) + (32 * mem[_4627 + mem[_4627]]) + 32 <= test266151307() and (32 * mem[_4627 + mem[_4627]]) + 32 >= 0
                        mem[64] = _4627 + ceil32(return_data.size) + (32 * mem[_4627 + mem[_4627]]) + 32
                        mem[_4627 + ceil32(return_data.size)] = _4651
                        require _4638 + (32 * _4651) + 32 <= return_data.size
                        idx = 0
                        s = _4627 + _4638 + 32
                        t = _4627 + ceil32(return_data.size) + 32
                        while idx < _4651:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4651 - 1 < _4651
                        _5039 = mem[(32 * _4651 - 1) + _4627 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _5039
                        mem[mem[64] + 68] = 160
                        _5054 = mem[_3814]
                        mem[mem[64] + 164] = mem[_3814]
                        idx = 0
                        s = _3814 + 32
                        t = mem[64] + 196
                        while idx < _5054:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _5039, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _5054) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5333 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5341 = mem[_5333]
                        require mem[_5333] <= test266151307()
                        require _5333 + mem[_5333] + 31 < _5333 + return_data.size
                        _5349 = mem[_5333 + mem[_5333]]
                        require mem[_5333 + mem[_5333]] <= test266151307()
                        require _5333 + ceil32(return_data.size) + (32 * mem[_5333 + mem[_5333]]) + 32 <= test266151307() and (32 * mem[_5333 + mem[_5333]]) + 32 >= 0
                        mem[64] = _5333 + ceil32(return_data.size) + (32 * mem[_5333 + mem[_5333]]) + 32
                        mem[_5333 + ceil32(return_data.size)] = _5349
                        require _5341 + (32 * _5349) + 32 <= return_data.size
                        idx = 0
                        s = _5333 + _5341 + 32
                        t = _5333 + ceil32(return_data.size) + 32
                        while idx < _5349:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_3814] - 1 < mem[_3814]
                        _5614 = mem[(32 * mem[_3814] - 1) + _3814 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _1976
                        mem[mem[64] + 100] = _5039
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5614), _1976, _5039, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5646 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5646] == mem[_5646]
                        require mem[_5646 + 32] == mem[_5646 + 32]
                        require mem[_5646 + 64] == mem[_5646 + 64]
                        if mem[_5646 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5646 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5646 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5646 + 64]
                emit Reinvest(totalDeposits, totalSupply);
            else:
                mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 260] = (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'reinvest fee transfer failed'
                mem[(4 * ceil32(return_data.size)) + 224] = 31
                mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                if 0 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[(4 * ceil32(return_data.size)) + 288] = 31
                mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[(4 * ceil32(return_data.size)) + 352] = 26
                mem[(4 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2 <= 0:
                    revert with 0, 'amount too low'
                mem[(4 * ceil32(return_data.size)) + 416] = 3
                mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                mem[(4 * ceil32(return_data.size)) + 480] = stor11
                mem[(4 * ceil32(return_data.size)) + 512] = stor10
                if rewardTokenAddress == stor10:
                    mem[(4 * ceil32(return_data.size)) + 544] = 2
                    mem[(4 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 608] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 0
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        mem[(4 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                        totalDeposits += ext_call.return_data[64]
                        emit Reinvest(uint256 rg1, uint256 rg2):
                                      totalDeposits,
                                      totalSupply,
                                      mem[(6 * ceil32(return_data.size)) + 704 len 9 * ceil32(return_data.size)],
                    else:
                        mem[(4 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 676] = 64
                        mem[(4 * ceil32(return_data.size)) + 708] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 576
                        t = (4 * ceil32(return_data.size)) + 740
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 740 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 640
                        require return_data.size >= 32
                        _829 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                        _872 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                        mem[(6 * ceil32(return_data.size)) + 640] = _872
                        require _829 + (32 * _872) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _829 + 672
                        t = (6 * ceil32(return_data.size)) + 672
                        while idx < _872:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _872 - 1 < _872
                        _1978 = mem[(32 * _872 - 1) + (6 * ceil32(return_data.size)) + 672]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1978
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 576
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1978, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2930 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2946 = mem[_2930]
                        require mem[_2930] <= test266151307()
                        require _2930 + mem[_2930] + 31 < _2930 + return_data.size
                        _2962 = mem[_2930 + mem[_2930]]
                        require mem[_2930 + mem[_2930]] <= test266151307()
                        require _2930 + ceil32(return_data.size) + (32 * mem[_2930 + mem[_2930]]) + 32 <= test266151307() and (32 * mem[_2930 + mem[_2930]]) + 32 >= 0
                        mem[64] = _2930 + ceil32(return_data.size) + (32 * mem[_2930 + mem[_2930]]) + 32
                        mem[_2930 + ceil32(return_data.size)] = _2962
                        require _2946 + (32 * _2962) + 32 <= return_data.size
                        idx = 0
                        s = _2930 + _2946 + 32
                        t = _2930 + ceil32(return_data.size) + 32
                        while idx < _2962:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[(4 * ceil32(return_data.size)) + 544] - 1 < mem[(4 * ceil32(return_data.size)) + 544]
                        _3835 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 544] - 1) + (4 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _1978
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3835), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1978, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4123 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_4123] == mem[_4123]
                        require mem[_4123 + 32] == mem[_4123 + 32]
                        require mem[_4123 + 64] == mem[_4123 + 64]
                        if mem[_4123 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_4123 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_4123 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_4123 + 64]
                        emit Reinvest(totalDeposits, totalSupply);
                else:
                    mem[(4 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[(4 * ceil32(return_data.size)) + 580] = 64
                    mem[(4 * ceil32(return_data.size)) + 612] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 448
                    t = (4 * ceil32(return_data.size)) + 644
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 644 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _830 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                    _873 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                    mem[(6 * ceil32(return_data.size)) + 544] = _873
                    require _830 + (32 * _873) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _830 + 576
                    t = (6 * ceil32(return_data.size)) + 576
                    while idx < _873:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _873 - 1 < _873
                    _1980 = mem[(32 * _873 - 1) + (6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1980
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1980, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2931 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2947 = mem[_2931]
                    require mem[_2931] <= test266151307()
                    require _2931 + mem[_2931] + 31 < _2931 + return_data.size
                    _2963 = mem[_2931 + mem[_2931]]
                    require mem[_2931 + mem[_2931]] <= test266151307()
                    require _2931 + ceil32(return_data.size) + (32 * mem[_2931 + mem[_2931]]) + 32 <= test266151307() and (32 * mem[_2931 + mem[_2931]]) + 32 >= 0
                    mem[64] = _2931 + ceil32(return_data.size) + (32 * mem[_2931 + mem[_2931]]) + 32
                    mem[_2931 + ceil32(return_data.size)] = _2963
                    require _2947 + (32 * _2963) + 32 <= return_data.size
                    idx = 0
                    s = _2931 + _2947 + 32
                    t = _2931 + ceil32(return_data.size) + 32
                    while idx < _2963:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3818 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3818 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3818]
                    mem[_3818 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3818]
                    mem[_3818 + 64] = stor11
                    require mem[_3818] - 1 < mem[_3818]
                    require 0 < mem[_3818]
                    if mem[_3818 + 44 len 20] == mem[(32 * mem[_3818] - 1) + _3818 + 44 len 20]:
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_3818] - 1 < mem[_3818]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3818] - 1) + _3818 + 44 len 20], _1980, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, ext_call.return_data[64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += ext_call.return_data[64]
                    else:
                        mem[_3818 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3818 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[_3818 + 132] = 64
                        mem[_3818 + 164] = mem[_3818]
                        idx = 0
                        s = _3818 + 32
                        t = _3818 + 196
                        while idx < mem[_3818]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3818 + (32 * mem[_3818]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4628 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4639 = mem[_4628]
                        require mem[_4628] <= test266151307()
                        require _4628 + mem[_4628] + 31 < _4628 + return_data.size
                        _4652 = mem[_4628 + mem[_4628]]
                        require mem[_4628 + mem[_4628]] <= test266151307()
                        require _4628 + ceil32(return_data.size) + (32 * mem[_4628 + mem[_4628]]) + 32 <= test266151307() and (32 * mem[_4628 + mem[_4628]]) + 32 >= 0
                        mem[64] = _4628 + ceil32(return_data.size) + (32 * mem[_4628 + mem[_4628]]) + 32
                        mem[_4628 + ceil32(return_data.size)] = _4652
                        require _4639 + (32 * _4652) + 32 <= return_data.size
                        idx = 0
                        s = _4628 + _4639 + 32
                        t = _4628 + ceil32(return_data.size) + 32
                        while idx < _4652:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4652 - 1 < _4652
                        _5041 = mem[(32 * _4652 - 1) + _4628 + ceil32(return_data.size) + 32]
                        _5042 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _5041
                        mem[mem[64] + 68] = 160
                        _5055 = mem[_3818]
                        mem[mem[64] + 164] = mem[_3818]
                        idx = 0
                        s = _3818 + 32
                        t = mem[64] + 196
                        while idx < _5055:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5042 + 100] = this.address
                        mem[_5042 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5042 + (32 * _5055) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5334 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5342 = mem[_5334]
                        require mem[_5334] <= test266151307()
                        require _5334 + mem[_5334] + 31 < _5334 + return_data.size
                        _5350 = mem[_5334 + mem[_5334]]
                        require mem[_5334 + mem[_5334]] <= test266151307()
                        require _5334 + ceil32(return_data.size) + (32 * mem[_5334 + mem[_5334]]) + 32 <= test266151307() and (32 * mem[_5334 + mem[_5334]]) + 32 >= 0
                        mem[64] = _5334 + ceil32(return_data.size) + (32 * mem[_5334 + mem[_5334]]) + 32
                        mem[_5334 + ceil32(return_data.size)] = _5350
                        require _5342 + (32 * _5350) + 32 <= return_data.size
                        idx = 0
                        s = _5334 + _5342 + 32
                        t = _5334 + ceil32(return_data.size) + 32
                        while idx < _5350:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_3818] - 1 < mem[_3818]
                        _5616 = mem[(32 * mem[_3818] - 1) + _3818 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _1980
                        mem[mem[64] + 100] = _5041
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5616), _1980, _5041, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5647 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5647] == mem[_5647]
                        require mem[_5647 + 32] == mem[_5647 + 32]
                        require mem[_5647 + 64] == mem[_5647 + 64]
                        if mem[_5647 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5647 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5647 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5647 + 64]
                    emit Reinvest(totalDeposits, totalSupply);
    else:
        require 2 * ext_call.return_data[0]
        if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 2 * ext_call.return_data[0] != ADMIN_FEE_BIPS:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(2 * ceil32(return_data.size)) + 96] = 26
        mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 <= 0:
            if not uint255(ext_call.return_data[0]):
                mem[(2 * ceil32(return_data.size)) + 160] = 26
                mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 224] = 31
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[(2 * ceil32(return_data.size)) + 288] = 31
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                if 0 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[(2 * ceil32(return_data.size)) + 352] = 26
                mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2 <= 0:
                    revert with 0, 'amount too low'
                mem[(2 * ceil32(return_data.size)) + 416] = 3
                mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                mem[(2 * ceil32(return_data.size)) + 480] = stor11
                mem[(2 * ceil32(return_data.size)) + 512] = stor10
                if rewardTokenAddress == stor10:
                    mem[(2 * ceil32(return_data.size)) + 544] = 2
                    mem[(2 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 608] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 772] = 0
                        mem[(2 * ceil32(return_data.size)) + 804] = 0
                        mem[(2 * ceil32(return_data.size)) + 836] = this.address
                        mem[(2 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 644] = 32
                            mem[(4 * ceil32(return_data.size)) + 676] = 14
                            mem[(4 * ceil32(return_data.size)) + 708] = 'amount too low'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 644] = PID
                            mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 644 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                totalDeposits += ext_call.return_data[64]
                                mem[(4 * ceil32(return_data.size)) + 640] = totalDeposits
                                mem[(4 * ceil32(return_data.size)) + 672] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(4 * ceil32(return_data.size)) + 640 len (5 * ceil32(return_data.size)) + 64],
                            mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 644] = 32
                            mem[(4 * ceil32(return_data.size)) + 676] = 27
                            mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 640
                           len (5 * ceil32(return_data.size)) + 100
                    mem[(2 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[(2 * ceil32(return_data.size)) + 676] = 64
                    mem[(2 * ceil32(return_data.size)) + 708] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 576
                    t = (2 * ceil32(return_data.size)) + 740
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 740 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 640
                    require return_data.size >= 32
                    _810 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                    _863 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672
                    mem[(4 * ceil32(return_data.size)) + 640] = _863
                    require _810 + (32 * _863) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _810 + 672
                    t = (4 * ceil32(return_data.size)) + 672
                    while idx < _863:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _863 - 1 < _863
                    _1962 = mem[(32 * _863 - 1) + (4 * ceil32(return_data.size)) + 672]
                    _1963 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1962
                    mem[mem[64] + 68] = 160
                    _1998 = mem[(2 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 544]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 576
                    t = mem[64] + 196
                    while idx < _1998:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1963 + 100] = this.address
                    mem[_1963 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1963 + (32 * _1998) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2920 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2938 = mem[_2920]
                    require mem[_2920] <= test266151307()
                    require _2920 + mem[_2920] + 31 < _2920 + return_data.size
                    _2954 = mem[_2920 + mem[_2920]]
                    require mem[_2920 + mem[_2920]] <= test266151307()
                    require _2920 + ceil32(return_data.size) + (32 * mem[_2920 + mem[_2920]]) + 32 <= test266151307() and (32 * mem[_2920 + mem[_2920]]) + 32 >= 0
                    mem[64] = _2920 + ceil32(return_data.size) + (32 * mem[_2920 + mem[_2920]]) + 32
                    mem[_2920 + ceil32(return_data.size)] = _2954
                    require _2938 + (32 * _2954) + 32 <= return_data.size
                    idx = 0
                    s = _2920 + _2938 + 32
                    t = _2920 + ceil32(return_data.size) + 32
                    while idx < _2954:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[(2 * ceil32(return_data.size)) + 544] - 1 < mem[(2 * ceil32(return_data.size)) + 544]
                    _3827 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 544] - 1) + (2 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _1962
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3827), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1962, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4119 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_4119] == mem[_4119]
                    require mem[_4119 + 32] == mem[_4119 + 32]
                    require mem[_4119 + 64] == mem[_4119 + 64]
                    if mem[_4119 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, mem[_4119 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_4119 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_4119 + 64]
                else:
                    mem[(2 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[(2 * ceil32(return_data.size)) + 580] = 64
                    mem[(2 * ceil32(return_data.size)) + 612] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = (2 * ceil32(return_data.size)) + 644
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 644 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _811 = mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
                    _864 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 576
                    mem[(4 * ceil32(return_data.size)) + 544] = _864
                    require _811 + (32 * _864) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _811 + 576
                    t = (4 * ceil32(return_data.size)) + 576
                    while idx < _864:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _864 - 1 < _864
                    _1964 = mem[(32 * _864 - 1) + (4 * ceil32(return_data.size)) + 576]
                    _1965 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1964
                    mem[mem[64] + 68] = 160
                    _1999 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _1999:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1965 + 100] = this.address
                    mem[_1965 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1965 + (32 * _1999) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2921 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2939 = mem[_2921]
                    require mem[_2921] <= test266151307()
                    require _2921 + mem[_2921] + 31 < _2921 + return_data.size
                    _2955 = mem[_2921 + mem[_2921]]
                    require mem[_2921 + mem[_2921]] <= test266151307()
                    require _2921 + ceil32(return_data.size) + (32 * mem[_2921 + mem[_2921]]) + 32 <= test266151307() and (32 * mem[_2921 + mem[_2921]]) + 32 >= 0
                    mem[64] = _2921 + ceil32(return_data.size) + (32 * mem[_2921 + mem[_2921]]) + 32
                    mem[_2921 + ceil32(return_data.size)] = _2955
                    require _2939 + (32 * _2955) + 32 <= return_data.size
                    idx = 0
                    s = _2921 + _2939 + 32
                    t = _2921 + ceil32(return_data.size) + 32
                    while idx < _2955:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3802 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3802 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3802]
                    mem[_3802 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3802]
                    mem[_3802 + 64] = stor11
                    require mem[_3802] - 1 < mem[_3802]
                    require 0 < mem[_3802]
                    if mem[_3802 + 44 len 20] == mem[(32 * mem[_3802] - 1) + _3802 + 44 len 20]:
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_3802] - 1 < mem[_3802]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3802] - 1) + _3802 + 44 len 20], _1964, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, ext_call.return_data[64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += ext_call.return_data[64]
                    else:
                        mem[_3802 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3802 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[_3802 + 132] = 64
                        mem[_3802 + 164] = mem[_3802]
                        idx = 0
                        s = _3802 + 32
                        t = _3802 + 196
                        while idx < mem[_3802]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3802 + (32 * mem[_3802]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4620 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4634 = mem[_4620]
                        require mem[_4620] <= test266151307()
                        require _4620 + mem[_4620] + 31 < _4620 + return_data.size
                        _4646 = mem[_4620 + mem[_4620]]
                        require mem[_4620 + mem[_4620]] <= test266151307()
                        require _4620 + ceil32(return_data.size) + (32 * mem[_4620 + mem[_4620]]) + 32 <= test266151307() and (32 * mem[_4620 + mem[_4620]]) + 32 >= 0
                        mem[64] = _4620 + ceil32(return_data.size) + (32 * mem[_4620 + mem[_4620]]) + 32
                        mem[_4620 + ceil32(return_data.size)] = _4646
                        require _4634 + (32 * _4646) + 32 <= return_data.size
                        idx = 0
                        s = _4620 + _4634 + 32
                        t = _4620 + ceil32(return_data.size) + 32
                        while idx < _4646:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4646 - 1 < _4646
                        _5033 = mem[(32 * _4646 - 1) + _4620 + ceil32(return_data.size) + 32]
                        _5034 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _5033
                        mem[mem[64] + 68] = 160
                        _5051 = mem[_3802]
                        mem[mem[64] + 164] = mem[_3802]
                        idx = 0
                        s = _3802 + 32
                        t = mem[64] + 196
                        while idx < _5051:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5034 + 100] = this.address
                        mem[_5034 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5034 + (32 * _5051) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5329 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5338 = mem[_5329]
                        require mem[_5329] <= test266151307()
                        require _5329 + mem[_5329] + 31 < _5329 + return_data.size
                        _5346 = mem[_5329 + mem[_5329]]
                        require mem[_5329 + mem[_5329]] <= test266151307()
                        require _5329 + ceil32(return_data.size) + (32 * mem[_5329 + mem[_5329]]) + 32 <= test266151307() and (32 * mem[_5329 + mem[_5329]]) + 32 >= 0
                        mem[64] = _5329 + ceil32(return_data.size) + (32 * mem[_5329 + mem[_5329]]) + 32
                        mem[_5329 + ceil32(return_data.size)] = _5346
                        require _5338 + (32 * _5346) + 32 <= return_data.size
                        idx = 0
                        s = _5329 + _5338 + 32
                        t = _5329 + ceil32(return_data.size) + 32
                        while idx < _5346:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_3802] - 1 < mem[_3802]
                        _5608 = mem[(32 * mem[_3802] - 1) + _3802 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _1964
                        mem[mem[64] + 100] = _5033
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5608), _1964, _5033, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5643 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5643] == mem[_5643]
                        require mem[_5643 + 32] == mem[_5643 + 32]
                        require mem[_5643 + 64] == mem[_5643 + 64]
                        if mem[_5643 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5643 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5643 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5643 + 64]
                emit Reinvest(totalDeposits, totalSupply);
            else:
                require 2 * ext_call.return_data[0]
                if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 2 * ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 160] = 26
                mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 <= 0:
                    mem[(2 * ceil32(return_data.size)) + 224] = 31
                    mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                    if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(2 * ceil32(return_data.size)) + 288] = 31
                    mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(2 * ceil32(return_data.size)) + 352] = 26
                    mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                    if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2 <= 0:
                        revert with 0, 'amount too low'
                    mem[(2 * ceil32(return_data.size)) + 416] = 3
                    mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 480] = stor11
                    mem[(2 * ceil32(return_data.size)) + 512] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(2 * ceil32(return_data.size)) + 544] = 2
                        mem[(2 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 608] = stor11
                        if rewardTokenAddress == stor11:
                            mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 772] = 0
                            mem[(2 * ceil32(return_data.size)) + 804] = 0
                            mem[(2 * ceil32(return_data.size)) + 836] = this.address
                            mem[(2 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 644] = 32
                                mem[(4 * ceil32(return_data.size)) + 676] = 14
                                mem[(4 * ceil32(return_data.size)) + 708] = 'amount too low'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 644] = PID
                                mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 644 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                    totalDeposits += ext_call.return_data[64]
                                    mem[(4 * ceil32(return_data.size)) + 640] = totalDeposits
                                    mem[(4 * ceil32(return_data.size)) + 672] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(4 * ceil32(return_data.size)) + 640 len (5 * ceil32(return_data.size)) + 64],
                                mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 644] = 32
                                mem[(4 * ceil32(return_data.size)) + 676] = 27
                                mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 640
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(2 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 676] = 64
                        mem[(2 * ceil32(return_data.size)) + 708] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 576
                        t = (2 * ceil32(return_data.size)) + 740
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 740 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 640
                        require return_data.size >= 32
                        _801 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                        _858 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                        mem[(4 * ceil32(return_data.size)) + 640] = _858
                        require _801 + (32 * _858) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _801 + 672
                        t = (4 * ceil32(return_data.size)) + 672
                        while idx < _858:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _858 - 1 < _858
                        _1954 = mem[(32 * _858 - 1) + (4 * ceil32(return_data.size)) + 672]
                        _1955 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1954
                        mem[mem[64] + 68] = 160
                        _1994 = mem[(2 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 544]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 576
                        t = mem[64] + 196
                        while idx < _1994:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1955 + 100] = this.address
                        mem[_1955 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1955 + (32 * _1994) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2916 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2934 = mem[_2916]
                        require mem[_2916] <= test266151307()
                        require _2916 + mem[_2916] + 31 < _2916 + return_data.size
                        _2950 = mem[_2916 + mem[_2916]]
                        require mem[_2916 + mem[_2916]] <= test266151307()
                        require _2916 + ceil32(return_data.size) + (32 * mem[_2916 + mem[_2916]]) + 32 <= test266151307() and (32 * mem[_2916 + mem[_2916]]) + 32 >= 0
                        mem[64] = _2916 + ceil32(return_data.size) + (32 * mem[_2916 + mem[_2916]]) + 32
                        mem[_2916 + ceil32(return_data.size)] = _2950
                        require _2934 + (32 * _2950) + 32 <= return_data.size
                        idx = 0
                        s = _2916 + _2934 + 32
                        t = _2916 + ceil32(return_data.size) + 32
                        while idx < _2950:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[(2 * ceil32(return_data.size)) + 544] - 1 < mem[(2 * ceil32(return_data.size)) + 544]
                        _3823 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 544] - 1) + (2 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _1954
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3823), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1954, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4117 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_4117] == mem[_4117]
                        require mem[_4117 + 32] == mem[_4117 + 32]
                        require mem[_4117 + 64] == mem[_4117 + 64]
                        if mem[_4117 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_4117 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_4117 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_4117 + 64]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 580] = 64
                        mem[(2 * ceil32(return_data.size)) + 612] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = (2 * ceil32(return_data.size)) + 644
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 644 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _802 = mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
                        _859 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                        mem[(4 * ceil32(return_data.size)) + 544] = _859
                        require _802 + (32 * _859) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _802 + 576
                        t = (4 * ceil32(return_data.size)) + 576
                        while idx < _859:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _859 - 1 < _859
                        _1956 = mem[(32 * _859 - 1) + (4 * ceil32(return_data.size)) + 576]
                        _1957 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1956
                        mem[mem[64] + 68] = 160
                        _1995 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _1995:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1957 + 100] = this.address
                        mem[_1957 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1957 + (32 * _1995) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2917 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2935 = mem[_2917]
                        require mem[_2917] <= test266151307()
                        require _2917 + mem[_2917] + 31 < _2917 + return_data.size
                        _2951 = mem[_2917 + mem[_2917]]
                        require mem[_2917 + mem[_2917]] <= test266151307()
                        require _2917 + ceil32(return_data.size) + (32 * mem[_2917 + mem[_2917]]) + 32 <= test266151307() and (32 * mem[_2917 + mem[_2917]]) + 32 >= 0
                        mem[64] = _2917 + ceil32(return_data.size) + (32 * mem[_2917 + mem[_2917]]) + 32
                        mem[_2917 + ceil32(return_data.size)] = _2951
                        require _2935 + (32 * _2951) + 32 <= return_data.size
                        idx = 0
                        s = _2917 + _2935 + 32
                        t = _2917 + ceil32(return_data.size) + 32
                        while idx < _2951:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3794 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3794 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3794]
                        mem[_3794 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3794]
                        mem[_3794 + 64] = stor11
                        require mem[_3794] - 1 < mem[_3794]
                        require 0 < mem[_3794]
                        if mem[_3794 + 44 len 20] == mem[(32 * mem[_3794] - 1) + _3794 + 44 len 20]:
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[_3794] - 1 < mem[_3794]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3794] - 1) + _3794 + 44 len 20], _1956, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += ext_call.return_data[64]
                        else:
                            mem[_3794 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3794 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_3794 + 132] = 64
                            mem[_3794 + 164] = mem[_3794]
                            idx = 0
                            s = _3794 + 32
                            t = _3794 + 196
                            while idx < mem[_3794]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3794 + (32 * mem[_3794]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4618 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4632 = mem[_4618]
                            require mem[_4618] <= test266151307()
                            require _4618 + mem[_4618] + 31 < _4618 + return_data.size
                            _4644 = mem[_4618 + mem[_4618]]
                            require mem[_4618 + mem[_4618]] <= test266151307()
                            require _4618 + ceil32(return_data.size) + (32 * mem[_4618 + mem[_4618]]) + 32 <= test266151307() and (32 * mem[_4618 + mem[_4618]]) + 32 >= 0
                            mem[64] = _4618 + ceil32(return_data.size) + (32 * mem[_4618 + mem[_4618]]) + 32
                            mem[_4618 + ceil32(return_data.size)] = _4644
                            require _4632 + (32 * _4644) + 32 <= return_data.size
                            idx = 0
                            s = _4618 + _4632 + 32
                            t = _4618 + ceil32(return_data.size) + 32
                            while idx < _4644:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4644 - 1 < _4644
                            _5029 = mem[(32 * _4644 - 1) + _4618 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _5029
                            mem[mem[64] + 68] = 160
                            _5049 = mem[_3794]
                            mem[mem[64] + 164] = mem[_3794]
                            idx = 0
                            s = _3794 + 32
                            t = mem[64] + 196
                            while idx < _5049:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _5029, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _5049) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5327 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5336 = mem[_5327]
                            require mem[_5327] <= test266151307()
                            require _5327 + mem[_5327] + 31 < _5327 + return_data.size
                            _5344 = mem[_5327 + mem[_5327]]
                            require mem[_5327 + mem[_5327]] <= test266151307()
                            require _5327 + ceil32(return_data.size) + (32 * mem[_5327 + mem[_5327]]) + 32 <= test266151307() and (32 * mem[_5327 + mem[_5327]]) + 32 >= 0
                            mem[64] = _5327 + ceil32(return_data.size) + (32 * mem[_5327 + mem[_5327]]) + 32
                            mem[_5327 + ceil32(return_data.size)] = _5344
                            require _5336 + (32 * _5344) + 32 <= return_data.size
                            idx = 0
                            s = _5327 + _5336 + 32
                            t = _5327 + ceil32(return_data.size) + 32
                            while idx < _5344:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[_3794] - 1 < mem[_3794]
                            _5604 = mem[(32 * mem[_3794] - 1) + _3794 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _1956
                            mem[mem[64] + 100] = _5029
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5604), _1956, _5029, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5641 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5641] == mem[_5641]
                            require mem[_5641 + 32] == mem[_5641 + 32]
                            require mem[_5641 + 64] == mem[_5641 + 64]
                            if mem[_5641 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5641 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5641 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5641 + 64]
                    emit Reinvest(totalDeposits, totalSupply);
                else:
                    mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 260] = (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'reinvest fee transfer failed'
                    mem[(4 * ceil32(return_data.size)) + 224] = 31
                    mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                    if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(4 * ceil32(return_data.size)) + 288] = 31
                    mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(4 * ceil32(return_data.size)) + 352] = 26
                    mem[(4 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                    if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2 <= 0:
                        revert with 0, 'amount too low'
                    mem[(4 * ceil32(return_data.size)) + 416] = 3
                    mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 480] = stor11
                    mem[(4 * ceil32(return_data.size)) + 512] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(4 * ceil32(return_data.size)) + 544] = 2
                        mem[(4 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 608] = stor11
                        if rewardTokenAddress == stor11:
                            mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 0
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            mem[(4 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                            totalDeposits += ext_call.return_data[64]
                            emit Reinvest(uint256 rg1, uint256 rg2):
                                          totalDeposits,
                                          totalSupply,
                                          mem[(6 * ceil32(return_data.size)) + 704 len 9 * ceil32(return_data.size)],
                        else:
                            mem[(4 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 676] = 64
                            mem[(4 * ceil32(return_data.size)) + 708] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 576
                            t = (4 * ceil32(return_data.size)) + 740
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 740 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 640
                            require return_data.size >= 32
                            _806 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                            _861 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(6 * ceil32(return_data.size)) + 640] = _861
                            require _806 + (32 * _861) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _806 + 672
                            t = (6 * ceil32(return_data.size)) + 672
                            while idx < _861:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _861 - 1 < _861
                            _1958 = mem[(32 * _861 - 1) + (6 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _1958
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 576
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1958, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2918 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2936 = mem[_2918]
                            require mem[_2918] <= test266151307()
                            require _2918 + mem[_2918] + 31 < _2918 + return_data.size
                            _2952 = mem[_2918 + mem[_2918]]
                            require mem[_2918 + mem[_2918]] <= test266151307()
                            require _2918 + ceil32(return_data.size) + (32 * mem[_2918 + mem[_2918]]) + 32 <= test266151307() and (32 * mem[_2918 + mem[_2918]]) + 32 >= 0
                            mem[64] = _2918 + ceil32(return_data.size) + (32 * mem[_2918 + mem[_2918]]) + 32
                            mem[_2918 + ceil32(return_data.size)] = _2952
                            require _2936 + (32 * _2952) + 32 <= return_data.size
                            idx = 0
                            s = _2918 + _2936 + 32
                            t = _2918 + ceil32(return_data.size) + 32
                            while idx < _2952:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[(4 * ceil32(return_data.size)) + 544] - 1 < mem[(4 * ceil32(return_data.size)) + 544]
                            _3825 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 544] - 1) + (4 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _1958
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_3825), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1958, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4118 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_4118] == mem[_4118]
                            require mem[_4118 + 32] == mem[_4118 + 32]
                            require mem[_4118 + 64] == mem[_4118 + 64]
                            if mem[_4118 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_4118 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_4118 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_4118 + 64]
                            emit Reinvest(totalDeposits, totalSupply);
                    else:
                        mem[(4 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 580] = 64
                        mem[(4 * ceil32(return_data.size)) + 612] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 448
                        t = (4 * ceil32(return_data.size)) + 644
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 644 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _807 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                        _862 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                        mem[(6 * ceil32(return_data.size)) + 544] = _862
                        require _807 + (32 * _862) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _807 + 576
                        t = (6 * ceil32(return_data.size)) + 576
                        while idx < _862:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _862 - 1 < _862
                        _1960 = mem[(32 * _862 - 1) + (6 * ceil32(return_data.size)) + 576]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1960
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1960, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2919 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2937 = mem[_2919]
                        require mem[_2919] <= test266151307()
                        require _2919 + mem[_2919] + 31 < _2919 + return_data.size
                        _2953 = mem[_2919 + mem[_2919]]
                        require mem[_2919 + mem[_2919]] <= test266151307()
                        require _2919 + ceil32(return_data.size) + (32 * mem[_2919 + mem[_2919]]) + 32 <= test266151307() and (32 * mem[_2919 + mem[_2919]]) + 32 >= 0
                        mem[64] = _2919 + ceil32(return_data.size) + (32 * mem[_2919 + mem[_2919]]) + 32
                        mem[_2919 + ceil32(return_data.size)] = _2953
                        require _2937 + (32 * _2953) + 32 <= return_data.size
                        idx = 0
                        s = _2919 + _2937 + 32
                        t = _2919 + ceil32(return_data.size) + 32
                        while idx < _2953:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3798 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3798 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3798]
                        mem[_3798 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3798]
                        mem[_3798 + 64] = stor11
                        require mem[_3798] - 1 < mem[_3798]
                        require 0 < mem[_3798]
                        if mem[_3798 + 44 len 20] == mem[(32 * mem[_3798] - 1) + _3798 + 44 len 20]:
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_3798] - 1 < mem[_3798]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3798] - 1) + _3798 + 44 len 20], _1960, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += ext_call.return_data[64]
                        else:
                            mem[_3798 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3798 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_3798 + 132] = 64
                            mem[_3798 + 164] = mem[_3798]
                            idx = 0
                            s = _3798 + 32
                            t = _3798 + 196
                            while idx < mem[_3798]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3798 + (32 * mem[_3798]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4619 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4633 = mem[_4619]
                            require mem[_4619] <= test266151307()
                            require _4619 + mem[_4619] + 31 < _4619 + return_data.size
                            _4645 = mem[_4619 + mem[_4619]]
                            require mem[_4619 + mem[_4619]] <= test266151307()
                            require _4619 + ceil32(return_data.size) + (32 * mem[_4619 + mem[_4619]]) + 32 <= test266151307() and (32 * mem[_4619 + mem[_4619]]) + 32 >= 0
                            mem[64] = _4619 + ceil32(return_data.size) + (32 * mem[_4619 + mem[_4619]]) + 32
                            mem[_4619 + ceil32(return_data.size)] = _4645
                            require _4633 + (32 * _4645) + 32 <= return_data.size
                            idx = 0
                            s = _4619 + _4633 + 32
                            t = _4619 + ceil32(return_data.size) + 32
                            while idx < _4645:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4645 - 1 < _4645
                            _5031 = mem[(32 * _4645 - 1) + _4619 + ceil32(return_data.size) + 32]
                            _5032 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _5031
                            mem[mem[64] + 68] = 160
                            _5050 = mem[_3798]
                            mem[mem[64] + 164] = mem[_3798]
                            idx = 0
                            s = _3798 + 32
                            t = mem[64] + 196
                            while idx < _5050:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5032 + 100] = this.address
                            mem[_5032 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5032 + (32 * _5050) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5328 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5337 = mem[_5328]
                            require mem[_5328] <= test266151307()
                            require _5328 + mem[_5328] + 31 < _5328 + return_data.size
                            _5345 = mem[_5328 + mem[_5328]]
                            require mem[_5328 + mem[_5328]] <= test266151307()
                            require _5328 + ceil32(return_data.size) + (32 * mem[_5328 + mem[_5328]]) + 32 <= test266151307() and (32 * mem[_5328 + mem[_5328]]) + 32 >= 0
                            mem[64] = _5328 + ceil32(return_data.size) + (32 * mem[_5328 + mem[_5328]]) + 32
                            mem[_5328 + ceil32(return_data.size)] = _5345
                            require _5337 + (32 * _5345) + 32 <= return_data.size
                            idx = 0
                            s = _5328 + _5337 + 32
                            t = _5328 + ceil32(return_data.size) + 32
                            while idx < _5345:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_3798] - 1 < mem[_3798]
                            _5606 = mem[(32 * mem[_3798] - 1) + _3798 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _1960
                            mem[mem[64] + 100] = _5031
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5606), _1960, _5031, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5642 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5642] == mem[_5642]
                            require mem[_5642 + 32] == mem[_5642 + 32]
                            require mem[_5642 + 64] == mem[_5642 + 64]
                            if mem[_5642 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5642 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5642 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5642 + 64]
                        emit Reinvest(totalDeposits, totalSupply);
        else:
            mem[(2 * ceil32(return_data.size)) + 164] = owner
            mem[(2 * ceil32(return_data.size)) + 196] = (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'admin fee transfer failed'
            if not uint255(ext_call.return_data[0]):
                mem[(4 * ceil32(return_data.size)) + 160] = 26
                mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                mem[(4 * ceil32(return_data.size)) + 224] = 31
                mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[(4 * ceil32(return_data.size)) + 288] = 31
                mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                if 0 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[(4 * ceil32(return_data.size)) + 352] = 26
                mem[(4 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2 <= 0:
                    revert with 0, 'amount too low'
                mem[(4 * ceil32(return_data.size)) + 416] = 3
                mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                mem[(4 * ceil32(return_data.size)) + 480] = stor11
                mem[(4 * ceil32(return_data.size)) + 512] = stor10
                if rewardTokenAddress == stor10:
                    mem[(4 * ceil32(return_data.size)) + 544] = 2
                    mem[(4 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 608] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 0
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        mem[(4 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                        totalDeposits += ext_call.return_data[64]
                        emit Reinvest(uint256 rg1, uint256 rg2):
                                      totalDeposits,
                                      totalSupply,
                                      mem[(6 * ceil32(return_data.size)) + 704 len 9 * ceil32(return_data.size)],
                    else:
                        mem[(4 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 676] = 64
                        mem[(4 * ceil32(return_data.size)) + 708] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 576
                        t = (4 * ceil32(return_data.size)) + 740
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 740 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 640
                        require return_data.size >= 32
                        _821 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                        _868 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672
                        mem[(6 * ceil32(return_data.size)) + 640] = _868
                        require _821 + (32 * _868) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _821 + 672
                        t = (6 * ceil32(return_data.size)) + 672
                        while idx < _868:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _868 - 1 < _868
                        _1970 = mem[(32 * _868 - 1) + (6 * ceil32(return_data.size)) + 672]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1970
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 576
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1970, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2926 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2942 = mem[_2926]
                        require mem[_2926] <= test266151307()
                        require _2926 + mem[_2926] + 31 < _2926 + return_data.size
                        _2958 = mem[_2926 + mem[_2926]]
                        require mem[_2926 + mem[_2926]] <= test266151307()
                        require _2926 + ceil32(return_data.size) + (32 * mem[_2926 + mem[_2926]]) + 32 <= test266151307() and (32 * mem[_2926 + mem[_2926]]) + 32 >= 0
                        mem[64] = _2926 + ceil32(return_data.size) + (32 * mem[_2926 + mem[_2926]]) + 32
                        mem[_2926 + ceil32(return_data.size)] = _2958
                        require _2942 + (32 * _2958) + 32 <= return_data.size
                        idx = 0
                        s = _2926 + _2942 + 32
                        t = _2926 + ceil32(return_data.size) + 32
                        while idx < _2958:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[(4 * ceil32(return_data.size)) + 544] - 1 < mem[(4 * ceil32(return_data.size)) + 544]
                        _3831 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 544] - 1) + (4 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _1970
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3831), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1970, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4121 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_4121] == mem[_4121]
                        require mem[_4121 + 32] == mem[_4121 + 32]
                        require mem[_4121 + 64] == mem[_4121 + 64]
                        if mem[_4121 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_4121 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_4121 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_4121 + 64]
                        emit Reinvest(totalDeposits, totalSupply);
                else:
                    mem[(4 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[(4 * ceil32(return_data.size)) + 580] = 64
                    mem[(4 * ceil32(return_data.size)) + 612] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 448
                    t = (4 * ceil32(return_data.size)) + 644
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 644 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    _822 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                    _869 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 576
                    mem[(6 * ceil32(return_data.size)) + 544] = _869
                    require _822 + (32 * _869) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _822 + 576
                    t = (6 * ceil32(return_data.size)) + 576
                    while idx < _869:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _869 - 1 < _869
                    _1972 = mem[(32 * _869 - 1) + (6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1972
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1972, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2927 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2943 = mem[_2927]
                    require mem[_2927] <= test266151307()
                    require _2927 + mem[_2927] + 31 < _2927 + return_data.size
                    _2959 = mem[_2927 + mem[_2927]]
                    require mem[_2927 + mem[_2927]] <= test266151307()
                    require _2927 + ceil32(return_data.size) + (32 * mem[_2927 + mem[_2927]]) + 32 <= test266151307() and (32 * mem[_2927 + mem[_2927]]) + 32 >= 0
                    mem[64] = _2927 + ceil32(return_data.size) + (32 * mem[_2927 + mem[_2927]]) + 32
                    mem[_2927 + ceil32(return_data.size)] = _2959
                    require _2943 + (32 * _2959) + 32 <= return_data.size
                    idx = 0
                    s = _2927 + _2943 + 32
                    t = _2927 + ceil32(return_data.size) + 32
                    while idx < _2959:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3810 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3810 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3810]
                    mem[_3810 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3810]
                    mem[_3810 + 64] = stor11
                    require mem[_3810] - 1 < mem[_3810]
                    require 0 < mem[_3810]
                    if mem[_3810 + 44 len 20] == mem[(32 * mem[_3810] - 1) + _3810 + 44 len 20]:
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_3810] - 1 < mem[_3810]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3810] - 1) + _3810 + 44 len 20], _1972, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, ext_call.return_data[64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += ext_call.return_data[64]
                    else:
                        mem[_3810 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3810 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[_3810 + 132] = 64
                        mem[_3810 + 164] = mem[_3810]
                        idx = 0
                        s = _3810 + 32
                        t = _3810 + 196
                        while idx < mem[_3810]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3810 + (32 * mem[_3810]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4626 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4637 = mem[_4626]
                        require mem[_4626] <= test266151307()
                        require _4626 + mem[_4626] + 31 < _4626 + return_data.size
                        _4650 = mem[_4626 + mem[_4626]]
                        require mem[_4626 + mem[_4626]] <= test266151307()
                        require _4626 + ceil32(return_data.size) + (32 * mem[_4626 + mem[_4626]]) + 32 <= test266151307() and (32 * mem[_4626 + mem[_4626]]) + 32 >= 0
                        mem[64] = _4626 + ceil32(return_data.size) + (32 * mem[_4626 + mem[_4626]]) + 32
                        mem[_4626 + ceil32(return_data.size)] = _4650
                        require _4637 + (32 * _4650) + 32 <= return_data.size
                        idx = 0
                        s = _4626 + _4637 + 32
                        t = _4626 + ceil32(return_data.size) + 32
                        while idx < _4650:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4650 - 1 < _4650
                        _5037 = mem[(32 * _4650 - 1) + _4626 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _5037
                        mem[mem[64] + 68] = 160
                        _5053 = mem[_3810]
                        mem[mem[64] + 164] = mem[_3810]
                        idx = 0
                        s = _3810 + 32
                        t = mem[64] + 196
                        while idx < _5053:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _5037, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _5053) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5332 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5340 = mem[_5332]
                        require mem[_5332] <= test266151307()
                        require _5332 + mem[_5332] + 31 < _5332 + return_data.size
                        _5348 = mem[_5332 + mem[_5332]]
                        require mem[_5332 + mem[_5332]] <= test266151307()
                        require _5332 + ceil32(return_data.size) + (32 * mem[_5332 + mem[_5332]]) + 32 <= test266151307() and (32 * mem[_5332 + mem[_5332]]) + 32 >= 0
                        mem[64] = _5332 + ceil32(return_data.size) + (32 * mem[_5332 + mem[_5332]]) + 32
                        mem[_5332 + ceil32(return_data.size)] = _5348
                        require _5340 + (32 * _5348) + 32 <= return_data.size
                        idx = 0
                        s = _5332 + _5340 + 32
                        t = _5332 + ceil32(return_data.size) + 32
                        while idx < _5348:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_3810] - 1 < mem[_3810]
                        _5612 = mem[(32 * mem[_3810] - 1) + _3810 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _1972
                        mem[mem[64] + 100] = _5037
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5612), _1972, _5037, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5645 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5645] == mem[_5645]
                        require mem[_5645 + 32] == mem[_5645 + 32]
                        require mem[_5645 + 64] == mem[_5645 + 64]
                        if mem[_5645 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5645 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5645 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5645 + 64]
                    emit Reinvest(totalDeposits, totalSupply);
            else:
                require 2 * ext_call.return_data[0]
                if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 2 * ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(4 * ceil32(return_data.size)) + 160] = 26
                mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 <= 0:
                    mem[(4 * ceil32(return_data.size)) + 224] = 31
                    mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                    if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(4 * ceil32(return_data.size)) + 288] = 31
                    mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(4 * ceil32(return_data.size)) + 352] = 26
                    mem[(4 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                    if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2 <= 0:
                        revert with 0, 'amount too low'
                    mem[(4 * ceil32(return_data.size)) + 416] = 3
                    mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 480] = stor11
                    mem[(4 * ceil32(return_data.size)) + 512] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(4 * ceil32(return_data.size)) + 544] = 2
                        mem[(4 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 608] = stor11
                        if rewardTokenAddress == stor11:
                            mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 0
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            mem[(4 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                            totalDeposits += ext_call.return_data[64]
                            emit Reinvest(uint256 rg1, uint256 rg2):
                                          totalDeposits,
                                          totalSupply,
                                          mem[(6 * ceil32(return_data.size)) + 704 len 9 * ceil32(return_data.size)],
                        else:
                            mem[(4 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 676] = 64
                            mem[(4 * ceil32(return_data.size)) + 708] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 576
                            t = (4 * ceil32(return_data.size)) + 740
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 740 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 640
                            require return_data.size >= 32
                            _814 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                            _865 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(6 * ceil32(return_data.size)) + 640] = _865
                            require _814 + (32 * _865) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _814 + 672
                            t = (6 * ceil32(return_data.size)) + 672
                            while idx < _865:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _865 - 1 < _865
                            _1966 = mem[(32 * _865 - 1) + (6 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _1966
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 576
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1966, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2922 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2940 = mem[_2922]
                            require mem[_2922] <= test266151307()
                            require _2922 + mem[_2922] + 31 < _2922 + return_data.size
                            _2956 = mem[_2922 + mem[_2922]]
                            require mem[_2922 + mem[_2922]] <= test266151307()
                            require _2922 + ceil32(return_data.size) + (32 * mem[_2922 + mem[_2922]]) + 32 <= test266151307() and (32 * mem[_2922 + mem[_2922]]) + 32 >= 0
                            mem[64] = _2922 + ceil32(return_data.size) + (32 * mem[_2922 + mem[_2922]]) + 32
                            mem[_2922 + ceil32(return_data.size)] = _2956
                            require _2940 + (32 * _2956) + 32 <= return_data.size
                            idx = 0
                            s = _2922 + _2940 + 32
                            t = _2922 + ceil32(return_data.size) + 32
                            while idx < _2956:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[(4 * ceil32(return_data.size)) + 544] - 1 < mem[(4 * ceil32(return_data.size)) + 544]
                            _3829 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 544] - 1) + (4 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _1966
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_3829), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1966, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4120 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_4120] == mem[_4120]
                            require mem[_4120 + 32] == mem[_4120 + 32]
                            require mem[_4120 + 64] == mem[_4120 + 64]
                            if mem[_4120 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_4120 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_4120 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_4120 + 64]
                            emit Reinvest(totalDeposits, totalSupply);
                    else:
                        mem[(4 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 580] = 64
                        mem[(4 * ceil32(return_data.size)) + 612] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 448
                        t = (4 * ceil32(return_data.size)) + 644
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 644 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _815 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                        _866 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                        mem[(6 * ceil32(return_data.size)) + 544] = _866
                        require _815 + (32 * _866) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _815 + 576
                        t = (6 * ceil32(return_data.size)) + 576
                        while idx < _866:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _866 - 1 < _866
                        _1968 = mem[(32 * _866 - 1) + (6 * ceil32(return_data.size)) + 576]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1968
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1968, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2923 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2941 = mem[_2923]
                        require mem[_2923] <= test266151307()
                        require _2923 + mem[_2923] + 31 < _2923 + return_data.size
                        _2957 = mem[_2923 + mem[_2923]]
                        require mem[_2923 + mem[_2923]] <= test266151307()
                        require _2923 + ceil32(return_data.size) + (32 * mem[_2923 + mem[_2923]]) + 32 <= test266151307() and (32 * mem[_2923 + mem[_2923]]) + 32 >= 0
                        mem[64] = _2923 + ceil32(return_data.size) + (32 * mem[_2923 + mem[_2923]]) + 32
                        mem[_2923 + ceil32(return_data.size)] = _2957
                        require _2941 + (32 * _2957) + 32 <= return_data.size
                        idx = 0
                        s = _2923 + _2941 + 32
                        t = _2923 + ceil32(return_data.size) + 32
                        while idx < _2957:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3806 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3806 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3806]
                        mem[_3806 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3806]
                        mem[_3806 + 64] = stor11
                        require mem[_3806] - 1 < mem[_3806]
                        require 0 < mem[_3806]
                        if mem[_3806 + 44 len 20] == mem[(32 * mem[_3806] - 1) + _3806 + 44 len 20]:
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_3806] - 1 < mem[_3806]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3806] - 1) + _3806 + 44 len 20], _1968, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += ext_call.return_data[64]
                        else:
                            mem[_3806 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3806 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_3806 + 132] = 64
                            mem[_3806 + 164] = mem[_3806]
                            idx = 0
                            s = _3806 + 32
                            t = _3806 + 196
                            while idx < mem[_3806]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3806 + (32 * mem[_3806]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4621 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4635 = mem[_4621]
                            require mem[_4621] <= test266151307()
                            require _4621 + mem[_4621] + 31 < _4621 + return_data.size
                            _4647 = mem[_4621 + mem[_4621]]
                            require mem[_4621 + mem[_4621]] <= test266151307()
                            require _4621 + ceil32(return_data.size) + (32 * mem[_4621 + mem[_4621]]) + 32 <= test266151307() and (32 * mem[_4621 + mem[_4621]]) + 32 >= 0
                            mem[64] = _4621 + ceil32(return_data.size) + (32 * mem[_4621 + mem[_4621]]) + 32
                            mem[_4621 + ceil32(return_data.size)] = _4647
                            require _4635 + (32 * _4647) + 32 <= return_data.size
                            idx = 0
                            s = _4621 + _4635 + 32
                            t = _4621 + ceil32(return_data.size) + 32
                            while idx < _4647:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4647 - 1 < _4647
                            _5035 = mem[(32 * _4647 - 1) + _4621 + ceil32(return_data.size) + 32]
                            _5036 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _5035
                            mem[mem[64] + 68] = 160
                            _5052 = mem[_3806]
                            mem[mem[64] + 164] = mem[_3806]
                            idx = 0
                            s = _3806 + 32
                            t = mem[64] + 196
                            while idx < _5052:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5036 + 100] = this.address
                            mem[_5036 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5036 + (32 * _5052) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5330 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5339 = mem[_5330]
                            require mem[_5330] <= test266151307()
                            require _5330 + mem[_5330] + 31 < _5330 + return_data.size
                            _5347 = mem[_5330 + mem[_5330]]
                            require mem[_5330 + mem[_5330]] <= test266151307()
                            require _5330 + ceil32(return_data.size) + (32 * mem[_5330 + mem[_5330]]) + 32 <= test266151307() and (32 * mem[_5330 + mem[_5330]]) + 32 >= 0
                            mem[64] = _5330 + ceil32(return_data.size) + (32 * mem[_5330 + mem[_5330]]) + 32
                            mem[_5330 + ceil32(return_data.size)] = _5347
                            require _5339 + (32 * _5347) + 32 <= return_data.size
                            idx = 0
                            s = _5330 + _5339 + 32
                            t = _5330 + ceil32(return_data.size) + 32
                            while idx < _5347:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_3806] - 1 < mem[_3806]
                            _5610 = mem[(32 * mem[_3806] - 1) + _3806 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _1968
                            mem[mem[64] + 100] = _5035
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5610), _1968, _5035, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5644 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5644] == mem[_5644]
                            require mem[_5644 + 32] == mem[_5644 + 32]
                            require mem[_5644 + 64] == mem[_5644 + 64]
                            if mem[_5644 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5644 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5644 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5644 + 64]
                        emit Reinvest(totalDeposits, totalSupply);
                else:
                    mem[(4 * ceil32(return_data.size)) + 228] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 260] = (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'reinvest fee transfer failed'
                    mem[(6 * ceil32(return_data.size)) + 224] = 31
                    mem[(6 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                    if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(6 * ceil32(return_data.size)) + 288] = 31
                    mem[(6 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(6 * ceil32(return_data.size)) + 352] = 26
                    mem[(6 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                    if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2 <= 0:
                        revert with 0, 'amount too low'
                    mem[(6 * ceil32(return_data.size)) + 416] = 3
                    mem[(6 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(6 * ceil32(return_data.size)) + 480] = stor11
                    mem[(6 * ceil32(return_data.size)) + 512] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(6 * ceil32(return_data.size)) + 544] = 2
                        mem[(6 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                        mem[(6 * ceil32(return_data.size)) + 608] = stor11
                        if rewardTokenAddress == stor11:
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += ext_call.return_data[64]
                        else:
                            mem[(6 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(6 * ceil32(return_data.size)) + 676] = 64
                            mem[(6 * ceil32(return_data.size)) + 708] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 576
                            t = (6 * ceil32(return_data.size)) + 740
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 740 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 640
                            require return_data.size >= 32
                            _1988 = mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (6 * ceil32(return_data.size)) + return_data.size + 640
                            _1990 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(7 * ceil32(return_data.size)) + 640] = _1990
                            require _1988 + (32 * _1990) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + _1988 + 672
                            t = (7 * ceil32(return_data.size)) + 672
                            while idx < _1990:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1990 - 1 < _1990
                            _2896 = mem[(32 * _1990 - 1) + (7 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2896
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 576
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2896, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3969 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3979 = mem[_3969]
                            require mem[_3969] <= test266151307()
                            require _3969 + mem[_3969] + 31 < _3969 + return_data.size
                            _3985 = mem[_3969 + mem[_3969]]
                            require mem[_3969 + mem[_3969]] <= test266151307()
                            require _3969 + ceil32(return_data.size) + (32 * mem[_3969 + mem[_3969]]) + 32 <= test266151307() and (32 * mem[_3969 + mem[_3969]]) + 32 >= 0
                            mem[64] = _3969 + ceil32(return_data.size) + (32 * mem[_3969 + mem[_3969]]) + 32
                            mem[_3969 + ceil32(return_data.size)] = _3985
                            require _3979 + (32 * _3985) + 32 <= return_data.size
                            idx = 0
                            s = _3969 + _3979 + 32
                            t = _3969 + ceil32(return_data.size) + 32
                            while idx < _3985:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require mem[(6 * ceil32(return_data.size)) + 544] - 1 < mem[(6 * ceil32(return_data.size)) + 544]
                            _4630 = mem[(32 * mem[(6 * ceil32(return_data.size)) + 544] - 1) + (6 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2896
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4630), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2896, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4746 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_4746] == mem[_4746]
                            require mem[_4746 + 32] == mem[_4746 + 32]
                            require mem[_4746 + 64] == mem[_4746 + 64]
                            if mem[_4746 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_4746 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_4746 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_4746 + 64]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(6 * ceil32(return_data.size)) + 580] = 64
                        mem[(6 * ceil32(return_data.size)) + 612] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 448
                        t = (6 * ceil32(return_data.size)) + 644
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 644 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _1989 = mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (6 * ceil32(return_data.size)) + return_data.size + 544
                        _1991 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                        require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                        mem[(7 * ceil32(return_data.size)) + 544] = _1991
                        require _1989 + (32 * _1991) + 32 <= return_data.size
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + _1989 + 576
                        t = (7 * ceil32(return_data.size)) + 576
                        while idx < _1991:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1991 - 1 < _1991
                        _2898 = mem[(32 * _1991 - 1) + (7 * ceil32(return_data.size)) + 576]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _2898
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2898, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3970 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3980 = mem[_3970]
                        require mem[_3970] <= test266151307()
                        require _3970 + mem[_3970] + 31 < _3970 + return_data.size
                        _3986 = mem[_3970 + mem[_3970]]
                        require mem[_3970 + mem[_3970]] <= test266151307()
                        require _3970 + ceil32(return_data.size) + (32 * mem[_3970 + mem[_3970]]) + 32 <= test266151307() and (32 * mem[_3970 + mem[_3970]]) + 32 >= 0
                        mem[64] = _3970 + ceil32(return_data.size) + (32 * mem[_3970 + mem[_3970]]) + 32
                        mem[_3970 + ceil32(return_data.size)] = _3986
                        require _3980 + (32 * _3986) + 32 <= return_data.size
                        idx = 0
                        s = _3970 + _3980 + 32
                        t = _3970 + ceil32(return_data.size) + 32
                        while idx < _3986:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _4625 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_4625 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(6 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_4625]
                        mem[_4625 + 32] = mem[(6 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_4625]
                        mem[_4625 + 64] = stor11
                        require mem[_4625] - 1 < mem[_4625]
                        require 0 < mem[_4625]
                        if mem[_4625 + 44 len 20] == mem[(32 * mem[_4625] - 1) + _4625 + 44 len 20]:
                            require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require mem[_4625] - 1 < mem[_4625]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_4625] - 1) + _4625 + 44 len 20], _2898, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += ext_call.return_data[64]
                        else:
                            mem[_4625 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_4625 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_4625 + 132] = 64
                            mem[_4625 + 164] = mem[_4625]
                            idx = 0
                            s = _4625 + 32
                            t = _4625 + 196
                            while idx < mem[_4625]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _4625 + (32 * mem[_4625]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5045 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5046 = mem[_5045]
                            require mem[_5045] <= test266151307()
                            require _5045 + mem[_5045] + 31 < _5045 + return_data.size
                            _5047 = mem[_5045 + mem[_5045]]
                            require mem[_5045 + mem[_5045]] <= test266151307()
                            require _5045 + ceil32(return_data.size) + (32 * mem[_5045 + mem[_5045]]) + 32 <= test266151307() and (32 * mem[_5045 + mem[_5045]]) + 32 >= 0
                            mem[64] = _5045 + ceil32(return_data.size) + (32 * mem[_5045 + mem[_5045]]) + 32
                            mem[_5045 + ceil32(return_data.size)] = _5047
                            require _5046 + (32 * _5047) + 32 <= return_data.size
                            idx = 0
                            s = _5045 + _5046 + 32
                            t = _5045 + ceil32(return_data.size) + 32
                            while idx < _5047:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _5047 - 1 < _5047
                            _5317 = mem[(32 * _5047 - 1) + _5045 + ceil32(return_data.size) + 32]
                            _5318 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _5317
                            mem[mem[64] + 68] = 160
                            _5331 = mem[_4625]
                            mem[mem[64] + 164] = mem[_4625]
                            idx = 0
                            s = _4625 + 32
                            t = mem[64] + 196
                            while idx < _5331:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5318 + 100] = this.address
                            mem[_5318 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5318 + (32 * _5331) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5621 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5622 = mem[_5621]
                            require mem[_5621] <= test266151307()
                            require _5621 + mem[_5621] + 31 < _5621 + return_data.size
                            _5623 = mem[_5621 + mem[_5621]]
                            require mem[_5621 + mem[_5621]] <= test266151307()
                            require _5621 + ceil32(return_data.size) + (32 * mem[_5621 + mem[_5621]]) + 32 <= test266151307() and (32 * mem[_5621 + mem[_5621]]) + 32 >= 0
                            mem[64] = _5621 + ceil32(return_data.size) + (32 * mem[_5621 + mem[_5621]]) + 32
                            mem[_5621 + ceil32(return_data.size)] = _5623
                            require _5622 + (32 * _5623) + 32 <= return_data.size
                            idx = 0
                            s = _5621 + _5622 + 32
                            t = _5621 + ceil32(return_data.size) + 32
                            while idx < _5623:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require mem[_4625] - 1 < mem[_4625]
                            _5756 = mem[(32 * mem[_4625] - 1) + _4625 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _2898
                            mem[mem[64] + 100] = _5317
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5756), _2898, _5317, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5759 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5759] == mem[_5759]
                            require mem[_5759 + 32] == mem[_5759 + 32]
                            require mem[_5759 + 64] == mem[_5759 + 64]
                            if mem[_5759 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5759 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5759 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5759 + 64]
                    emit Reinvest(totalDeposits, totalSupply);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalDeposits < totalSupply:
        revert with 0, 'deposit failed'
    if not uint8(stor18):
        require ext_code.size(depositTokenAddress)
        call depositTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transferFrom failed'
        if arg1 <= 0:
            revert with 0, 'amount too low'
        require ext_code.size(stakingContractAddress)
        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args PID, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not totalSupply:
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
        else:
            require totalSupply
            if totalSupply * totalDeposits / totalSupply != totalDeposits:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalSupply * totalDeposits:
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                emit Transfer(arg1, 0, msg.sender);
            else:
                if not arg1:
                    if totalDeposits <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require totalDeposits
                    if totalSupply + (0 / totalDeposits) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / totalDeposits
                    if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / totalDeposits
                    emit Transfer((0 / totalDeposits), 0, msg.sender);
                else:
                    require arg1
                    if arg1 * totalSupply / arg1 != totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if totalDeposits <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require totalDeposits
                    if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1 * totalSupply / totalDeposits
                    if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                    emit Transfer((arg1 * totalSupply / totalDeposits), 0, msg.sender);
        if totalDeposits + arg1 < totalDeposits:
            revert with 0, 'SafeMath: addition overflow'
        totalDeposits += arg1
        emit Deposit(arg1, msg.sender);
    else:
        mem[100] = PID
        mem[132] = this.address
        require ext_code.size(stakingContractAddress)
        staticcall stakingContractAddress.pendingOlive(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args PID, this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 2 * ext_call.return_data[0] < MIN_TOKENS_TO_REINVEST_BEFORE_DEPOSIT:
            require ext_code.size(depositTokenAddress)
            call depositTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'transferFrom failed'
            if arg1 <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args PID, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not totalSupply:
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                emit Transfer(arg1, 0, msg.sender);
            else:
                require totalSupply
                if totalSupply * totalDeposits / totalSupply != totalDeposits:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not totalSupply * totalDeposits:
                    if totalSupply + arg1 < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1
                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg1
                    emit Transfer(arg1, 0, msg.sender);
                else:
                    if not arg1:
                        if totalDeposits <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require totalDeposits
                        if totalSupply + (0 / totalDeposits) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / totalDeposits
                        if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / totalDeposits
                        emit Transfer((0 / totalDeposits), 0, msg.sender);
                    else:
                        require arg1
                        if arg1 * totalSupply / arg1 != totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalDeposits <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require totalDeposits
                        if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1 * totalSupply / totalDeposits
                        if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                        emit Transfer((arg1 * totalSupply / totalDeposits), 0, msg.sender);
            if totalDeposits + arg1 < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits += arg1
            emit Deposit(arg1, msg.sender);
        else:
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args PID, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not uint255(ext_call.return_data[0]):
                mem[(2 * ceil32(return_data.size)) + 96] = 26
                mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                if not uint255(ext_call.return_data[0]):
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    mem[(2 * ceil32(return_data.size)) + 224] = 31
                    mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                    if 0 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(2 * ceil32(return_data.size)) + 288] = 31
                    mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                    mem[(2 * ceil32(return_data.size)) + 352] = 26
                    mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                    if uint255(ext_call.return_data[0]) <= 0:
                        revert with 0, 'amount too low'
                    mem[(2 * ceil32(return_data.size)) + 416] = 3
                    mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 480] = stor11
                    mem[(2 * ceil32(return_data.size)) + 512] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(2 * ceil32(return_data.size)) + 544] = 2
                        mem[(2 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 608] = stor11
                        if rewardTokenAddress == stor11:
                            mem[(2 * ceil32(return_data.size)) + 708] = uint255(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 740] = uint255(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 772] = 0
                            mem[(2 * ceil32(return_data.size)) + 804] = 0
                            mem[(2 * ceil32(return_data.size)) + 836] = this.address
                            mem[(2 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, 2 * ext_call.return_data[0], 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 644] = 32
                                mem[(4 * ceil32(return_data.size)) + 676] = 14
                                mem[(4 * ceil32(return_data.size)) + 708] = 'amount too low'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 640
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 644] = PID
                            mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 644 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 644] = 32
                                mem[(4 * ceil32(return_data.size)) + 676] = 27
                                mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 640
                                   len (5 * ceil32(return_data.size)) + 100
                            totalDeposits += ext_call.return_data[64]
                            mem[(4 * ceil32(return_data.size)) + 640] = totalDeposits
                            mem[(4 * ceil32(return_data.size)) + 672] = totalSupply
                            emit Reinvest(uint256 rg1, uint256 rg2):
                                          mem[(4 * ceil32(return_data.size)) + 640 len (5 * ceil32(return_data.size)) + 64],
                            mem[(4 * ceil32(return_data.size)) + 644] = msg.sender
                            mem[(4 * ceil32(return_data.size)) + 676] = this.address
                            mem[(4 * ceil32(return_data.size)) + 708] = arg1
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 644 len (5 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 644] = 32
                                mem[(4 * ceil32(return_data.size)) + 676] = 19
                                mem[(4 * ceil32(return_data.size)) + 708] = 'transferFrom failed'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 640
                                   len (7 * ceil32(return_data.size)) + 100
                            if arg1 <= 0:
                                mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 644] = 32
                                mem[(4 * ceil32(return_data.size)) + 676] = 14
                                mem[(4 * ceil32(return_data.size)) + 708] = 'amount too low'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 640
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 644] = PID
                            mem[(4 * ceil32(return_data.size)) + 676] = arg1
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 644 len (7 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if totalSupply + arg1 >= totalSupply:
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += arg1
                                        mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                        emit Transfer(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                        if totalDeposits + arg1 >= totalDeposits:
                                            totalDeposits += arg1
                                            mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                            emit Deposit(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 644] = 32
                                mem[(4 * ceil32(return_data.size)) + 676] = 27
                                mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 640
                                   len (7 * ceil32(return_data.size)) + 100
                            require totalSupply
                            if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 644] = 32
                                mem[(4 * ceil32(return_data.size)) + 676] = 33
                                mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 740] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 640
                                   len (7 * ceil32(return_data.size)) + 132
                            if not totalSupply * totalDeposits:
                                if totalSupply + arg1 >= totalSupply:
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += arg1
                                        mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                        emit Transfer(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                        if totalDeposits + arg1 >= totalDeposits:
                                            totalDeposits += arg1
                                            mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                            emit Deposit(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 644] = 32
                                mem[(4 * ceil32(return_data.size)) + 676] = 27
                                mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 640
                                   len (7 * ceil32(return_data.size)) + 100
                            if not arg1:
                                if totalDeposits <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require totalDeposits
                                if totalSupply + (0 / totalDeposits) >= totalSupply:
                                    totalSupply += 0 / totalDeposits
                                    if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += 0 / totalDeposits
                                        mem[(4 * ceil32(return_data.size)) + 704] = 0 / totalDeposits
                                        emit Transfer(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                        if totalDeposits + arg1 >= totalDeposits:
                                            totalDeposits += arg1
                                            mem[(4 * ceil32(return_data.size)) + 704] = arg1
                                            emit Deposit(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                            else:
                                require arg1
                                if arg1 * totalSupply / arg1 != totalSupply:
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 33
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 740] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (7 * ceil32(return_data.size)) + 132
                                if totalDeposits <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require totalDeposits
                                if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                    totalSupply += arg1 * totalSupply / totalDeposits
                                    if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                        mem[(4 * ceil32(return_data.size)) + 704] = arg1 * totalSupply / totalDeposits
                                        emit Transfer(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                        if totalDeposits + arg1 >= totalDeposits:
                                            totalDeposits += arg1
                                            mem[(4 * ceil32(return_data.size)) + 704] = arg1
                                            emit Deposit(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                            mem[(4 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 708] = 32
                            mem[(4 * ceil32(return_data.size)) + 740] = 27
                            mem[(4 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 704
                               len (7 * ceil32(return_data.size)) + 100
                        mem[(2 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 644] = uint255(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 676] = 64
                        mem[(2 * ceil32(return_data.size)) + 708] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 576
                        t = (2 * ceil32(return_data.size)) + 740
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 2 * ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 740 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 640
                        require return_data.size >= 32
                        _911 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                        require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                        _951 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 672
                        mem[(4 * ceil32(return_data.size)) + 640] = _951
                        require _911 + (32 * _951) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _911 + 672
                        t = (4 * ceil32(return_data.size)) + 672
                        while idx < _951:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _951 - 1 < _951
                        _2808 = mem[(32 * _951 - 1) + (4 * ceil32(return_data.size)) + 672]
                        _2809 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                        mem[mem[64] + 36] = _2808
                        mem[mem[64] + 68] = 160
                        _2870 = mem[(2 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 544]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 576
                        t = mem[64] + 196
                        while idx < _2870:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2809 + 100] = this.address
                        mem[_2809 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2809 + (32 * _2870) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3894 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3910 = mem[_3894]
                        require mem[_3894] <= test266151307()
                        require _3894 + mem[_3894] + 31 < _3894 + return_data.size
                        _3926 = mem[_3894 + mem[_3894]]
                        require mem[_3894 + mem[_3894]] <= test266151307()
                        require _3894 + ceil32(return_data.size) + (32 * mem[_3894 + mem[_3894]]) + 32 <= test266151307() and (32 * mem[_3894 + mem[_3894]]) + 32 >= 0
                        mem[64] = _3894 + ceil32(return_data.size) + (32 * mem[_3894 + mem[_3894]]) + 32
                        mem[_3894 + ceil32(return_data.size)] = _3926
                        require _3910 + (32 * _3926) + 32 <= return_data.size
                        idx = 0
                        s = _3894 + _3910 + 32
                        t = _3894 + ceil32(return_data.size) + 32
                        while idx < _3926:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[(2 * ceil32(return_data.size)) + 544] - 1 < mem[(2 * ceil32(return_data.size)) + 544]
                        _5027 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 544] - 1) + (2 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = uint255(ext_call.return_data[0])
                        mem[mem[64] + 100] = _2808
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5027), 2 * ext_call.return_data[0], _2808, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5314 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5314] == mem[_5314]
                        require mem[_5314 + 32] == mem[_5314 + 32]
                        require mem[_5314 + 64] == mem[_5314 + 64]
                        if mem[_5314 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5314 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5314 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5314 + 64]
                        emit Reinvest(totalDeposits, totalSupply);
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5707 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5707] == bool(mem[_5707])
                        if not mem[_5707]:
                            revert with 0, 'transferFrom failed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 548] = uint255(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 580] = 64
                        mem[(2 * ceil32(return_data.size)) + 612] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = (2 * ceil32(return_data.size)) + 644
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 2 * ext_call.return_data[0], Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 644 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 544
                        require return_data.size >= 32
                        _912 = mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                        require mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
                        _952 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]) + 576 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]) + 576
                        mem[(4 * ceil32(return_data.size)) + 544] = _952
                        require _912 + (32 * _952) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _912 + 576
                        t = (4 * ceil32(return_data.size)) + 576
                        while idx < _952:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _952 - 1 < _952
                        _2810 = mem[(32 * _952 - 1) + (4 * ceil32(return_data.size)) + 576]
                        _2811 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                        mem[mem[64] + 36] = _2810
                        mem[mem[64] + 68] = 160
                        _2871 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _2871:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2811 + 100] = this.address
                        mem[_2811 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2811 + (32 * _2871) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3895 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3911 = mem[_3895]
                        require mem[_3895] <= test266151307()
                        require _3895 + mem[_3895] + 31 < _3895 + return_data.size
                        _3927 = mem[_3895 + mem[_3895]]
                        require mem[_3895 + mem[_3895]] <= test266151307()
                        require _3895 + ceil32(return_data.size) + (32 * mem[_3895 + mem[_3895]]) + 32 <= test266151307() and (32 * mem[_3895 + mem[_3895]]) + 32 >= 0
                        mem[64] = _3895 + ceil32(return_data.size) + (32 * mem[_3895 + mem[_3895]]) + 32
                        mem[_3895 + ceil32(return_data.size)] = _3927
                        require _3911 + (32 * _3927) + 32 <= return_data.size
                        idx = 0
                        s = _3895 + _3911 + 32
                        t = _3895 + ceil32(return_data.size) + 32
                        while idx < _3927:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _5012 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_5012 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_5012]
                        mem[_5012 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_5012]
                        mem[_5012 + 64] = stor11
                        require mem[_5012] - 1 < mem[_5012]
                        require 0 < mem[_5012]
                        if mem[_5012 + 44 len 20] == mem[(32 * mem[_5012] - 1) + _5012 + 44 len 20]:
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[_5012] - 1 < mem[_5012]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_5012] - 1) + _5012 + 44 len 20], _2810, 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += ext_call.return_data[64]
                            emit Reinvest(totalDeposits, totalSupply);
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[_5012 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_5012 + 100] = uint255(ext_call.return_data[0])
                            mem[_5012 + 132] = 64
                            mem[_5012 + 164] = mem[_5012]
                            idx = 0
                            s = _5012 + 32
                            t = _5012 + 196
                            while idx < mem[_5012]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5012 + (32 * mem[_5012]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7014 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7065 = mem[_7014]
                            require mem[_7014] <= test266151307()
                            require _7014 + mem[_7014] + 31 < _7014 + return_data.size
                            _7126 = mem[_7014 + mem[_7014]]
                            require mem[_7014 + mem[_7014]] <= test266151307()
                            require _7014 + ceil32(return_data.size) + (32 * mem[_7014 + mem[_7014]]) + 32 <= test266151307() and (32 * mem[_7014 + mem[_7014]]) + 32 >= 0
                            mem[64] = _7014 + ceil32(return_data.size) + (32 * mem[_7014 + mem[_7014]]) + 32
                            mem[_7014 + ceil32(return_data.size)] = _7126
                            require _7065 + (32 * _7126) + 32 <= return_data.size
                            idx = 0
                            s = _7014 + _7065 + 32
                            t = _7014 + ceil32(return_data.size) + 32
                            while idx < _7126:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _7126 - 1 < _7126
                            _7701 = mem[(32 * _7126 - 1) + _7014 + ceil32(return_data.size) + 32]
                            _7702 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                            mem[mem[64] + 36] = _7701
                            mem[mem[64] + 68] = 160
                            _7728 = mem[_5012]
                            mem[mem[64] + 164] = mem[_5012]
                            idx = 0
                            s = _5012 + 32
                            t = mem[64] + 196
                            while idx < _7728:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7702 + 100] = this.address
                            mem[_7702 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7702 + (32 * _7728) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8074 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8082 = mem[_8074]
                            require mem[_8074] <= test266151307()
                            require _8074 + mem[_8074] + 31 < _8074 + return_data.size
                            _8090 = mem[_8074 + mem[_8074]]
                            require mem[_8074 + mem[_8074]] <= test266151307()
                            require _8074 + ceil32(return_data.size) + (32 * mem[_8074 + mem[_8074]]) + 32 <= test266151307() and (32 * mem[_8074 + mem[_8074]]) + 32 >= 0
                            mem[64] = _8074 + ceil32(return_data.size) + (32 * mem[_8074 + mem[_8074]]) + 32
                            mem[_8074 + ceil32(return_data.size)] = _8090
                            require _8082 + (32 * _8090) + 32 <= return_data.size
                            idx = 0
                            s = _8074 + _8082 + 32
                            t = _8074 + ceil32(return_data.size) + 32
                            while idx < _8090:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[_5012] - 1 < mem[_5012]
                            _8501 = mem[(32 * mem[_5012] - 1) + _5012 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _2810
                            mem[mem[64] + 100] = _7701
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_8501), _2810, _7701, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8531 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_8531] == mem[_8531]
                            require mem[_8531 + 32] == mem[_8531 + 32]
                            require mem[_8531 + 64] == mem[_8531 + 64]
                            if mem[_8531 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_8531 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_8531 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_8531 + 64]
                            emit Reinvest(totalDeposits, totalSupply);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = arg1
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8655 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8655] == bool(mem[_8655])
                            if not mem[_8655]:
                                revert with 0, 'transferFrom failed'
                else:
                    require 2 * ext_call.return_data[0]
                    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 2 * ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 160] = 26
                    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 <= 0:
                        mem[(2 * ceil32(return_data.size)) + 224] = 31
                        mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                        if 0 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[(2 * ceil32(return_data.size)) + 288] = 31
                        mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                        if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[(2 * ceil32(return_data.size)) + 352] = 26
                        mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                        if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2 <= 0:
                            revert with 0, 'amount too low'
                        mem[(2 * ceil32(return_data.size)) + 416] = 3
                        mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 480] = stor11
                        mem[(2 * ceil32(return_data.size)) + 512] = stor10
                        if rewardTokenAddress == stor10:
                            mem[(2 * ceil32(return_data.size)) + 544] = 2
                            mem[(2 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                            mem[(2 * ceil32(return_data.size)) + 608] = stor11
                            if rewardTokenAddress == stor11:
                                mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 772] = 0
                                mem[(2 * ceil32(return_data.size)) + 804] = 0
                                mem[(2 * ceil32(return_data.size)) + 836] = this.address
                                mem[(2 * ceil32(return_data.size)) + 868] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                mem[(2 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 14
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'amount too low'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 644] = PID
                                mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 644 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 27
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (5 * ceil32(return_data.size)) + 100
                                totalDeposits += ext_call.return_data[64]
                                mem[(4 * ceil32(return_data.size)) + 640] = totalDeposits
                                mem[(4 * ceil32(return_data.size)) + 672] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(4 * ceil32(return_data.size)) + 640 len (5 * ceil32(return_data.size)) + 64],
                                mem[(4 * ceil32(return_data.size)) + 644] = msg.sender
                                mem[(4 * ceil32(return_data.size)) + 676] = this.address
                                mem[(4 * ceil32(return_data.size)) + 708] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 644 len (5 * ceil32(return_data.size)) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 19
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'transferFrom failed'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (7 * ceil32(return_data.size)) + 100
                                if arg1 <= 0:
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 14
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'amount too low'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 644] = PID
                                mem[(4 * ceil32(return_data.size)) + 676] = arg1
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 644 len (7 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 27
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (7 * ceil32(return_data.size)) + 100
                                require totalSupply
                                if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 33
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 740] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (7 * ceil32(return_data.size)) + 132
                                if not totalSupply * totalDeposits:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 27
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (7 * ceil32(return_data.size)) + 100
                                if not arg1:
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (0 / totalDeposits) >= totalSupply:
                                        totalSupply += 0 / totalDeposits
                                        if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += 0 / totalDeposits
                                            mem[(4 * ceil32(return_data.size)) + 704] = 0 / totalDeposits
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 704] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                else:
                                    require arg1
                                    if arg1 * totalSupply / arg1 != totalSupply:
                                        mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 644] = 32
                                        mem[(4 * ceil32(return_data.size)) + 676] = 33
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                        mem[(4 * ceil32(return_data.size)) + 740] = 'w'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 640
                                           len (7 * ceil32(return_data.size)) + 132
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                        totalSupply += arg1 * totalSupply / totalDeposits
                                        if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                            mem[(4 * ceil32(return_data.size)) + 704] = arg1 * totalSupply / totalDeposits
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 704] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(4 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 708] = 32
                                mem[(4 * ceil32(return_data.size)) + 740] = 27
                                mem[(4 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 704
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(2 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 676] = 64
                            mem[(2 * ceil32(return_data.size)) + 708] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 576
                            t = (2 * ceil32(return_data.size)) + 740
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 740 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 640
                            require return_data.size >= 32
                            _903 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                            _947 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(4 * ceil32(return_data.size)) + 640] = _947
                            require _903 + (32 * _947) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _903 + 672
                            t = (4 * ceil32(return_data.size)) + 672
                            while idx < _947:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _947 - 1 < _947
                            _2800 = mem[(32 * _947 - 1) + (4 * ceil32(return_data.size)) + 672]
                            _2801 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2800
                            mem[mem[64] + 68] = 160
                            _2866 = mem[(2 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 544]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 576
                            t = mem[64] + 196
                            while idx < _2866:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_2801 + 100] = this.address
                            mem[_2801 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2801 + (32 * _2866) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3890 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3906 = mem[_3890]
                            require mem[_3890] <= test266151307()
                            require _3890 + mem[_3890] + 31 < _3890 + return_data.size
                            _3922 = mem[_3890 + mem[_3890]]
                            require mem[_3890 + mem[_3890]] <= test266151307()
                            require _3890 + ceil32(return_data.size) + (32 * mem[_3890 + mem[_3890]]) + 32 <= test266151307() and (32 * mem[_3890 + mem[_3890]]) + 32 >= 0
                            mem[64] = _3890 + ceil32(return_data.size) + (32 * mem[_3890 + mem[_3890]]) + 32
                            mem[_3890 + ceil32(return_data.size)] = _3922
                            require _3906 + (32 * _3922) + 32 <= return_data.size
                            idx = 0
                            s = _3890 + _3906 + 32
                            t = _3890 + ceil32(return_data.size) + 32
                            while idx < _3922:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[(2 * ceil32(return_data.size)) + 544] - 1 < mem[(2 * ceil32(return_data.size)) + 544]
                            _5023 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 544] - 1) + (2 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2800
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5023), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2800, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5312] == mem[_5312]
                            require mem[_5312 + 32] == mem[_5312 + 32]
                            require mem[_5312 + 64] == mem[_5312 + 64]
                            if mem[_5312 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5312 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5312 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5312 + 64]
                            emit Reinvest(totalDeposits, totalSupply);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = arg1
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5705 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5705] == bool(mem[_5705])
                            if not mem[_5705]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 580] = 64
                            mem[(2 * ceil32(return_data.size)) + 612] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 448
                            t = (2 * ceil32(return_data.size)) + 644
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 644 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _904 = mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
                            _948 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                            mem[(4 * ceil32(return_data.size)) + 544] = _948
                            require _904 + (32 * _948) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _904 + 576
                            t = (4 * ceil32(return_data.size)) + 576
                            while idx < _948:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _948 - 1 < _948
                            _2802 = mem[(32 * _948 - 1) + (4 * ceil32(return_data.size)) + 576]
                            _2803 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2802
                            mem[mem[64] + 68] = 160
                            _2867 = mem[(2 * ceil32(return_data.size)) + 416]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 448
                            t = mem[64] + 196
                            while idx < _2867:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_2803 + 100] = this.address
                            mem[_2803 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2803 + (32 * _2867) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3891 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3907 = mem[_3891]
                            require mem[_3891] <= test266151307()
                            require _3891 + mem[_3891] + 31 < _3891 + return_data.size
                            _3923 = mem[_3891 + mem[_3891]]
                            require mem[_3891 + mem[_3891]] <= test266151307()
                            require _3891 + ceil32(return_data.size) + (32 * mem[_3891 + mem[_3891]]) + 32 <= test266151307() and (32 * mem[_3891 + mem[_3891]]) + 32 >= 0
                            mem[64] = _3891 + ceil32(return_data.size) + (32 * mem[_3891 + mem[_3891]]) + 32
                            mem[_3891 + ceil32(return_data.size)] = _3923
                            require _3907 + (32 * _3923) + 32 <= return_data.size
                            idx = 0
                            s = _3891 + _3907 + 32
                            t = _3891 + ceil32(return_data.size) + 32
                            while idx < _3923:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _5004 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_5004 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_5004]
                            mem[_5004 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_5004]
                            mem[_5004 + 64] = stor11
                            require mem[_5004] - 1 < mem[_5004]
                            require 0 < mem[_5004]
                            if mem[_5004 + 44 len 20] == mem[(32 * mem[_5004] - 1) + _5004 + 44 len 20]:
                                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require mem[_5004] - 1 < mem[_5004]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_5004] - 1) + _5004 + 44 len 20], _2802, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += ext_call.return_data[64]
                                emit Reinvest(totalDeposits, totalSupply);
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[_5004 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5004 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[_5004 + 132] = 64
                                mem[_5004 + 164] = mem[_5004]
                                idx = 0
                                s = _5004 + 32
                                t = _5004 + 196
                                while idx < mem[_5004]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _5004 + (32 * mem[_5004]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7010 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7055 = mem[_7010]
                                require mem[_7010] <= test266151307()
                                require _7010 + mem[_7010] + 31 < _7010 + return_data.size
                                _7122 = mem[_7010 + mem[_7010]]
                                require mem[_7010 + mem[_7010]] <= test266151307()
                                require _7010 + ceil32(return_data.size) + (32 * mem[_7010 + mem[_7010]]) + 32 <= test266151307() and (32 * mem[_7010 + mem[_7010]]) + 32 >= 0
                                mem[64] = _7010 + ceil32(return_data.size) + (32 * mem[_7010 + mem[_7010]]) + 32
                                mem[_7010 + ceil32(return_data.size)] = _7122
                                require _7055 + (32 * _7122) + 32 <= return_data.size
                                idx = 0
                                s = _7010 + _7055 + 32
                                t = _7010 + ceil32(return_data.size) + 32
                                while idx < _7122:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _7122 - 1 < _7122
                                _7697 = mem[(32 * _7122 - 1) + _7010 + ceil32(return_data.size) + 32]
                                _7698 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _7697
                                mem[mem[64] + 68] = 160
                                _7726 = mem[_5004]
                                mem[mem[64] + 164] = mem[_5004]
                                idx = 0
                                s = _5004 + 32
                                t = mem[64] + 196
                                while idx < _7726:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7698 + 100] = this.address
                                mem[_7698 + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7698 + (32 * _7726) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8072 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8080 = mem[_8072]
                                require mem[_8072] <= test266151307()
                                require _8072 + mem[_8072] + 31 < _8072 + return_data.size
                                _8088 = mem[_8072 + mem[_8072]]
                                require mem[_8072 + mem[_8072]] <= test266151307()
                                require _8072 + ceil32(return_data.size) + (32 * mem[_8072 + mem[_8072]]) + 32 <= test266151307() and (32 * mem[_8072 + mem[_8072]]) + 32 >= 0
                                mem[64] = _8072 + ceil32(return_data.size) + (32 * mem[_8072 + mem[_8072]]) + 32
                                mem[_8072 + ceil32(return_data.size)] = _8088
                                require _8080 + (32 * _8088) + 32 <= return_data.size
                                idx = 0
                                s = _8072 + _8080 + 32
                                t = _8072 + ceil32(return_data.size) + 32
                                while idx < _8088:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require mem[_5004] - 1 < mem[_5004]
                                _8497 = mem[(32 * mem[_5004] - 1) + _5004 + 32]
                                mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = _2802
                                mem[mem[64] + 100] = _7697
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8497), _2802, _7697, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8529 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8529] == mem[_8529]
                                require mem[_8529 + 32] == mem[_8529 + 32]
                                require mem[_8529 + 64] == mem[_8529 + 64]
                                if mem[_8529 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_8529 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8529 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8529 + 64]
                                emit Reinvest(totalDeposits, totalSupply);
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8653 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8653] == bool(mem[_8653])
                                if not mem[_8653]:
                                    revert with 0, 'transferFrom failed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 260] = (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'reinvest fee transfer failed'
                        mem[(4 * ceil32(return_data.size)) + 224] = 31
                        mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                        if 0 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[(4 * ceil32(return_data.size)) + 288] = 31
                        mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                        if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[(4 * ceil32(return_data.size)) + 352] = 26
                        mem[(4 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                        if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2 <= 0:
                            revert with 0, 'amount too low'
                        mem[(4 * ceil32(return_data.size)) + 416] = 3
                        mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 480] = stor11
                        mem[(4 * ceil32(return_data.size)) + 512] = stor10
                        if rewardTokenAddress == stor10:
                            mem[(4 * ceil32(return_data.size)) + 544] = 2
                            mem[(4 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                            mem[(4 * ceil32(return_data.size)) + 608] = stor11
                            if rewardTokenAddress == stor11:
                                mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 772] = 0
                                mem[(4 * ceil32(return_data.size)) + 804] = 0
                                mem[(4 * ceil32(return_data.size)) + 836] = this.address
                                mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                mem[(4 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                mem[(6 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                totalDeposits += ext_call.return_data[64]
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              totalDeposits,
                                              totalSupply,
                                              mem[(6 * ceil32(return_data.size)) + 704 len 9 * ceil32(return_data.size)],
                                mem[(6 * ceil32(return_data.size)) + 644] = msg.sender
                                mem[(6 * ceil32(return_data.size)) + 676] = this.address
                                mem[(6 * ceil32(return_data.size)) + 708] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1, mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 19
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'transferFrom failed'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (13 * ceil32(return_data.size)) + 100
                                if arg1 <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 14
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'amount too low'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (13 * ceil32(return_data.size)) + 100
                                mem[(8 * ceil32(return_data.size)) + 644] = PID
                                mem[(8 * ceil32(return_data.size)) + 676] = arg1
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 644 len (13 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 27
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (13 * ceil32(return_data.size)) + 100
                                require totalSupply
                                if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 33
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                    mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (13 * ceil32(return_data.size)) + 132
                                if not totalSupply * totalDeposits:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 27
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (13 * ceil32(return_data.size)) + 100
                                if not arg1:
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (0 / totalDeposits) >= totalSupply:
                                        totalSupply += 0 / totalDeposits
                                        if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += 0 / totalDeposits
                                            mem[(8 * ceil32(return_data.size)) + 704] = 0 / totalDeposits
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 704] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                else:
                                    require arg1
                                    if arg1 * totalSupply / arg1 != totalSupply:
                                        mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 644] = 32
                                        mem[(8 * ceil32(return_data.size)) + 676] = 33
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                        mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 640
                                           len (13 * ceil32(return_data.size)) + 132
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                        totalSupply += arg1 * totalSupply / totalDeposits
                                        if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                            mem[(8 * ceil32(return_data.size)) + 704] = arg1 * totalSupply / totalDeposits
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 704] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 27
                                mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 704
                                   len (13 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 676] = 64
                            mem[(4 * ceil32(return_data.size)) + 708] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 576
                            t = (4 * ceil32(return_data.size)) + 740
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 740 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 640
                            require return_data.size >= 32
                            _907 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                            _949 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(6 * ceil32(return_data.size)) + 640] = _949
                            require _907 + (32 * _949) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _907 + 672
                            t = (6 * ceil32(return_data.size)) + 672
                            while idx < _949:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _949 - 1 < _949
                            _2804 = mem[(32 * _949 - 1) + (6 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2804
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 576
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2804, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3892 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3908 = mem[_3892]
                            require mem[_3892] <= test266151307()
                            require _3892 + mem[_3892] + 31 < _3892 + return_data.size
                            _3924 = mem[_3892 + mem[_3892]]
                            require mem[_3892 + mem[_3892]] <= test266151307()
                            require _3892 + ceil32(return_data.size) + (32 * mem[_3892 + mem[_3892]]) + 32 <= test266151307() and (32 * mem[_3892 + mem[_3892]]) + 32 >= 0
                            mem[64] = _3892 + ceil32(return_data.size) + (32 * mem[_3892 + mem[_3892]]) + 32
                            mem[_3892 + ceil32(return_data.size)] = _3924
                            require _3908 + (32 * _3924) + 32 <= return_data.size
                            idx = 0
                            s = _3892 + _3908 + 32
                            t = _3892 + ceil32(return_data.size) + 32
                            while idx < _3924:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[(4 * ceil32(return_data.size)) + 544] - 1 < mem[(4 * ceil32(return_data.size)) + 544]
                            _5025 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 544] - 1) + (4 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2804
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5025), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2804, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5313] == mem[_5313]
                            require mem[_5313 + 32] == mem[_5313 + 32]
                            require mem[_5313 + 64] == mem[_5313 + 64]
                            if mem[_5313 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5313 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5313 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5313 + 64]
                            emit Reinvest(totalDeposits, totalSupply);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = arg1
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5706 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5706] == bool(mem[_5706])
                            if not mem[_5706]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 580] = 64
                            mem[(4 * ceil32(return_data.size)) + 612] = 3
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 448
                            t = (4 * ceil32(return_data.size)) + 644
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 644 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _908 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                            _950 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                            mem[(6 * ceil32(return_data.size)) + 544] = _950
                            require _908 + (32 * _950) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _908 + 576
                            t = (6 * ceil32(return_data.size)) + 576
                            while idx < _950:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _950 - 1 < _950
                            _2806 = mem[(32 * _950 - 1) + (6 * ceil32(return_data.size)) + 576]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2806
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 3
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 448
                            t = mem[64] + 196
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2806, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3893 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3909 = mem[_3893]
                            require mem[_3893] <= test266151307()
                            require _3893 + mem[_3893] + 31 < _3893 + return_data.size
                            _3925 = mem[_3893 + mem[_3893]]
                            require mem[_3893 + mem[_3893]] <= test266151307()
                            require _3893 + ceil32(return_data.size) + (32 * mem[_3893 + mem[_3893]]) + 32 <= test266151307() and (32 * mem[_3893 + mem[_3893]]) + 32 >= 0
                            mem[64] = _3893 + ceil32(return_data.size) + (32 * mem[_3893 + mem[_3893]]) + 32
                            mem[_3893 + ceil32(return_data.size)] = _3925
                            require _3909 + (32 * _3925) + 32 <= return_data.size
                            idx = 0
                            s = _3893 + _3909 + 32
                            t = _3893 + ceil32(return_data.size) + 32
                            while idx < _3925:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _5008 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_5008 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_5008]
                            mem[_5008 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_5008]
                            mem[_5008 + 64] = stor11
                            require mem[_5008] - 1 < mem[_5008]
                            require 0 < mem[_5008]
                            if mem[_5008 + 44 len 20] == mem[(32 * mem[_5008] - 1) + _5008 + 44 len 20]:
                                require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require mem[_5008] - 1 < mem[_5008]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_5008] - 1) + _5008 + 44 len 20], _2806, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += ext_call.return_data[64]
                                emit Reinvest(totalDeposits, totalSupply);
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[_5008 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5008 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[_5008 + 132] = 64
                                mem[_5008 + 164] = mem[_5008]
                                idx = 0
                                s = _5008 + 32
                                t = _5008 + 196
                                while idx < mem[_5008]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _5008 + (32 * mem[_5008]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7012 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7060 = mem[_7012]
                                require mem[_7012] <= test266151307()
                                require _7012 + mem[_7012] + 31 < _7012 + return_data.size
                                _7124 = mem[_7012 + mem[_7012]]
                                require mem[_7012 + mem[_7012]] <= test266151307()
                                require _7012 + ceil32(return_data.size) + (32 * mem[_7012 + mem[_7012]]) + 32 <= test266151307() and (32 * mem[_7012 + mem[_7012]]) + 32 >= 0
                                mem[64] = _7012 + ceil32(return_data.size) + (32 * mem[_7012 + mem[_7012]]) + 32
                                mem[_7012 + ceil32(return_data.size)] = _7124
                                require _7060 + (32 * _7124) + 32 <= return_data.size
                                idx = 0
                                s = _7012 + _7060 + 32
                                t = _7012 + ceil32(return_data.size) + 32
                                while idx < _7124:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _7124 - 1 < _7124
                                _7699 = mem[(32 * _7124 - 1) + _7012 + ceil32(return_data.size) + 32]
                                _7700 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _7699
                                mem[mem[64] + 68] = 160
                                _7727 = mem[_5008]
                                mem[mem[64] + 164] = mem[_5008]
                                idx = 0
                                s = _5008 + 32
                                t = mem[64] + 196
                                while idx < _7727:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7700 + 100] = this.address
                                mem[_7700 + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7700 + (32 * _7727) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8073 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8081 = mem[_8073]
                                require mem[_8073] <= test266151307()
                                require _8073 + mem[_8073] + 31 < _8073 + return_data.size
                                _8089 = mem[_8073 + mem[_8073]]
                                require mem[_8073 + mem[_8073]] <= test266151307()
                                require _8073 + ceil32(return_data.size) + (32 * mem[_8073 + mem[_8073]]) + 32 <= test266151307() and (32 * mem[_8073 + mem[_8073]]) + 32 >= 0
                                mem[64] = _8073 + ceil32(return_data.size) + (32 * mem[_8073 + mem[_8073]]) + 32
                                mem[_8073 + ceil32(return_data.size)] = _8089
                                require _8081 + (32 * _8089) + 32 <= return_data.size
                                idx = 0
                                s = _8073 + _8081 + 32
                                t = _8073 + ceil32(return_data.size) + 32
                                while idx < _8089:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require mem[_5008] - 1 < mem[_5008]
                                _8499 = mem[(32 * mem[_5008] - 1) + _5008 + 32]
                                mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = _2806
                                mem[mem[64] + 100] = _7699
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8499), _2806, _7699, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8530 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8530] == mem[_8530]
                                require mem[_8530 + 32] == mem[_8530 + 32]
                                require mem[_8530 + 64] == mem[_8530 + 64]
                                if mem[_8530 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_8530 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8530 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8530 + 64]
                                emit Reinvest(totalDeposits, totalSupply);
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8654 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8654] == bool(mem[_8654])
                                if not mem[_8654]:
                                    revert with 0, 'transferFrom failed'
                if arg1 <= 0:
                    revert with 0, 'amount too low'
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args PID, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not totalSupply:
                    if totalSupply + arg1 < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1
                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg1
                    emit Transfer(arg1, 0, msg.sender);
                else:
                    require totalSupply
                    if totalSupply * totalDeposits / totalSupply != totalDeposits:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalSupply * totalDeposits:
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1
                        emit Transfer(arg1, 0, msg.sender);
                    else:
                        if not arg1:
                            if totalDeposits <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require totalDeposits
                            if totalSupply + (0 / totalDeposits) < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / totalDeposits
                            if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += 0 / totalDeposits
                            emit Transfer((0 / totalDeposits), 0, msg.sender);
                        else:
                            require arg1
                            if arg1 * totalSupply / arg1 != totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalDeposits <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require totalDeposits
                            if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1 * totalSupply / totalDeposits
                            if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                            emit Transfer((arg1 * totalSupply / totalDeposits), 0, msg.sender);
                if totalDeposits + arg1 < totalDeposits:
                    revert with 0, 'SafeMath: addition overflow'
                totalDeposits += arg1
                emit Deposit(arg1, msg.sender);
            else:
                require 2 * ext_call.return_data[0]
                if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 2 * ext_call.return_data[0] != ADMIN_FEE_BIPS:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 96] = 26
                mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 <= 0:
                    if not uint255(ext_call.return_data[0]):
                        mem[(2 * ceil32(return_data.size)) + 160] = 26
                        mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                        mem[(2 * ceil32(return_data.size)) + 224] = 31
                        mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                        if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[(2 * ceil32(return_data.size)) + 288] = 31
                        mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                        if 0 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[(2 * ceil32(return_data.size)) + 352] = 26
                        mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                        if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2 <= 0:
                            revert with 0, 'amount too low'
                        mem[(2 * ceil32(return_data.size)) + 416] = 3
                        mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 480] = stor11
                        mem[(2 * ceil32(return_data.size)) + 512] = stor10
                        if rewardTokenAddress == stor10:
                            mem[(2 * ceil32(return_data.size)) + 544] = 2
                            mem[(2 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                            mem[(2 * ceil32(return_data.size)) + 608] = stor11
                            if rewardTokenAddress == stor11:
                                mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 772] = 0
                                mem[(2 * ceil32(return_data.size)) + 804] = 0
                                mem[(2 * ceil32(return_data.size)) + 836] = this.address
                                mem[(2 * ceil32(return_data.size)) + 868] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                mem[(2 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 14
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'amount too low'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 644] = PID
                                mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 644 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 27
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (5 * ceil32(return_data.size)) + 100
                                totalDeposits += ext_call.return_data[64]
                                mem[(4 * ceil32(return_data.size)) + 640] = totalDeposits
                                mem[(4 * ceil32(return_data.size)) + 672] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(4 * ceil32(return_data.size)) + 640 len (5 * ceil32(return_data.size)) + 64],
                                mem[(4 * ceil32(return_data.size)) + 644] = msg.sender
                                mem[(4 * ceil32(return_data.size)) + 676] = this.address
                                mem[(4 * ceil32(return_data.size)) + 708] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 644 len (5 * ceil32(return_data.size)) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 19
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'transferFrom failed'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (7 * ceil32(return_data.size)) + 100
                                if arg1 <= 0:
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 14
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'amount too low'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 644] = PID
                                mem[(4 * ceil32(return_data.size)) + 676] = arg1
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 644 len (7 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 27
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (7 * ceil32(return_data.size)) + 100
                                require totalSupply
                                if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 33
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 740] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (7 * ceil32(return_data.size)) + 132
                                if not totalSupply * totalDeposits:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 644] = 32
                                    mem[(4 * ceil32(return_data.size)) + 676] = 27
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 640
                                       len (7 * ceil32(return_data.size)) + 100
                                if not arg1:
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (0 / totalDeposits) >= totalSupply:
                                        totalSupply += 0 / totalDeposits
                                        if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += 0 / totalDeposits
                                            mem[(4 * ceil32(return_data.size)) + 704] = 0 / totalDeposits
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 704] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                else:
                                    require arg1
                                    if arg1 * totalSupply / arg1 != totalSupply:
                                        mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 644] = 32
                                        mem[(4 * ceil32(return_data.size)) + 676] = 33
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                        mem[(4 * ceil32(return_data.size)) + 740] = 'w'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 640
                                           len (7 * ceil32(return_data.size)) + 132
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                        totalSupply += arg1 * totalSupply / totalDeposits
                                        if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                            mem[(4 * ceil32(return_data.size)) + 704] = arg1 * totalSupply / totalDeposits
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 704] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(4 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 708] = 32
                                mem[(4 * ceil32(return_data.size)) + 740] = 27
                                mem[(4 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 704
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(2 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 676] = 64
                            mem[(2 * ceil32(return_data.size)) + 708] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 576
                            t = (2 * ceil32(return_data.size)) + 740
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 740 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 640
                            require return_data.size >= 32
                            _889 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                            _940 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(4 * ceil32(return_data.size)) + 640] = _940
                            require _889 + (32 * _940) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _889 + 672
                            t = (4 * ceil32(return_data.size)) + 672
                            while idx < _940:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _940 - 1 < _940
                            _2788 = mem[(32 * _940 - 1) + (4 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2788
                            mem[mem[64] + 68] = 160
                            _2860 = mem[(2 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 544]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 576
                            t = mem[64] + 196
                            while idx < _2860:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2788, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2860) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3882 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3900 = mem[_3882]
                            require mem[_3882] <= test266151307()
                            require _3882 + mem[_3882] + 31 < _3882 + return_data.size
                            _3916 = mem[_3882 + mem[_3882]]
                            require mem[_3882 + mem[_3882]] <= test266151307()
                            require _3882 + ceil32(return_data.size) + (32 * mem[_3882 + mem[_3882]]) + 32 <= test266151307() and (32 * mem[_3882 + mem[_3882]]) + 32 >= 0
                            mem[64] = _3882 + ceil32(return_data.size) + (32 * mem[_3882 + mem[_3882]]) + 32
                            mem[_3882 + ceil32(return_data.size)] = _3916
                            require _3900 + (32 * _3916) + 32 <= return_data.size
                            idx = 0
                            s = _3882 + _3900 + 32
                            t = _3882 + ceil32(return_data.size) + 32
                            while idx < _3916:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[(2 * ceil32(return_data.size)) + 544] - 1 < mem[(2 * ceil32(return_data.size)) + 544]
                            _5017 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 544] - 1) + (2 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2788
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5017), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2788, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5309 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5309] == mem[_5309]
                            require mem[_5309 + 32] == mem[_5309 + 32]
                            require mem[_5309 + 64] == mem[_5309 + 64]
                            if mem[_5309 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5309 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5309 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5309 + 64]
                            emit Reinvest(totalDeposits, totalSupply);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = arg1
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5701 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5701] == bool(mem[_5701])
                            if not mem[_5701]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 580] = 64
                            mem[(2 * ceil32(return_data.size)) + 612] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 448
                            t = (2 * ceil32(return_data.size)) + 644
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 644 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _890 = mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
                            _941 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 576
                            mem[(4 * ceil32(return_data.size)) + 544] = _941
                            require _890 + (32 * _941) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _890 + 576
                            t = (4 * ceil32(return_data.size)) + 576
                            while idx < _941:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _941 - 1 < _941
                            _2790 = mem[(32 * _941 - 1) + (4 * ceil32(return_data.size)) + 576]
                            _2791 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2790
                            mem[mem[64] + 68] = 160
                            _2861 = mem[(2 * ceil32(return_data.size)) + 416]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 448
                            t = mem[64] + 196
                            while idx < _2861:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_2791 + 100] = this.address
                            mem[_2791 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2791 + (32 * _2861) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3883 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3901 = mem[_3883]
                            require mem[_3883] <= test266151307()
                            require _3883 + mem[_3883] + 31 < _3883 + return_data.size
                            _3917 = mem[_3883 + mem[_3883]]
                            require mem[_3883 + mem[_3883]] <= test266151307()
                            require _3883 + ceil32(return_data.size) + (32 * mem[_3883 + mem[_3883]]) + 32 <= test266151307() and (32 * mem[_3883 + mem[_3883]]) + 32 >= 0
                            mem[64] = _3883 + ceil32(return_data.size) + (32 * mem[_3883 + mem[_3883]]) + 32
                            mem[_3883 + ceil32(return_data.size)] = _3917
                            require _3901 + (32 * _3917) + 32 <= return_data.size
                            idx = 0
                            s = _3883 + _3901 + 32
                            t = _3883 + ceil32(return_data.size) + 32
                            while idx < _3917:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _4992 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_4992 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_4992]
                            mem[_4992 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_4992]
                            mem[_4992 + 64] = stor11
                            require mem[_4992] - 1 < mem[_4992]
                            require 0 < mem[_4992]
                            if mem[_4992 + 44 len 20] == mem[(32 * mem[_4992] - 1) + _4992 + 44 len 20]:
                                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require mem[_4992] - 1 < mem[_4992]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_4992] - 1) + _4992 + 44 len 20], _2790, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += ext_call.return_data[64]
                                emit Reinvest(totalDeposits, totalSupply);
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[_4992 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_4992 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[_4992 + 132] = 64
                                mem[_4992 + 164] = mem[_4992]
                                idx = 0
                                s = _4992 + 32
                                t = _4992 + 196
                                while idx < mem[_4992]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _4992 + (32 * mem[_4992]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7000 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7039 = mem[_7000]
                                require mem[_7000] <= test266151307()
                                require _7000 + mem[_7000] + 31 < _7000 + return_data.size
                                _7114 = mem[_7000 + mem[_7000]]
                                require mem[_7000 + mem[_7000]] <= test266151307()
                                require _7000 + ceil32(return_data.size) + (32 * mem[_7000 + mem[_7000]]) + 32 <= test266151307() and (32 * mem[_7000 + mem[_7000]]) + 32 >= 0
                                mem[64] = _7000 + ceil32(return_data.size) + (32 * mem[_7000 + mem[_7000]]) + 32
                                mem[_7000 + ceil32(return_data.size)] = _7114
                                require _7039 + (32 * _7114) + 32 <= return_data.size
                                idx = 0
                                s = _7000 + _7039 + 32
                                t = _7000 + ceil32(return_data.size) + 32
                                while idx < _7114:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _7114 - 1 < _7114
                                _7690 = mem[(32 * _7114 - 1) + _7000 + ceil32(return_data.size) + 32]
                                _7691 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _7690
                                mem[mem[64] + 68] = 160
                                _7723 = mem[_4992]
                                mem[mem[64] + 164] = mem[_4992]
                                idx = 0
                                s = _4992 + 32
                                t = mem[64] + 196
                                while idx < _7723:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7691 + 100] = this.address
                                mem[_7691 + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7691 + (32 * _7723) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8068 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8077 = mem[_8068]
                                require mem[_8068] <= test266151307()
                                require _8068 + mem[_8068] + 31 < _8068 + return_data.size
                                _8085 = mem[_8068 + mem[_8068]]
                                require mem[_8068 + mem[_8068]] <= test266151307()
                                require _8068 + ceil32(return_data.size) + (32 * mem[_8068 + mem[_8068]]) + 32 <= test266151307() and (32 * mem[_8068 + mem[_8068]]) + 32 >= 0
                                mem[64] = _8068 + ceil32(return_data.size) + (32 * mem[_8068 + mem[_8068]]) + 32
                                mem[_8068 + ceil32(return_data.size)] = _8085
                                require _8077 + (32 * _8085) + 32 <= return_data.size
                                idx = 0
                                s = _8068 + _8077 + 32
                                t = _8068 + ceil32(return_data.size) + 32
                                while idx < _8085:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require mem[_4992] - 1 < mem[_4992]
                                _8491 = mem[(32 * mem[_4992] - 1) + _4992 + 32]
                                mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = _2790
                                mem[mem[64] + 100] = _7690
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8491), _2790, _7690, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8526 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8526] == mem[_8526]
                                require mem[_8526 + 32] == mem[_8526 + 32]
                                require mem[_8526 + 64] == mem[_8526 + 64]
                                if mem[_8526 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_8526 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8526 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8526 + 64]
                                emit Reinvest(totalDeposits, totalSupply);
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8650 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8650] == bool(mem[_8650])
                                if not mem[_8650]:
                                    revert with 0, 'transferFrom failed'
                    else:
                        require 2 * ext_call.return_data[0]
                        if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 2 * ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 160] = 26
                        mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                        if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 <= 0:
                            mem[(2 * ceil32(return_data.size)) + 224] = 31
                            mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                            if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(2 * ceil32(return_data.size)) + 288] = 31
                            mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                            if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(2 * ceil32(return_data.size)) + 352] = 26
                            mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2 <= 0:
                                revert with 0, 'amount too low'
                            mem[(2 * ceil32(return_data.size)) + 416] = 3
                            mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                            mem[(2 * ceil32(return_data.size)) + 480] = stor11
                            mem[(2 * ceil32(return_data.size)) + 512] = stor10
                            if rewardTokenAddress == stor10:
                                mem[(2 * ceil32(return_data.size)) + 544] = 2
                                mem[(2 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                                mem[(2 * ceil32(return_data.size)) + 608] = stor11
                                if rewardTokenAddress == stor11:
                                    mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(2 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(2 * ceil32(return_data.size)) + 772] = 0
                                    mem[(2 * ceil32(return_data.size)) + 804] = 0
                                    mem[(2 * ceil32(return_data.size)) + 836] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 868] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                    mem[(2 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 644] = 32
                                        mem[(4 * ceil32(return_data.size)) + 676] = 14
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'amount too low'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 640
                                           len (5 * ceil32(return_data.size)) + 100
                                    mem[(4 * ceil32(return_data.size)) + 644] = PID
                                    mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 644 len (5 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                        mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 644] = 32
                                        mem[(4 * ceil32(return_data.size)) + 676] = 27
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 640
                                           len (5 * ceil32(return_data.size)) + 100
                                    totalDeposits += ext_call.return_data[64]
                                    mem[(4 * ceil32(return_data.size)) + 640] = totalDeposits
                                    mem[(4 * ceil32(return_data.size)) + 672] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(4 * ceil32(return_data.size)) + 640 len (5 * ceil32(return_data.size)) + 64],
                                    mem[(4 * ceil32(return_data.size)) + 644] = msg.sender
                                    mem[(4 * ceil32(return_data.size)) + 676] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 708] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 644 len (5 * ceil32(return_data.size)) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 644] = 32
                                        mem[(4 * ceil32(return_data.size)) + 676] = 19
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'transferFrom failed'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 640
                                           len (7 * ceil32(return_data.size)) + 100
                                    if arg1 <= 0:
                                        mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 644] = 32
                                        mem[(4 * ceil32(return_data.size)) + 676] = 14
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'amount too low'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 640
                                           len (7 * ceil32(return_data.size)) + 100
                                    mem[(4 * ceil32(return_data.size)) + 644] = PID
                                    mem[(4 * ceil32(return_data.size)) + 676] = arg1
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 644 len (7 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalSupply:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                                emit Transfer(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                                    emit Deposit(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 644] = 32
                                        mem[(4 * ceil32(return_data.size)) + 676] = 27
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 640
                                           len (7 * ceil32(return_data.size)) + 100
                                    require totalSupply
                                    if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                        mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 644] = 32
                                        mem[(4 * ceil32(return_data.size)) + 676] = 33
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                        mem[(4 * ceil32(return_data.size)) + 740] = 'w'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 640
                                           len (7 * ceil32(return_data.size)) + 132
                                    if not totalSupply * totalDeposits:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                                emit Transfer(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(4 * ceil32(return_data.size)) + 640] = arg1
                                                    emit Deposit(mem[(4 * ceil32(return_data.size)) + 640 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 644] = 32
                                        mem[(4 * ceil32(return_data.size)) + 676] = 27
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 640
                                           len (7 * ceil32(return_data.size)) + 100
                                    if not arg1:
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (0 / totalDeposits) >= totalSupply:
                                            totalSupply += 0 / totalDeposits
                                            if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += 0 / totalDeposits
                                                mem[(4 * ceil32(return_data.size)) + 704] = 0 / totalDeposits
                                                emit Transfer(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(4 * ceil32(return_data.size)) + 704] = arg1
                                                    emit Deposit(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                    else:
                                        require arg1
                                        if arg1 * totalSupply / arg1 != totalSupply:
                                            mem[(4 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 644] = 32
                                            mem[(4 * ceil32(return_data.size)) + 676] = 33
                                            mem[(4 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                            mem[(4 * ceil32(return_data.size)) + 740] = 'w'
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + 640
                                               len (7 * ceil32(return_data.size)) + 132
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                            totalSupply += arg1 * totalSupply / totalDeposits
                                            if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                                mem[(4 * ceil32(return_data.size)) + 704] = arg1 * totalSupply / totalDeposits
                                                emit Transfer(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(4 * ceil32(return_data.size)) + 704] = arg1
                                                    emit Deposit(mem[(4 * ceil32(return_data.size)) + 704 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 708] = 32
                                    mem[(4 * ceil32(return_data.size)) + 740] = 27
                                    mem[(4 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 704
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(2 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 676] = 64
                                mem[(2 * ceil32(return_data.size)) + 708] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 576
                                t = (2 * ceil32(return_data.size)) + 740
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 740 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 640
                                require return_data.size >= 32
                                _881 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                                _936 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                                mem[(4 * ceil32(return_data.size)) + 640] = _936
                                require _881 + (32 * _936) + 32 <= return_data.size
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + _881 + 672
                                t = (4 * ceil32(return_data.size)) + 672
                                while idx < _936:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _936 - 1 < _936
                                _2780 = mem[(32 * _936 - 1) + (4 * ceil32(return_data.size)) + 672]
                                _2781 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2780
                                mem[mem[64] + 68] = 160
                                _2856 = mem[(2 * ceil32(return_data.size)) + 544]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 544]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 576
                                t = mem[64] + 196
                                while idx < _2856:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_2781 + 100] = this.address
                                mem[_2781 + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2781 + (32 * _2856) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3878 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3896 = mem[_3878]
                                require mem[_3878] <= test266151307()
                                require _3878 + mem[_3878] + 31 < _3878 + return_data.size
                                _3912 = mem[_3878 + mem[_3878]]
                                require mem[_3878 + mem[_3878]] <= test266151307()
                                require _3878 + ceil32(return_data.size) + (32 * mem[_3878 + mem[_3878]]) + 32 <= test266151307() and (32 * mem[_3878 + mem[_3878]]) + 32 >= 0
                                mem[64] = _3878 + ceil32(return_data.size) + (32 * mem[_3878 + mem[_3878]]) + 32
                                mem[_3878 + ceil32(return_data.size)] = _3912
                                require _3896 + (32 * _3912) + 32 <= return_data.size
                                idx = 0
                                s = _3878 + _3896 + 32
                                t = _3878 + ceil32(return_data.size) + 32
                                while idx < _3912:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require mem[(2 * ceil32(return_data.size)) + 544] - 1 < mem[(2 * ceil32(return_data.size)) + 544]
                                _5013 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 544] - 1) + (2 * ceil32(return_data.size)) + 576]
                                mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 100] = _2780
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_5013), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2780, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5307 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5307] == mem[_5307]
                                require mem[_5307 + 32] == mem[_5307 + 32]
                                require mem[_5307 + 64] == mem[_5307 + 64]
                                if mem[_5307 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_5307 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5307 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5307 + 64]
                                emit Reinvest(totalDeposits, totalSupply);
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5699 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5699] == bool(mem[_5699])
                                if not mem[_5699]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[(2 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 580] = 64
                                mem[(2 * ceil32(return_data.size)) + 612] = 3
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 448
                                t = (2 * ceil32(return_data.size)) + 644
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 644 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 544
                                require return_data.size >= 32
                                _882 = mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
                                _937 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                                mem[(4 * ceil32(return_data.size)) + 544] = _937
                                require _882 + (32 * _937) + 32 <= return_data.size
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + _882 + 576
                                t = (4 * ceil32(return_data.size)) + 576
                                while idx < _937:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _937 - 1 < _937
                                _2782 = mem[(32 * _937 - 1) + (4 * ceil32(return_data.size)) + 576]
                                _2783 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2782
                                mem[mem[64] + 68] = 160
                                _2857 = mem[(2 * ceil32(return_data.size)) + 416]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 448
                                t = mem[64] + 196
                                while idx < _2857:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_2783 + 100] = this.address
                                mem[_2783 + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2783 + (32 * _2857) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3879 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3897 = mem[_3879]
                                require mem[_3879] <= test266151307()
                                require _3879 + mem[_3879] + 31 < _3879 + return_data.size
                                _3913 = mem[_3879 + mem[_3879]]
                                require mem[_3879 + mem[_3879]] <= test266151307()
                                require _3879 + ceil32(return_data.size) + (32 * mem[_3879 + mem[_3879]]) + 32 <= test266151307() and (32 * mem[_3879 + mem[_3879]]) + 32 >= 0
                                mem[64] = _3879 + ceil32(return_data.size) + (32 * mem[_3879 + mem[_3879]]) + 32
                                mem[_3879 + ceil32(return_data.size)] = _3913
                                require _3897 + (32 * _3913) + 32 <= return_data.size
                                idx = 0
                                s = _3879 + _3897 + 32
                                t = _3879 + ceil32(return_data.size) + 32
                                while idx < _3913:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _4984 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_4984 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_4984]
                                mem[_4984 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_4984]
                                mem[_4984 + 64] = stor11
                                require mem[_4984] - 1 < mem[_4984]
                                require 0 < mem[_4984]
                                if mem[_4984 + 44 len 20] == mem[(32 * mem[_4984] - 1) + _4984 + 44 len 20]:
                                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                    require mem[_4984] - 1 < mem[_4984]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_4984] - 1) + _4984 + 44 len 20], _2782, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += ext_call.return_data[64]
                                    emit Reinvest(totalDeposits, totalSupply);
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'transferFrom failed'
                                else:
                                    mem[_4984 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_4984 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[_4984 + 132] = 64
                                    mem[_4984 + 164] = mem[_4984]
                                    idx = 0
                                    s = _4984 + 32
                                    t = _4984 + 196
                                    while idx < mem[_4984]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4984 + (32 * mem[_4984]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6996 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7029 = mem[_6996]
                                    require mem[_6996] <= test266151307()
                                    require _6996 + mem[_6996] + 31 < _6996 + return_data.size
                                    _7110 = mem[_6996 + mem[_6996]]
                                    require mem[_6996 + mem[_6996]] <= test266151307()
                                    require _6996 + ceil32(return_data.size) + (32 * mem[_6996 + mem[_6996]]) + 32 <= test266151307() and (32 * mem[_6996 + mem[_6996]]) + 32 >= 0
                                    mem[64] = _6996 + ceil32(return_data.size) + (32 * mem[_6996 + mem[_6996]]) + 32
                                    mem[_6996 + ceil32(return_data.size)] = _7110
                                    require _7029 + (32 * _7110) + 32 <= return_data.size
                                    idx = 0
                                    s = _6996 + _7029 + 32
                                    t = _6996 + ceil32(return_data.size) + 32
                                    while idx < _7110:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7110 - 1 < _7110
                                    _7686 = mem[(32 * _7110 - 1) + _6996 + ceil32(return_data.size) + 32]
                                    _7687 = mem[64]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _7686
                                    mem[mem[64] + 68] = 160
                                    _7721 = mem[_4984]
                                    mem[mem[64] + 164] = mem[_4984]
                                    idx = 0
                                    s = _4984 + 32
                                    t = mem[64] + 196
                                    while idx < _7721:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_7687 + 100] = this.address
                                    mem[_7687 + 132] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7687 + (32 * _7721) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8066 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8075 = mem[_8066]
                                    require mem[_8066] <= test266151307()
                                    require _8066 + mem[_8066] + 31 < _8066 + return_data.size
                                    _8083 = mem[_8066 + mem[_8066]]
                                    require mem[_8066 + mem[_8066]] <= test266151307()
                                    require _8066 + ceil32(return_data.size) + (32 * mem[_8066 + mem[_8066]]) + 32 <= test266151307() and (32 * mem[_8066 + mem[_8066]]) + 32 >= 0
                                    mem[64] = _8066 + ceil32(return_data.size) + (32 * mem[_8066 + mem[_8066]]) + 32
                                    mem[_8066 + ceil32(return_data.size)] = _8083
                                    require _8075 + (32 * _8083) + 32 <= return_data.size
                                    idx = 0
                                    s = _8066 + _8075 + 32
                                    t = _8066 + ceil32(return_data.size) + 32
                                    while idx < _8083:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                    require mem[_4984] - 1 < mem[_4984]
                                    _8487 = mem[(32 * mem[_4984] - 1) + _4984 + 32]
                                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                                    mem[mem[64] + 68] = _2782
                                    mem[mem[64] + 100] = _7686
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8487), _2782, _7686, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8524 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8524] == mem[_8524]
                                    require mem[_8524 + 32] == mem[_8524 + 32]
                                    require mem[_8524 + 64] == mem[_8524 + 64]
                                    if mem[_8524 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_8524 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8524 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8524 + 64]
                                    emit Reinvest(totalDeposits, totalSupply);
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8648 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8648] == bool(mem[_8648])
                                    if not mem[_8648]:
                                        revert with 0, 'transferFrom failed'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 260] = (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'reinvest fee transfer failed'
                            mem[(4 * ceil32(return_data.size)) + 224] = 31
                            mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                            if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 31
                            mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                            if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(4 * ceil32(return_data.size)) + 352] = 26
                            mem[(4 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2 <= 0:
                                revert with 0, 'amount too low'
                            mem[(4 * ceil32(return_data.size)) + 416] = 3
                            mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                            mem[(4 * ceil32(return_data.size)) + 480] = stor11
                            mem[(4 * ceil32(return_data.size)) + 512] = stor10
                            if rewardTokenAddress == stor10:
                                mem[(4 * ceil32(return_data.size)) + 544] = 2
                                mem[(4 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                                mem[(4 * ceil32(return_data.size)) + 608] = stor11
                                if rewardTokenAddress == stor11:
                                    mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(4 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                                    mem[(4 * ceil32(return_data.size)) + 804] = 0
                                    mem[(4 * ceil32(return_data.size)) + 836] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                    mem[(4 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                    mem[(6 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                    totalDeposits += ext_call.return_data[64]
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  totalDeposits,
                                                  totalSupply,
                                                  mem[(6 * ceil32(return_data.size)) + 704 len 9 * ceil32(return_data.size)],
                                    mem[(6 * ceil32(return_data.size)) + 644] = msg.sender
                                    mem[(6 * ceil32(return_data.size)) + 676] = this.address
                                    mem[(6 * ceil32(return_data.size)) + 708] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1, mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                    mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 644] = 32
                                        mem[(8 * ceil32(return_data.size)) + 676] = 19
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'transferFrom failed'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 640
                                           len (13 * ceil32(return_data.size)) + 100
                                    if arg1 <= 0:
                                        mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 644] = 32
                                        mem[(8 * ceil32(return_data.size)) + 676] = 14
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'amount too low'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 640
                                           len (13 * ceil32(return_data.size)) + 100
                                    mem[(8 * ceil32(return_data.size)) + 644] = PID
                                    mem[(8 * ceil32(return_data.size)) + 676] = arg1
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 644 len (13 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalSupply:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 644] = 32
                                        mem[(8 * ceil32(return_data.size)) + 676] = 27
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 640
                                           len (13 * ceil32(return_data.size)) + 100
                                    require totalSupply
                                    if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                        mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 644] = 32
                                        mem[(8 * ceil32(return_data.size)) + 676] = 33
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                        mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 640
                                           len (13 * ceil32(return_data.size)) + 132
                                    if not totalSupply * totalDeposits:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 644] = 32
                                        mem[(8 * ceil32(return_data.size)) + 676] = 27
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 640
                                           len (13 * ceil32(return_data.size)) + 100
                                    if not arg1:
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (0 / totalDeposits) >= totalSupply:
                                            totalSupply += 0 / totalDeposits
                                            if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += 0 / totalDeposits
                                                mem[(8 * ceil32(return_data.size)) + 704] = 0 / totalDeposits
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 704] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    else:
                                        require arg1
                                        if arg1 * totalSupply / arg1 != totalSupply:
                                            mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(8 * ceil32(return_data.size)) + 644] = 32
                                            mem[(8 * ceil32(return_data.size)) + 676] = 33
                                            mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                            mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                            revert with memory
                                              from (8 * ceil32(return_data.size)) + 640
                                               len (13 * ceil32(return_data.size)) + 132
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                            totalSupply += arg1 * totalSupply / totalDeposits
                                            if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                                mem[(8 * ceil32(return_data.size)) + 704] = arg1 * totalSupply / totalDeposits
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 704] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 27
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 704
                                       len (13 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 676] = 64
                                mem[(4 * ceil32(return_data.size)) + 708] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 576
                                t = (4 * ceil32(return_data.size)) + 740
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 740 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 640
                                require return_data.size >= 32
                                _885 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                                _938 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                                mem[(6 * ceil32(return_data.size)) + 640] = _938
                                require _885 + (32 * _938) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _885 + 672
                                t = (6 * ceil32(return_data.size)) + 672
                                while idx < _938:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _938 - 1 < _938
                                _2784 = mem[(32 * _938 - 1) + (6 * ceil32(return_data.size)) + 672]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2784
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 576
                                t = mem[64] + 196
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2784, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3880 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3898 = mem[_3880]
                                require mem[_3880] <= test266151307()
                                require _3880 + mem[_3880] + 31 < _3880 + return_data.size
                                _3914 = mem[_3880 + mem[_3880]]
                                require mem[_3880 + mem[_3880]] <= test266151307()
                                require _3880 + ceil32(return_data.size) + (32 * mem[_3880 + mem[_3880]]) + 32 <= test266151307() and (32 * mem[_3880 + mem[_3880]]) + 32 >= 0
                                mem[64] = _3880 + ceil32(return_data.size) + (32 * mem[_3880 + mem[_3880]]) + 32
                                mem[_3880 + ceil32(return_data.size)] = _3914
                                require _3898 + (32 * _3914) + 32 <= return_data.size
                                idx = 0
                                s = _3880 + _3898 + 32
                                t = _3880 + ceil32(return_data.size) + 32
                                while idx < _3914:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require mem[(4 * ceil32(return_data.size)) + 544] - 1 < mem[(4 * ceil32(return_data.size)) + 544]
                                _5015 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 544] - 1) + (4 * ceil32(return_data.size)) + 576]
                                mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 100] = _2784
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_5015), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2784, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5308 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5308] == mem[_5308]
                                require mem[_5308 + 32] == mem[_5308 + 32]
                                require mem[_5308 + 64] == mem[_5308 + 64]
                                if mem[_5308 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_5308 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5308 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5308 + 64]
                                emit Reinvest(totalDeposits, totalSupply);
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5700 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5700] == bool(mem[_5700])
                                if not mem[_5700]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 580] = 64
                                mem[(4 * ceil32(return_data.size)) + 612] = 3
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 448
                                t = (4 * ceil32(return_data.size)) + 644
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 644 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 544
                                require return_data.size >= 32
                                _886 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                                _939 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                                mem[(6 * ceil32(return_data.size)) + 544] = _939
                                require _886 + (32 * _939) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _886 + 576
                                t = (6 * ceil32(return_data.size)) + 576
                                while idx < _939:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _939 - 1 < _939
                                _2786 = mem[(32 * _939 - 1) + (6 * ceil32(return_data.size)) + 576]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2786
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 3
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 448
                                t = mem[64] + 196
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2786, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3881 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3899 = mem[_3881]
                                require mem[_3881] <= test266151307()
                                require _3881 + mem[_3881] + 31 < _3881 + return_data.size
                                _3915 = mem[_3881 + mem[_3881]]
                                require mem[_3881 + mem[_3881]] <= test266151307()
                                require _3881 + ceil32(return_data.size) + (32 * mem[_3881 + mem[_3881]]) + 32 <= test266151307() and (32 * mem[_3881 + mem[_3881]]) + 32 >= 0
                                mem[64] = _3881 + ceil32(return_data.size) + (32 * mem[_3881 + mem[_3881]]) + 32
                                mem[_3881 + ceil32(return_data.size)] = _3915
                                require _3899 + (32 * _3915) + 32 <= return_data.size
                                idx = 0
                                s = _3881 + _3899 + 32
                                t = _3881 + ceil32(return_data.size) + 32
                                while idx < _3915:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _4988 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_4988 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_4988]
                                mem[_4988 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_4988]
                                mem[_4988 + 64] = stor11
                                require mem[_4988] - 1 < mem[_4988]
                                require 0 < mem[_4988]
                                if mem[_4988 + 44 len 20] == mem[(32 * mem[_4988] - 1) + _4988 + 44 len 20]:
                                    require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require mem[_4988] - 1 < mem[_4988]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_4988] - 1) + _4988 + 44 len 20], _2786, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += ext_call.return_data[64]
                                    emit Reinvest(totalDeposits, totalSupply);
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'transferFrom failed'
                                else:
                                    mem[_4988 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_4988 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[_4988 + 132] = 64
                                    mem[_4988 + 164] = mem[_4988]
                                    idx = 0
                                    s = _4988 + 32
                                    t = _4988 + 196
                                    while idx < mem[_4988]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4988 + (32 * mem[_4988]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6998 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7034 = mem[_6998]
                                    require mem[_6998] <= test266151307()
                                    require _6998 + mem[_6998] + 31 < _6998 + return_data.size
                                    _7112 = mem[_6998 + mem[_6998]]
                                    require mem[_6998 + mem[_6998]] <= test266151307()
                                    require _6998 + ceil32(return_data.size) + (32 * mem[_6998 + mem[_6998]]) + 32 <= test266151307() and (32 * mem[_6998 + mem[_6998]]) + 32 >= 0
                                    mem[64] = _6998 + ceil32(return_data.size) + (32 * mem[_6998 + mem[_6998]]) + 32
                                    mem[_6998 + ceil32(return_data.size)] = _7112
                                    require _7034 + (32 * _7112) + 32 <= return_data.size
                                    idx = 0
                                    s = _6998 + _7034 + 32
                                    t = _6998 + ceil32(return_data.size) + 32
                                    while idx < _7112:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7112 - 1 < _7112
                                    _7688 = mem[(32 * _7112 - 1) + _6998 + ceil32(return_data.size) + 32]
                                    _7689 = mem[64]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _7688
                                    mem[mem[64] + 68] = 160
                                    _7722 = mem[_4988]
                                    mem[mem[64] + 164] = mem[_4988]
                                    idx = 0
                                    s = _4988 + 32
                                    t = mem[64] + 196
                                    while idx < _7722:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_7689 + 100] = this.address
                                    mem[_7689 + 132] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7689 + (32 * _7722) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8067 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8076 = mem[_8067]
                                    require mem[_8067] <= test266151307()
                                    require _8067 + mem[_8067] + 31 < _8067 + return_data.size
                                    _8084 = mem[_8067 + mem[_8067]]
                                    require mem[_8067 + mem[_8067]] <= test266151307()
                                    require _8067 + ceil32(return_data.size) + (32 * mem[_8067 + mem[_8067]]) + 32 <= test266151307() and (32 * mem[_8067 + mem[_8067]]) + 32 >= 0
                                    mem[64] = _8067 + ceil32(return_data.size) + (32 * mem[_8067 + mem[_8067]]) + 32
                                    mem[_8067 + ceil32(return_data.size)] = _8084
                                    require _8076 + (32 * _8084) + 32 <= return_data.size
                                    idx = 0
                                    s = _8067 + _8076 + 32
                                    t = _8067 + ceil32(return_data.size) + 32
                                    while idx < _8084:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require mem[_4988] - 1 < mem[_4988]
                                    _8489 = mem[(32 * mem[_4988] - 1) + _4988 + 32]
                                    mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                                    mem[mem[64] + 68] = _2786
                                    mem[mem[64] + 100] = _7688
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8489), _2786, _7688, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8525 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8525] == mem[_8525]
                                    require mem[_8525 + 32] == mem[_8525 + 32]
                                    require mem[_8525 + 64] == mem[_8525 + 64]
                                    if mem[_8525 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_8525 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8525 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8525 + 64]
                                    emit Reinvest(totalDeposits, totalSupply);
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8649 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8649] == bool(mem[_8649])
                                    if not mem[_8649]:
                                        revert with 0, 'transferFrom failed'
                    if arg1 <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        if totalSupply + arg1 < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += arg1
                        emit Transfer(arg1, 0, msg.sender);
                    else:
                        require totalSupply
                        if totalSupply * totalDeposits / totalSupply != totalDeposits:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not totalSupply * totalDeposits:
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            emit Transfer(arg1, 0, msg.sender);
                        else:
                            if not arg1:
                                if totalDeposits <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require totalDeposits
                                if totalSupply + (0 / totalDeposits) < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += 0 / totalDeposits
                                if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += 0 / totalDeposits
                                emit Transfer((0 / totalDeposits), 0, msg.sender);
                            else:
                                require arg1
                                if arg1 * totalSupply / arg1 != totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalDeposits <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require totalDeposits
                                if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1 * totalSupply / totalDeposits
                                if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                emit Transfer((arg1 * totalSupply / totalDeposits), 0, msg.sender);
                    if totalDeposits + arg1 < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += arg1
                    emit Deposit(arg1, msg.sender);
                else:
                    mem[(2 * ceil32(return_data.size)) + 164] = owner
                    mem[(2 * ceil32(return_data.size)) + 196] = (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000
                    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'admin fee transfer failed'
                    if not uint255(ext_call.return_data[0]):
                        mem[(4 * ceil32(return_data.size)) + 160] = 26
                        mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                        mem[(4 * ceil32(return_data.size)) + 224] = 31
                        mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                        if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[(4 * ceil32(return_data.size)) + 288] = 31
                        mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                        if 0 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[(4 * ceil32(return_data.size)) + 352] = 26
                        mem[(4 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                        if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2 <= 0:
                            revert with 0, 'amount too low'
                        mem[(4 * ceil32(return_data.size)) + 416] = 3
                        mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 480] = stor11
                        mem[(4 * ceil32(return_data.size)) + 512] = stor10
                        if rewardTokenAddress == stor10:
                            mem[(4 * ceil32(return_data.size)) + 544] = 2
                            mem[(4 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                            mem[(4 * ceil32(return_data.size)) + 608] = stor11
                            if rewardTokenAddress == stor11:
                                mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 772] = 0
                                mem[(4 * ceil32(return_data.size)) + 804] = 0
                                mem[(4 * ceil32(return_data.size)) + 836] = this.address
                                mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                mem[(4 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                mem[(6 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                totalDeposits += ext_call.return_data[64]
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              totalDeposits,
                                              totalSupply,
                                              mem[(6 * ceil32(return_data.size)) + 704 len 9 * ceil32(return_data.size)],
                                mem[(6 * ceil32(return_data.size)) + 644] = msg.sender
                                mem[(6 * ceil32(return_data.size)) + 676] = this.address
                                mem[(6 * ceil32(return_data.size)) + 708] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1, mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 19
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'transferFrom failed'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (13 * ceil32(return_data.size)) + 100
                                if arg1 <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 14
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'amount too low'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (13 * ceil32(return_data.size)) + 100
                                mem[(8 * ceil32(return_data.size)) + 644] = PID
                                mem[(8 * ceil32(return_data.size)) + 676] = arg1
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 644 len (13 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 27
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (13 * ceil32(return_data.size)) + 100
                                require totalSupply
                                if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 33
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                    mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (13 * ceil32(return_data.size)) + 132
                                if not totalSupply * totalDeposits:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 27
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (13 * ceil32(return_data.size)) + 100
                                if not arg1:
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (0 / totalDeposits) >= totalSupply:
                                        totalSupply += 0 / totalDeposits
                                        if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += 0 / totalDeposits
                                            mem[(8 * ceil32(return_data.size)) + 704] = 0 / totalDeposits
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 704] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                else:
                                    require arg1
                                    if arg1 * totalSupply / arg1 != totalSupply:
                                        mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 644] = 32
                                        mem[(8 * ceil32(return_data.size)) + 676] = 33
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                        mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 640
                                           len (13 * ceil32(return_data.size)) + 132
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                        totalSupply += arg1 * totalSupply / totalDeposits
                                        if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                            mem[(8 * ceil32(return_data.size)) + 704] = arg1 * totalSupply / totalDeposits
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 704] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 27
                                mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 704
                                   len (13 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 676] = 64
                            mem[(4 * ceil32(return_data.size)) + 708] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 576
                            t = (4 * ceil32(return_data.size)) + 740
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 740 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 640
                            require return_data.size >= 32
                            _899 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                            _945 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(6 * ceil32(return_data.size)) + 640] = _945
                            require _899 + (32 * _945) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _899 + 672
                            t = (6 * ceil32(return_data.size)) + 672
                            while idx < _945:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _945 - 1 < _945
                            _2796 = mem[(32 * _945 - 1) + (6 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2796
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 576
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2796, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3888 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3904 = mem[_3888]
                            require mem[_3888] <= test266151307()
                            require _3888 + mem[_3888] + 31 < _3888 + return_data.size
                            _3920 = mem[_3888 + mem[_3888]]
                            require mem[_3888 + mem[_3888]] <= test266151307()
                            require _3888 + ceil32(return_data.size) + (32 * mem[_3888 + mem[_3888]]) + 32 <= test266151307() and (32 * mem[_3888 + mem[_3888]]) + 32 >= 0
                            mem[64] = _3888 + ceil32(return_data.size) + (32 * mem[_3888 + mem[_3888]]) + 32
                            mem[_3888 + ceil32(return_data.size)] = _3920
                            require _3904 + (32 * _3920) + 32 <= return_data.size
                            idx = 0
                            s = _3888 + _3904 + 32
                            t = _3888 + ceil32(return_data.size) + 32
                            while idx < _3920:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[(4 * ceil32(return_data.size)) + 544] - 1 < mem[(4 * ceil32(return_data.size)) + 544]
                            _5021 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 544] - 1) + (4 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2796
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5021), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2796, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5311] == mem[_5311]
                            require mem[_5311 + 32] == mem[_5311 + 32]
                            require mem[_5311 + 64] == mem[_5311 + 64]
                            if mem[_5311 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5311 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5311 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5311 + 64]
                            emit Reinvest(totalDeposits, totalSupply);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = arg1
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5704 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5704] == bool(mem[_5704])
                            if not mem[_5704]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 580] = 64
                            mem[(4 * ceil32(return_data.size)) + 612] = 3
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 448
                            t = (4 * ceil32(return_data.size)) + 644
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 644 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 544
                            require return_data.size >= 32
                            _900 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                            _946 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 576
                            mem[(6 * ceil32(return_data.size)) + 544] = _946
                            require _900 + (32 * _946) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _900 + 576
                            t = (6 * ceil32(return_data.size)) + 576
                            while idx < _946:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _946 - 1 < _946
                            _2798 = mem[(32 * _946 - 1) + (6 * ceil32(return_data.size)) + 576]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2798
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 3
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 448
                            t = mem[64] + 196
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2798, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3889 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3905 = mem[_3889]
                            require mem[_3889] <= test266151307()
                            require _3889 + mem[_3889] + 31 < _3889 + return_data.size
                            _3921 = mem[_3889 + mem[_3889]]
                            require mem[_3889 + mem[_3889]] <= test266151307()
                            require _3889 + ceil32(return_data.size) + (32 * mem[_3889 + mem[_3889]]) + 32 <= test266151307() and (32 * mem[_3889 + mem[_3889]]) + 32 >= 0
                            mem[64] = _3889 + ceil32(return_data.size) + (32 * mem[_3889 + mem[_3889]]) + 32
                            mem[_3889 + ceil32(return_data.size)] = _3921
                            require _3905 + (32 * _3921) + 32 <= return_data.size
                            idx = 0
                            s = _3889 + _3905 + 32
                            t = _3889 + ceil32(return_data.size) + 32
                            while idx < _3921:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _5000 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_5000 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_5000]
                            mem[_5000 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_5000]
                            mem[_5000 + 64] = stor11
                            require mem[_5000] - 1 < mem[_5000]
                            require 0 < mem[_5000]
                            if mem[_5000 + 44 len 20] == mem[(32 * mem[_5000] - 1) + _5000 + 44 len 20]:
                                require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require mem[_5000] - 1 < mem[_5000]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_5000] - 1) + _5000 + 44 len 20], _2798, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += ext_call.return_data[64]
                                emit Reinvest(totalDeposits, totalSupply);
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[_5000 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5000 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[_5000 + 132] = 64
                                mem[_5000 + 164] = mem[_5000]
                                idx = 0
                                s = _5000 + 32
                                t = _5000 + 196
                                while idx < mem[_5000]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _5000 + (32 * mem[_5000]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7008 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7050 = mem[_7008]
                                require mem[_7008] <= test266151307()
                                require _7008 + mem[_7008] + 31 < _7008 + return_data.size
                                _7120 = mem[_7008 + mem[_7008]]
                                require mem[_7008 + mem[_7008]] <= test266151307()
                                require _7008 + ceil32(return_data.size) + (32 * mem[_7008 + mem[_7008]]) + 32 <= test266151307() and (32 * mem[_7008 + mem[_7008]]) + 32 >= 0
                                mem[64] = _7008 + ceil32(return_data.size) + (32 * mem[_7008 + mem[_7008]]) + 32
                                mem[_7008 + ceil32(return_data.size)] = _7120
                                require _7050 + (32 * _7120) + 32 <= return_data.size
                                idx = 0
                                s = _7008 + _7050 + 32
                                t = _7008 + ceil32(return_data.size) + 32
                                while idx < _7120:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _7120 - 1 < _7120
                                _7695 = mem[(32 * _7120 - 1) + _7008 + ceil32(return_data.size) + 32]
                                _7696 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _7695
                                mem[mem[64] + 68] = 160
                                _7725 = mem[_5000]
                                mem[mem[64] + 164] = mem[_5000]
                                idx = 0
                                s = _5000 + 32
                                t = mem[64] + 196
                                while idx < _7725:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7696 + 100] = this.address
                                mem[_7696 + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7696 + (32 * _7725) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8071 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8079 = mem[_8071]
                                require mem[_8071] <= test266151307()
                                require _8071 + mem[_8071] + 31 < _8071 + return_data.size
                                _8087 = mem[_8071 + mem[_8071]]
                                require mem[_8071 + mem[_8071]] <= test266151307()
                                require _8071 + ceil32(return_data.size) + (32 * mem[_8071 + mem[_8071]]) + 32 <= test266151307() and (32 * mem[_8071 + mem[_8071]]) + 32 >= 0
                                mem[64] = _8071 + ceil32(return_data.size) + (32 * mem[_8071 + mem[_8071]]) + 32
                                mem[_8071 + ceil32(return_data.size)] = _8087
                                require _8079 + (32 * _8087) + 32 <= return_data.size
                                idx = 0
                                s = _8071 + _8079 + 32
                                t = _8071 + ceil32(return_data.size) + 32
                                while idx < _8087:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require mem[_5000] - 1 < mem[_5000]
                                _8495 = mem[(32 * mem[_5000] - 1) + _5000 + 32]
                                mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = _2798
                                mem[mem[64] + 100] = _7695
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8495), _2798, _7695, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8528 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8528] == mem[_8528]
                                require mem[_8528 + 32] == mem[_8528 + 32]
                                require mem[_8528 + 64] == mem[_8528 + 64]
                                if mem[_8528 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_8528 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8528 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8528 + 64]
                                emit Reinvest(totalDeposits, totalSupply);
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8652 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8652] == bool(mem[_8652])
                                if not mem[_8652]:
                                    revert with 0, 'transferFrom failed'
                        if arg1 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not totalSupply:
                            if totalSupply + arg1 < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)] += arg1
                            emit Transfer(arg1, 0, msg.sender);
                        else:
                            require totalSupply
                            if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not totalSupply * totalDeposits:
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                emit Transfer(arg1, 0, msg.sender);
                            else:
                                if not arg1:
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (0 / totalDeposits) < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += 0 / totalDeposits
                                    if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += 0 / totalDeposits
                                    emit Transfer((0 / totalDeposits), 0, msg.sender);
                                else:
                                    require arg1
                                    if arg1 * totalSupply / arg1 != totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1 * totalSupply / totalDeposits
                                    if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                    emit Transfer((arg1 * totalSupply / totalDeposits), 0, msg.sender);
                        if totalDeposits + arg1 < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += arg1
                        emit Deposit(arg1, msg.sender);
                    else:
                        require 2 * ext_call.return_data[0]
                        if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 2 * ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(4 * ceil32(return_data.size)) + 160] = 26
                        mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                        if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 <= 0:
                            mem[(4 * ceil32(return_data.size)) + 224] = 31
                            mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                            if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 31
                            mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                            if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(4 * ceil32(return_data.size)) + 352] = 26
                            mem[(4 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2 <= 0:
                                revert with 0, 'amount too low'
                            mem[(4 * ceil32(return_data.size)) + 416] = 3
                            mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                            mem[(4 * ceil32(return_data.size)) + 480] = stor11
                            mem[(4 * ceil32(return_data.size)) + 512] = stor10
                            if rewardTokenAddress == stor10:
                                mem[(4 * ceil32(return_data.size)) + 544] = 2
                                mem[(4 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                                mem[(4 * ceil32(return_data.size)) + 608] = stor11
                                if rewardTokenAddress == stor11:
                                    mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(4 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                                    mem[(4 * ceil32(return_data.size)) + 804] = 0
                                    mem[(4 * ceil32(return_data.size)) + 836] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                    mem[(4 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                    mem[(6 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                    totalDeposits += ext_call.return_data[64]
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  totalDeposits,
                                                  totalSupply,
                                                  mem[(6 * ceil32(return_data.size)) + 704 len 9 * ceil32(return_data.size)],
                                    mem[(6 * ceil32(return_data.size)) + 644] = msg.sender
                                    mem[(6 * ceil32(return_data.size)) + 676] = this.address
                                    mem[(6 * ceil32(return_data.size)) + 708] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1, mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                    mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 644] = 32
                                        mem[(8 * ceil32(return_data.size)) + 676] = 19
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'transferFrom failed'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 640
                                           len (13 * ceil32(return_data.size)) + 100
                                    if arg1 <= 0:
                                        mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 644] = 32
                                        mem[(8 * ceil32(return_data.size)) + 676] = 14
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'amount too low'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 640
                                           len (13 * ceil32(return_data.size)) + 100
                                    mem[(8 * ceil32(return_data.size)) + 644] = PID
                                    mem[(8 * ceil32(return_data.size)) + 676] = arg1
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 644 len (13 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalSupply:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 644] = 32
                                        mem[(8 * ceil32(return_data.size)) + 676] = 27
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 640
                                           len (13 * ceil32(return_data.size)) + 100
                                    require totalSupply
                                    if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                        mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 644] = 32
                                        mem[(8 * ceil32(return_data.size)) + 676] = 33
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                        mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 640
                                           len (13 * ceil32(return_data.size)) + 132
                                    if not totalSupply * totalDeposits:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 640] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 644] = 32
                                        mem[(8 * ceil32(return_data.size)) + 676] = 27
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 640
                                           len (13 * ceil32(return_data.size)) + 100
                                    if not arg1:
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (0 / totalDeposits) >= totalSupply:
                                            totalSupply += 0 / totalDeposits
                                            if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += 0 / totalDeposits
                                                mem[(8 * ceil32(return_data.size)) + 704] = 0 / totalDeposits
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 704] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    else:
                                        require arg1
                                        if arg1 * totalSupply / arg1 != totalSupply:
                                            mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(8 * ceil32(return_data.size)) + 644] = 32
                                            mem[(8 * ceil32(return_data.size)) + 676] = 33
                                            mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                            mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                            revert with memory
                                              from (8 * ceil32(return_data.size)) + 640
                                               len (13 * ceil32(return_data.size)) + 132
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                            totalSupply += arg1 * totalSupply / totalDeposits
                                            if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                                mem[(8 * ceil32(return_data.size)) + 704] = arg1 * totalSupply / totalDeposits
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 704] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 27
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 704
                                       len (13 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 676] = 64
                                mem[(4 * ceil32(return_data.size)) + 708] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 576
                                t = (4 * ceil32(return_data.size)) + 740
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 740 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 640
                                require return_data.size >= 32
                                _893 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                                _942 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                                mem[(6 * ceil32(return_data.size)) + 640] = _942
                                require _893 + (32 * _942) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _893 + 672
                                t = (6 * ceil32(return_data.size)) + 672
                                while idx < _942:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _942 - 1 < _942
                                _2792 = mem[(32 * _942 - 1) + (6 * ceil32(return_data.size)) + 672]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2792
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 576
                                t = mem[64] + 196
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2792, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3884 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3902 = mem[_3884]
                                require mem[_3884] <= test266151307()
                                require _3884 + mem[_3884] + 31 < _3884 + return_data.size
                                _3918 = mem[_3884 + mem[_3884]]
                                require mem[_3884 + mem[_3884]] <= test266151307()
                                require _3884 + ceil32(return_data.size) + (32 * mem[_3884 + mem[_3884]]) + 32 <= test266151307() and (32 * mem[_3884 + mem[_3884]]) + 32 >= 0
                                mem[64] = _3884 + ceil32(return_data.size) + (32 * mem[_3884 + mem[_3884]]) + 32
                                mem[_3884 + ceil32(return_data.size)] = _3918
                                require _3902 + (32 * _3918) + 32 <= return_data.size
                                idx = 0
                                s = _3884 + _3902 + 32
                                t = _3884 + ceil32(return_data.size) + 32
                                while idx < _3918:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require mem[(4 * ceil32(return_data.size)) + 544] - 1 < mem[(4 * ceil32(return_data.size)) + 544]
                                _5019 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 544] - 1) + (4 * ceil32(return_data.size)) + 576]
                                mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 100] = _2792
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_5019), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2792, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5310 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5310] == mem[_5310]
                                require mem[_5310 + 32] == mem[_5310 + 32]
                                require mem[_5310 + 64] == mem[_5310 + 64]
                                if mem[_5310 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_5310 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5310 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5310 + 64]
                                emit Reinvest(totalDeposits, totalSupply);
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5702 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5702] == bool(mem[_5702])
                                if not mem[_5702]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 580] = 64
                                mem[(4 * ceil32(return_data.size)) + 612] = 3
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 448
                                t = (4 * ceil32(return_data.size)) + 644
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 644 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 544
                                require return_data.size >= 32
                                _894 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                                _943 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                                mem[(6 * ceil32(return_data.size)) + 544] = _943
                                require _894 + (32 * _943) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _894 + 576
                                t = (6 * ceil32(return_data.size)) + 576
                                while idx < _943:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _943 - 1 < _943
                                _2794 = mem[(32 * _943 - 1) + (6 * ceil32(return_data.size)) + 576]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2794
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 3
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 448
                                t = mem[64] + 196
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2794, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3885 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3903 = mem[_3885]
                                require mem[_3885] <= test266151307()
                                require _3885 + mem[_3885] + 31 < _3885 + return_data.size
                                _3919 = mem[_3885 + mem[_3885]]
                                require mem[_3885 + mem[_3885]] <= test266151307()
                                require _3885 + ceil32(return_data.size) + (32 * mem[_3885 + mem[_3885]]) + 32 <= test266151307() and (32 * mem[_3885 + mem[_3885]]) + 32 >= 0
                                mem[64] = _3885 + ceil32(return_data.size) + (32 * mem[_3885 + mem[_3885]]) + 32
                                mem[_3885 + ceil32(return_data.size)] = _3919
                                require _3903 + (32 * _3919) + 32 <= return_data.size
                                idx = 0
                                s = _3885 + _3903 + 32
                                t = _3885 + ceil32(return_data.size) + 32
                                while idx < _3919:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _4996 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_4996 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_4996]
                                mem[_4996 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_4996]
                                mem[_4996 + 64] = stor11
                                require mem[_4996] - 1 < mem[_4996]
                                require 0 < mem[_4996]
                                if mem[_4996 + 44 len 20] == mem[(32 * mem[_4996] - 1) + _4996 + 44 len 20]:
                                    require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require mem[_4996] - 1 < mem[_4996]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_4996] - 1) + _4996 + 44 len 20], _2794, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += ext_call.return_data[64]
                                    emit Reinvest(totalDeposits, totalSupply);
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'transferFrom failed'
                                else:
                                    mem[_4996 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_4996 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[_4996 + 132] = 64
                                    mem[_4996 + 164] = mem[_4996]
                                    idx = 0
                                    s = _4996 + 32
                                    t = _4996 + 196
                                    while idx < mem[_4996]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4996 + (32 * mem[_4996]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7002 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7044 = mem[_7002]
                                    require mem[_7002] <= test266151307()
                                    require _7002 + mem[_7002] + 31 < _7002 + return_data.size
                                    _7116 = mem[_7002 + mem[_7002]]
                                    require mem[_7002 + mem[_7002]] <= test266151307()
                                    require _7002 + ceil32(return_data.size) + (32 * mem[_7002 + mem[_7002]]) + 32 <= test266151307() and (32 * mem[_7002 + mem[_7002]]) + 32 >= 0
                                    mem[64] = _7002 + ceil32(return_data.size) + (32 * mem[_7002 + mem[_7002]]) + 32
                                    mem[_7002 + ceil32(return_data.size)] = _7116
                                    require _7044 + (32 * _7116) + 32 <= return_data.size
                                    idx = 0
                                    s = _7002 + _7044 + 32
                                    t = _7002 + ceil32(return_data.size) + 32
                                    while idx < _7116:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7116 - 1 < _7116
                                    _7692 = mem[(32 * _7116 - 1) + _7002 + ceil32(return_data.size) + 32]
                                    _7693 = mem[64]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _7692
                                    mem[mem[64] + 68] = 160
                                    _7724 = mem[_4996]
                                    mem[mem[64] + 164] = mem[_4996]
                                    idx = 0
                                    s = _4996 + 32
                                    t = mem[64] + 196
                                    while idx < _7724:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_7693 + 100] = this.address
                                    mem[_7693 + 132] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7693 + (32 * _7724) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8069 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8078 = mem[_8069]
                                    require mem[_8069] <= test266151307()
                                    require _8069 + mem[_8069] + 31 < _8069 + return_data.size
                                    _8086 = mem[_8069 + mem[_8069]]
                                    require mem[_8069 + mem[_8069]] <= test266151307()
                                    require _8069 + ceil32(return_data.size) + (32 * mem[_8069 + mem[_8069]]) + 32 <= test266151307() and (32 * mem[_8069 + mem[_8069]]) + 32 >= 0
                                    mem[64] = _8069 + ceil32(return_data.size) + (32 * mem[_8069 + mem[_8069]]) + 32
                                    mem[_8069 + ceil32(return_data.size)] = _8086
                                    require _8078 + (32 * _8086) + 32 <= return_data.size
                                    idx = 0
                                    s = _8069 + _8078 + 32
                                    t = _8069 + ceil32(return_data.size) + 32
                                    while idx < _8086:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require mem[_4996] - 1 < mem[_4996]
                                    _8493 = mem[(32 * mem[_4996] - 1) + _4996 + 32]
                                    mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                                    mem[mem[64] + 68] = _2794
                                    mem[mem[64] + 100] = _7692
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8493), _2794, _7692, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8527 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8527] == mem[_8527]
                                    require mem[_8527 + 32] == mem[_8527 + 32]
                                    require mem[_8527 + 64] == mem[_8527 + 64]
                                    if mem[_8527 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_8527 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8527 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8527 + 64]
                                    emit Reinvest(totalDeposits, totalSupply);
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8651 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8651] == bool(mem[_8651])
                                    if not mem[_8651]:
                                        revert with 0, 'transferFrom failed'
                            if arg1 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if totalSupply + arg1 < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)] += arg1
                                emit Transfer(arg1, 0, msg.sender);
                            else:
                                require totalSupply
                                if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not totalSupply * totalDeposits:
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                else:
                                    if not arg1:
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (0 / totalDeposits) < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += 0 / totalDeposits
                                        if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += 0 / totalDeposits
                                        emit Transfer((0 / totalDeposits), 0, msg.sender);
                                    else:
                                        require arg1
                                        if arg1 * totalSupply / arg1 != totalSupply:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1 * totalSupply / totalDeposits
                                        if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                        emit Transfer((arg1 * totalSupply / totalDeposits), 0, msg.sender);
                            if totalDeposits + arg1 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += arg1
                            emit Deposit(arg1, msg.sender);
                        else:
                            mem[(4 * ceil32(return_data.size)) + 228] = msg.sender
                            mem[(4 * ceil32(return_data.size)) + 260] = (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                            mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'reinvest fee transfer failed'
                            mem[(6 * ceil32(return_data.size)) + 224] = 31
                            mem[(6 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                            if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(6 * ceil32(return_data.size)) + 288] = 31
                            mem[(6 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                            if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(6 * ceil32(return_data.size)) + 352] = 26
                            mem[(6 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2 <= 0:
                                revert with 0, 'amount too low'
                            mem[(6 * ceil32(return_data.size)) + 416] = 3
                            mem[(6 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                            mem[(6 * ceil32(return_data.size)) + 480] = stor11
                            mem[(6 * ceil32(return_data.size)) + 512] = stor10
                            if rewardTokenAddress == stor10:
                                mem[(6 * ceil32(return_data.size)) + 544] = 2
                                mem[(6 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                                mem[(6 * ceil32(return_data.size)) + 608] = stor11
                                if rewardTokenAddress == stor11:
                                    mem[(6 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(6 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(6 * ceil32(return_data.size)) + 772] = 0
                                    mem[(6 * ceil32(return_data.size)) + 804] = 0
                                    mem[(6 * ceil32(return_data.size)) + 836] = this.address
                                    mem[(6 * ceil32(return_data.size)) + 868] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                    mem[(6 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += ext_call.return_data[64]
                                    emit Reinvest(totalDeposits, totalSupply);
                                    mem[(7 * ceil32(return_data.size)) + 676] = this.address
                                    mem[(7 * ceil32(return_data.size)) + 708] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'transferFrom failed', mem[(9 * ceil32(return_data.size)) + 740 len 5 * ceil32(return_data.size)]
                                    if arg1 <= 0:
                                        revert with 0, 'amount too low', mem[(9 * ceil32(return_data.size)) + 740 len 5 * ceil32(return_data.size)]
                                    mem[(9 * ceil32(return_data.size)) + 644] = PID
                                    mem[(9 * ceil32(return_data.size)) + 676] = arg1
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, arg1, mem[(9 * ceil32(return_data.size)) + 708 len 5 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalSupply:
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 740 len 5 * ceil32(return_data.size)]
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 740 len 5 * ceil32(return_data.size)]
                                        balanceOf[address(msg.sender)] += arg1
                                        emit Transfer(address rg1, address rg2, uint256 rg3):
                                                      arg1,
                                                      mem[(9 * ceil32(return_data.size)) + 672 len 5 * ceil32(return_data.size)],
                                                      0,
                                                      msg.sender,
                                        if totalDeposits + arg1 < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 740 len 5 * ceil32(return_data.size)]
                                        totalDeposits += arg1
                                        emit Deposit(address rg1, uint256 rg2):
                                                     arg1,
                                                     mem[(9 * ceil32(return_data.size)) + 672 len 5 * ceil32(return_data.size)],
                                                     msg.sender,
                                    else:
                                        require totalSupply
                                        if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(9 * ceil32(return_data.size)) + 772 len 5 * ceil32(return_data.size)]
                                        if not totalSupply * totalDeposits:
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 740 len 5 * ceil32(return_data.size)]
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 740 len 5 * ceil32(return_data.size)]
                                            balanceOf[address(msg.sender)] += arg1
                                            emit Transfer(address rg1, address rg2, uint256 rg3):
                                                          arg1,
                                                          mem[(9 * ceil32(return_data.size)) + 672 len 5 * ceil32(return_data.size)],
                                                          0,
                                                          msg.sender,
                                            if totalDeposits + arg1 < totalDeposits:
                                                revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 740 len 5 * ceil32(return_data.size)]
                                            totalDeposits += arg1
                                            emit Deposit(address rg1, uint256 rg2):
                                                         arg1,
                                                         mem[(9 * ceil32(return_data.size)) + 672 len 5 * ceil32(return_data.size)],
                                                         msg.sender,
                                        else:
                                            if not arg1:
                                                if totalDeposits <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require totalDeposits
                                                if totalSupply + (0 / totalDeposits) < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 804 len 5 * ceil32(return_data.size)]
                                                totalSupply += 0 / totalDeposits
                                                if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 804 len 5 * ceil32(return_data.size)]
                                                balanceOf[address(msg.sender)] += 0 / totalDeposits
                                                emit Transfer(address rg1, address rg2, uint256 rg3):
                                                              0 / totalDeposits,
                                                              mem[(9 * ceil32(return_data.size)) + 736 len 5 * ceil32(return_data.size)],
                                                              0,
                                                              msg.sender,
                                            else:
                                                require arg1
                                                if arg1 * totalSupply / arg1 != totalSupply:
                                                    revert with 0, 'SafeMath: multiplication overflow', mem[(9 * ceil32(return_data.size)) + 772 len 5 * ceil32(return_data.size)]
                                                if totalDeposits <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require totalDeposits
                                                if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 804 len 5 * ceil32(return_data.size)]
                                                totalSupply += arg1 * totalSupply / totalDeposits
                                                if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 804 len 5 * ceil32(return_data.size)]
                                                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                                emit Transfer(address rg1, address rg2, uint256 rg3):
                                                              arg1 * totalSupply / totalDeposits,
                                                              mem[(9 * ceil32(return_data.size)) + 736 len 5 * ceil32(return_data.size)],
                                                              0,
                                                              msg.sender,
                                            if totalDeposits + arg1 < totalDeposits:
                                                revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 804 len 5 * ceil32(return_data.size)]
                                            totalDeposits += arg1
                                            emit Deposit(address rg1, uint256 rg2):
                                                         arg1,
                                                         mem[(9 * ceil32(return_data.size)) + 736 len 5 * ceil32(return_data.size)],
                                                         msg.sender,
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 644] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(6 * ceil32(return_data.size)) + 676] = 64
                                    mem[(6 * ceil32(return_data.size)) + 708] = 2
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 576
                                    t = (6 * ceil32(return_data.size)) + 740
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 740 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 640
                                    require return_data.size >= 32
                                    _2824 = mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (6 * ceil32(return_data.size)) + return_data.size + 640
                                    _2852 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                                    require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                                    mem[(7 * ceil32(return_data.size)) + 640] = _2852
                                    require _2824 + (32 * _2852) + 32 <= return_data.size
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + _2824 + 672
                                    t = (7 * ceil32(return_data.size)) + 672
                                    while idx < _2852:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _2852 - 1 < _2852
                                    _3858 = mem[(32 * _2852 - 1) + (7 * ceil32(return_data.size)) + 672]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _3858
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 576
                                    t = mem[64] + 196
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _3858, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5159 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5169 = mem[_5159]
                                    require mem[_5159] <= test266151307()
                                    require _5159 + mem[_5159] + 31 < _5159 + return_data.size
                                    _5175 = mem[_5159 + mem[_5159]]
                                    require mem[_5159 + mem[_5159]] <= test266151307()
                                    require _5159 + ceil32(return_data.size) + (32 * mem[_5159 + mem[_5159]]) + 32 <= test266151307() and (32 * mem[_5159 + mem[_5159]]) + 32 >= 0
                                    mem[64] = _5159 + ceil32(return_data.size) + (32 * mem[_5159 + mem[_5159]]) + 32
                                    mem[_5159 + ceil32(return_data.size)] = _5175
                                    require _5169 + (32 * _5175) + 32 <= return_data.size
                                    idx = 0
                                    s = _5159 + _5169 + 32
                                    t = _5159 + ceil32(return_data.size) + 32
                                    while idx < _5175:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                                    require mem[(6 * ceil32(return_data.size)) + 544] - 1 < mem[(6 * ceil32(return_data.size)) + 544]
                                    _7019 = mem[(32 * mem[(6 * ceil32(return_data.size)) + 544] - 1) + (6 * ceil32(return_data.size)) + 576]
                                    mem[mem[64] + 4] = mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 460 len 20]
                                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 100] = _3858
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_7019), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _3858, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7235 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_7235] == mem[_7235]
                                    require mem[_7235 + 32] == mem[_7235 + 32]
                                    require mem[_7235 + 64] == mem[_7235 + 64]
                                    if mem[_7235 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_7235 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_7235 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_7235 + 64]
                                    emit Reinvest(totalDeposits, totalSupply);
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7410 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7410] == bool(mem[_7410])
                                    if not mem[_7410]:
                                        revert with 0, 'transferFrom failed'
                                    if arg1 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalSupply:
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        emit Transfer(arg1, 0, msg.sender);
                                    else:
                                        require totalSupply
                                        if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not totalSupply * totalDeposits:
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1
                                            emit Transfer(arg1, 0, msg.sender);
                                        else:
                                            if not arg1:
                                                if totalDeposits <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require totalDeposits
                                                if totalSupply + (0 / totalDeposits) < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += 0 / totalDeposits
                                                if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += 0 / totalDeposits
                                                emit Transfer((0 / totalDeposits), 0, msg.sender);
                                            else:
                                                require arg1
                                                if arg1 * totalSupply / arg1 != totalSupply:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if totalDeposits <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require totalDeposits
                                                if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1 * totalSupply / totalDeposits
                                                if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                                emit Transfer((arg1 * totalSupply / totalDeposits), 0, msg.sender);
                                    if totalDeposits + arg1 < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += arg1
                                    emit Deposit(arg1, msg.sender);
                            else:
                                mem[(6 * ceil32(return_data.size)) + 544] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 548] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(6 * ceil32(return_data.size)) + 580] = 64
                                mem[(6 * ceil32(return_data.size)) + 612] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 448
                                t = (6 * ceil32(return_data.size)) + 644
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 644 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (7 * ceil32(return_data.size)) + 544
                                require return_data.size >= 32
                                _2825 = mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (6 * ceil32(return_data.size)) + return_data.size + 544
                                _2853 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                                require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                                mem[(7 * ceil32(return_data.size)) + 544] = _2853
                                require _2825 + (32 * _2853) + 32 <= return_data.size
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + _2825 + 576
                                t = (7 * ceil32(return_data.size)) + 576
                                while idx < _2853:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _2853 - 1 < _2853
                                _3860 = mem[(32 * _2853 - 1) + (7 * ceil32(return_data.size)) + 576]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _3860
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 448
                                t = mem[64] + 196
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _3860, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5160 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5170 = mem[_5160]
                                require mem[_5160] <= test266151307()
                                require _5160 + mem[_5160] + 31 < _5160 + return_data.size
                                _5176 = mem[_5160 + mem[_5160]]
                                require mem[_5160 + mem[_5160]] <= test266151307()
                                require _5160 + ceil32(return_data.size) + (32 * mem[_5160 + mem[_5160]]) + 32 <= test266151307() and (32 * mem[_5160 + mem[_5160]]) + 32 >= 0
                                mem[64] = _5160 + ceil32(return_data.size) + (32 * mem[_5160 + mem[_5160]]) + 32
                                mem[_5160 + ceil32(return_data.size)] = _5176
                                require _5170 + (32 * _5176) + 32 <= return_data.size
                                idx = 0
                                s = _5160 + _5170 + 32
                                t = _5160 + ceil32(return_data.size) + 32
                                while idx < _5176:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _7006 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_7006 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[(6 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_7006]
                                mem[_7006 + 32] = mem[(6 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_7006]
                                mem[_7006 + 64] = stor11
                                require mem[_7006] - 1 < mem[_7006]
                                require 0 < mem[_7006]
                                if mem[_7006 + 44 len 20] == mem[(32 * mem[_7006] - 1) + _7006 + 44 len 20]:
                                    require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                                    require mem[_7006] - 1 < mem[_7006]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_7006] - 1) + _7006 + 44 len 20], _3860, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += ext_call.return_data[64]
                                    emit Reinvest(totalDeposits, totalSupply);
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'transferFrom failed'
                                else:
                                    mem[_7006 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_7006 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[_7006 + 132] = 64
                                    mem[_7006 + 164] = mem[_7006]
                                    idx = 0
                                    s = _7006 + 32
                                    t = _7006 + 196
                                    while idx < mem[_7006]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _7006 + (32 * mem[_7006]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7704 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7710 = mem[_7704]
                                    require mem[_7704] <= test266151307()
                                    require _7704 + mem[_7704] + 31 < _7704 + return_data.size
                                    _7717 = mem[_7704 + mem[_7704]]
                                    require mem[_7704 + mem[_7704]] <= test266151307()
                                    require _7704 + ceil32(return_data.size) + (32 * mem[_7704 + mem[_7704]]) + 32 <= test266151307() and (32 * mem[_7704 + mem[_7704]]) + 32 >= 0
                                    mem[64] = _7704 + ceil32(return_data.size) + (32 * mem[_7704 + mem[_7704]]) + 32
                                    mem[_7704 + ceil32(return_data.size)] = _7717
                                    require _7710 + (32 * _7717) + 32 <= return_data.size
                                    idx = 0
                                    s = _7704 + _7710 + 32
                                    t = _7704 + ceil32(return_data.size) + 32
                                    while idx < _7717:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7717 - 1 < _7717
                                    _8056 = mem[(32 * _7717 - 1) + _7704 + ceil32(return_data.size) + 32]
                                    _8057 = mem[64]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _8056
                                    mem[mem[64] + 68] = 160
                                    _8070 = mem[_7006]
                                    mem[mem[64] + 164] = mem[_7006]
                                    idx = 0
                                    s = _7006 + 32
                                    t = mem[64] + 196
                                    while idx < _8070:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_8057 + 100] = this.address
                                    mem[_8057 + 132] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _8057 + (32 * _8070) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8504 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8505 = mem[_8504]
                                    require mem[_8504] <= test266151307()
                                    require _8504 + mem[_8504] + 31 < _8504 + return_data.size
                                    _8506 = mem[_8504 + mem[_8504]]
                                    require mem[_8504 + mem[_8504]] <= test266151307()
                                    require _8504 + ceil32(return_data.size) + (32 * mem[_8504 + mem[_8504]]) + 32 <= test266151307() and (32 * mem[_8504 + mem[_8504]]) + 32 >= 0
                                    mem[64] = _8504 + ceil32(return_data.size) + (32 * mem[_8504 + mem[_8504]]) + 32
                                    mem[_8504 + ceil32(return_data.size)] = _8506
                                    require _8505 + (32 * _8506) + 32 <= return_data.size
                                    idx = 0
                                    s = _8504 + _8505 + 32
                                    t = _8504 + ceil32(return_data.size) + 32
                                    while idx < _8506:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                                    require mem[_7006] - 1 < mem[_7006]
                                    _9264 = mem[(32 * mem[_7006] - 1) + _7006 + 32]
                                    mem[mem[64] + 4] = mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 460 len 20]
                                    mem[mem[64] + 68] = _3860
                                    mem[mem[64] + 100] = _8056
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_9264), _3860, _8056, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9299 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_9299] == mem[_9299]
                                    require mem[_9299 + 32] == mem[_9299 + 32]
                                    require mem[_9299 + 64] == mem[_9299 + 64]
                                    if mem[_9299 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_9299 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_9299 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_9299 + 64]
                                    emit Reinvest(totalDeposits, totalSupply);
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9313 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9313] == bool(mem[_9313])
                                    if not mem[_9313]:
                                        revert with 0, 'transferFrom failed'
                                if arg1 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if totalSupply + arg1 < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)] += arg1
                                    emit Transfer(arg1, 0, msg.sender);
                                else:
                                    require totalSupply
                                    if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not totalSupply * totalDeposits:
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)] += arg1
                                        emit Transfer(arg1, 0, msg.sender);
                                    else:
                                        if not arg1:
                                            if totalDeposits <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require totalDeposits
                                            if totalSupply + (0 / totalDeposits) < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += 0 / totalDeposits
                                            if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += 0 / totalDeposits
                                            emit Transfer((0 / totalDeposits), 0, msg.sender);
                                        else:
                                            require arg1
                                            if arg1 * totalSupply / arg1 != totalSupply:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalDeposits <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            require totalDeposits
                                            if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1 * totalSupply / totalDeposits
                                            if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                            emit Transfer((arg1 * totalSupply / totalDeposits), 0, msg.sender);
                                if totalDeposits + arg1 < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += arg1
                                emit Deposit(arg1, msg.sender);
}



}
