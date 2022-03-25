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
uint8 REQUIRE_REINVEST_BEFORE_DEPOSIT;
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
    return bool(uint8(REQUIRE_REINVEST_BEFORE_DEPOSIT))
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

function updateMinTokensToReinvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit UpdateMinTokensToReinvest(MIN_TOKENS_TO_REINVEST, arg1);
    MIN_TOKENS_TO_REINVEST = arg1
}

function updateRequireReinvestBeforeDeposit() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor18) = not bool(uint8(REQUIRE_REINVEST_BEFORE_DEPOSIT)) or Mask(248, 8, uint256(stor18))
    emit UpdateRequireReinvestBeforeDeposit(bool(uint8(REQUIRE_REINVEST_BEFORE_DEPOSIT)));
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

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'amount too low'
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
    staticcall stakingContractAddress.pendingBamboo(uint256 rg1, address rg2) with:
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
    staticcall stakingContractAddress.pendingBamboo(uint256 rg1, address rg2) with:
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

function tokenAllow(address[] arg1, uint256[] arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 <= test266151307() and (32 * arg3.length) + 192 >= 160
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = (32 * arg1.length) + (32 * arg2.length) + 192
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length != arg2.length:
        revert with 0, 'not same length'
    if arg1.length != arg3.length:
        revert with 0, 'not same length'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _181 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _183 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_183)
        require ext_code.size(address(_181))
        staticcall address(_181).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_183)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_186] == mem[_186]
        require idx < mem[(32 * arg1.length) + 128]
        if mem[_186] != mem[(32 * idx) + (32 * arg1.length) + 160]:
            if mem[_186] != -1:
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                require idx < mem[(32 * arg1.length) + 128]
                _195 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                mem[mem[64] + 36] = _195
                require ext_code.size(address(_181))
                call address(_181).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _195
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _203 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_203] == bool(mem[_203])
                if not mem[_203]:
                    revert with 0, 'approve failed'
            else:
                require idx < mem[(32 * arg1.length) + 128]
                if not mem[(32 * idx) + (32 * arg1.length) + 160]:
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    require idx < mem[(32 * arg1.length) + 128]
                    _200 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 204 len 20]
                    mem[mem[64] + 36] = _200
                    require ext_code.size(address(_181))
                    call address(_181).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _200
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _205 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_205] == bool(mem[_205])
                    if not mem[_205]:
                        revert with 0, 'approve failed'
        idx = idx + 1
        continue 
}

function reinvest() payable {
    if msg.sender != tx.origin:
        revert with 0, 'onlyEOA'
    mem[100] = PID
    mem[132] = this.address
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.pendingBamboo(uint256 rg1, address rg2) with:
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
            mem[(2 * ceil32(return_data.size)) + 416] = 2
            mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
            mem[(2 * ceil32(return_data.size)) + 480] = stor10
            if rewardTokenAddress == stor10:
                mem[(2 * ceil32(return_data.size)) + 512] = 2
                mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                mem[(2 * ceil32(return_data.size)) + 576] = stor11
                if rewardTokenAddress == stor11:
                    mem[(2 * ceil32(return_data.size)) + 676] = uint255(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 708] = uint255(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 740] = 0
                    mem[(2 * ceil32(return_data.size)) + 772] = 0
                    mem[(2 * ceil32(return_data.size)) + 804] = this.address
                    mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args stor10, stor11, 2 * ext_call.return_data[0], 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                    mem[(2 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    if ext_call.return_data[64] <= 0:
                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                        mem[(4 * ceil32(return_data.size)) + 644] = 14
                        mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 612] = PID
                        mem[(4 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                            totalDeposits += ext_call.return_data[64]
                            mem[(4 * ceil32(return_data.size)) + 608] = totalDeposits
                            mem[(4 * ceil32(return_data.size)) + 640] = totalSupply
                            emit Reinvest(uint256 rg1, uint256 rg2):
                                          mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 64],
                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                        mem[(4 * ceil32(return_data.size)) + 644] = 27
                        mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 608
                       len (5 * ceil32(return_data.size)) + 100
                mem[(2 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 612] = uint255(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 644] = 64
                mem[(2 * ceil32(return_data.size)) + 676] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 544
                t = (2 * ceil32(return_data.size)) + 708
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 2 * ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 608
                require return_data.size >= 32
                _794 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                _833 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608] <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]) + 640
                mem[(4 * ceil32(return_data.size)) + 608] = _833
                require _794 + (32 * _833) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _794 + 640
                t = (4 * ceil32(return_data.size)) + 640
                while idx < _833:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _833 - 1 < _833
                _1876 = mem[(32 * _833 - 1) + (4 * ceil32(return_data.size)) + 640]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                mem[mem[64] + 36] = _1876
                mem[mem[64] + 68] = 160
                _1902 = mem[(2 * ceil32(return_data.size)) + 512]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 544
                t = mem[64] + 196
                while idx < _1902:
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
                    args 2 * ext_call.return_data[0], _1876, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1902) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2763 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2779 = mem[_2763]
                require mem[_2763] <= test266151307()
                require _2763 + mem[_2763] + 31 < _2763 + return_data.size
                _2795 = mem[_2763 + mem[_2763]]
                require mem[_2763 + mem[_2763]] <= test266151307()
                require _2763 + ceil32(return_data.size) + (32 * mem[_2763 + mem[_2763]]) + 32 <= test266151307() and (32 * mem[_2763 + mem[_2763]]) + 32 >= 0
                mem[64] = _2763 + ceil32(return_data.size) + (32 * mem[_2763 + mem[_2763]]) + 32
                mem[_2763 + ceil32(return_data.size)] = _2795
                require _2779 + (32 * _2795) + 32 <= return_data.size
                idx = 0
                s = _2763 + _2779 + 32
                t = _2763 + ceil32(return_data.size) + 32
                while idx < _2795:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                _3589 = mem[(2 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                mem[mem[64] + 68] = uint255(ext_call.return_data[0])
                mem[mem[64] + 100] = _1876
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_3589), 2 * ext_call.return_data[0], _1876, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3847 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_3847] == mem[_3847]
                require mem[_3847 + 32] == mem[_3847 + 32]
                require mem[_3847 + 64] == mem[_3847 + 64]
                if mem[_3847 + 64] <= 0:
                    revert with 0, 'amount too low'
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args PID, mem[_3847 + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalDeposits + mem[_3847 + 64] < totalDeposits:
                    revert with 0, 'SafeMath: addition overflow'
                totalDeposits += mem[_3847 + 64]
            else:
                mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 516] = uint255(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 548] = 64
                mem[(2 * ceil32(return_data.size)) + 580] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 448
                t = (2 * ceil32(return_data.size)) + 612
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 2 * ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 512
                require return_data.size >= 32
                _795 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                _834 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512] <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 544
                mem[(4 * ceil32(return_data.size)) + 512] = _834
                require _795 + (32 * _834) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _795 + 544
                t = (4 * ceil32(return_data.size)) + 544
                while idx < _834:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _834 - 1 < _834
                _1878 = mem[(32 * _834 - 1) + (4 * ceil32(return_data.size)) + 544]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                mem[mem[64] + 36] = _1878
                mem[mem[64] + 68] = 160
                _1903 = mem[(2 * ceil32(return_data.size)) + 416]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 448
                t = mem[64] + 196
                while idx < _1903:
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
                    args 2 * ext_call.return_data[0], _1878, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1903) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2764 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2780 = mem[_2764]
                require mem[_2764] <= test266151307()
                require _2764 + mem[_2764] + 31 < _2764 + return_data.size
                _2796 = mem[_2764 + mem[_2764]]
                require mem[_2764 + mem[_2764]] <= test266151307()
                require _2764 + ceil32(return_data.size) + (32 * mem[_2764 + mem[_2764]]) + 32 <= test266151307() and (32 * mem[_2764 + mem[_2764]]) + 32 >= 0
                mem[64] = _2764 + ceil32(return_data.size) + (32 * mem[_2764 + mem[_2764]]) + 32
                mem[_2764 + ceil32(return_data.size)] = _2796
                require _2780 + (32 * _2796) + 32 <= return_data.size
                idx = 0
                s = _2764 + _2780 + 32
                t = _2764 + ceil32(return_data.size) + 32
                while idx < _2796:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3574 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3574 + 32 len 64] = call.data[calldata.size len 64]
                require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                require 0 < mem[_3574]
                mem[_3574 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                require 1 < mem[_3574]
                mem[_3574 + 64] = stor11
                require 1 < mem[_3574]
                require 0 < mem[_3574]
                if mem[_3574 + 44 len 20] == stor11:
                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 1 < mem[_3574]
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _1878, 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
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
                    mem[_3574 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3574 + 100] = uint255(ext_call.return_data[0])
                    mem[_3574 + 132] = 64
                    mem[_3574 + 164] = mem[_3574]
                    idx = 0
                    s = _3574 + 32
                    t = _3574 + 196
                    while idx < mem[_3574]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3574 + (32 * mem[_3574]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4332 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4343 = mem[_4332]
                    require mem[_4332] <= test266151307()
                    require _4332 + mem[_4332] + 31 < _4332 + return_data.size
                    _4355 = mem[_4332 + mem[_4332]]
                    require mem[_4332 + mem[_4332]] <= test266151307()
                    require _4332 + ceil32(return_data.size) + (32 * mem[_4332 + mem[_4332]]) + 32 <= test266151307() and (32 * mem[_4332 + mem[_4332]]) + 32 >= 0
                    mem[64] = _4332 + ceil32(return_data.size) + (32 * mem[_4332 + mem[_4332]]) + 32
                    mem[_4332 + ceil32(return_data.size)] = _4355
                    require _4343 + (32 * _4355) + 32 <= return_data.size
                    idx = 0
                    s = _4332 + _4343 + 32
                    t = _4332 + ceil32(return_data.size) + 32
                    while idx < _4355:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4355 - 1 < _4355
                    _4725 = mem[(32 * _4355 - 1) + _4332 + ceil32(return_data.size) + 32]
                    _4726 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                    mem[mem[64] + 36] = _4725
                    mem[mem[64] + 68] = 160
                    _4738 = mem[_3574]
                    mem[mem[64] + 164] = mem[_3574]
                    idx = 0
                    s = _3574 + 32
                    t = mem[64] + 196
                    while idx < _4738:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4726 + 100] = this.address
                    mem[_4726 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4726 + (32 * _4738) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4999 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5007 = mem[_4999]
                    require mem[_4999] <= test266151307()
                    require _4999 + mem[_4999] + 31 < _4999 + return_data.size
                    _5015 = mem[_4999 + mem[_4999]]
                    require mem[_4999 + mem[_4999]] <= test266151307()
                    require _4999 + ceil32(return_data.size) + (32 * mem[_4999 + mem[_4999]]) + 32 <= test266151307() and (32 * mem[_4999 + mem[_4999]]) + 32 >= 0
                    mem[64] = _4999 + ceil32(return_data.size) + (32 * mem[_4999 + mem[_4999]]) + 32
                    mem[_4999 + ceil32(return_data.size)] = _5015
                    require _5007 + (32 * _5015) + 32 <= return_data.size
                    idx = 0
                    s = _4999 + _5007 + 32
                    t = _4999 + ceil32(return_data.size) + 32
                    while idx < _5015:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 1 < mem[_3574]
                    _5248 = mem[_3574 + 64]
                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                    mem[mem[64] + 68] = _1878
                    mem[mem[64] + 100] = _4725
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_5248), _1878, _4725, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_5276] == mem[_5276]
                    require mem[_5276 + 32] == mem[_5276 + 32]
                    require mem[_5276 + 64] == mem[_5276 + 64]
                    if mem[_5276 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, mem[_5276 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_5276 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_5276 + 64]
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
                mem[(2 * ceil32(return_data.size)) + 416] = 2
                mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                mem[(2 * ceil32(return_data.size)) + 480] = stor10
                if rewardTokenAddress == stor10:
                    mem[(2 * ceil32(return_data.size)) + 512] = 2
                    mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 576] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(2 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 740] = 0
                        mem[(2 * ceil32(return_data.size)) + 772] = 0
                        mem[(2 * ceil32(return_data.size)) + 804] = this.address
                        mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 612] = 32
                            mem[(4 * ceil32(return_data.size)) + 644] = 14
                            mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 612] = PID
                            mem[(4 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                totalDeposits += ext_call.return_data[64]
                                mem[(4 * ceil32(return_data.size)) + 608] = totalDeposits
                                mem[(4 * ceil32(return_data.size)) + 640] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 64],
                            mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 612] = 32
                            mem[(4 * ceil32(return_data.size)) + 644] = 27
                            mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 608
                           len (5 * ceil32(return_data.size)) + 100
                    mem[(2 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[(2 * ceil32(return_data.size)) + 644] = 64
                    mem[(2 * ceil32(return_data.size)) + 676] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = (2 * ceil32(return_data.size)) + 708
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 608
                    require return_data.size >= 32
                    _785 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                    _829 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                    mem[(4 * ceil32(return_data.size)) + 608] = _829
                    require _785 + (32 * _829) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _785 + 640
                    t = (4 * ceil32(return_data.size)) + 640
                    while idx < _829:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _829 - 1 < _829
                    _1868 = mem[(32 * _829 - 1) + (4 * ceil32(return_data.size)) + 640]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1868
                    mem[mem[64] + 68] = 160
                    _1898 = mem[(2 * ceil32(return_data.size)) + 512]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = mem[64] + 196
                    while idx < _1898:
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1868, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1898) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2759 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2775 = mem[_2759]
                    require mem[_2759] <= test266151307()
                    require _2759 + mem[_2759] + 31 < _2759 + return_data.size
                    _2791 = mem[_2759 + mem[_2759]]
                    require mem[_2759 + mem[_2759]] <= test266151307()
                    require _2759 + ceil32(return_data.size) + (32 * mem[_2759 + mem[_2759]]) + 32 <= test266151307() and (32 * mem[_2759 + mem[_2759]]) + 32 >= 0
                    mem[64] = _2759 + ceil32(return_data.size) + (32 * mem[_2759 + mem[_2759]]) + 32
                    mem[_2759 + ceil32(return_data.size)] = _2791
                    require _2775 + (32 * _2791) + 32 <= return_data.size
                    idx = 0
                    s = _2759 + _2775 + 32
                    t = _2759 + ceil32(return_data.size) + 32
                    while idx < _2791:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                    _3585 = mem[(2 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _1868
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3585), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1868, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3845 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3845] == mem[_3845]
                    require mem[_3845 + 32] == mem[_3845 + 32]
                    require mem[_3845 + 64] == mem[_3845 + 64]
                    if mem[_3845 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, mem[_3845 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_3845 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_3845 + 64]
                else:
                    mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[(2 * ceil32(return_data.size)) + 548] = 64
                    mem[(2 * ceil32(return_data.size)) + 580] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = (2 * ceil32(return_data.size)) + 612
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _786 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                    _830 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(4 * ceil32(return_data.size)) + 512] = _830
                    require _786 + (32 * _830) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _786 + 544
                    t = (4 * ceil32(return_data.size)) + 544
                    while idx < _830:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _830 - 1 < _830
                    _1870 = mem[(32 * _830 - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1870
                    mem[mem[64] + 68] = 160
                    _1899 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _1899:
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1870, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1899) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2760 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2776 = mem[_2760]
                    require mem[_2760] <= test266151307()
                    require _2760 + mem[_2760] + 31 < _2760 + return_data.size
                    _2792 = mem[_2760 + mem[_2760]]
                    require mem[_2760 + mem[_2760]] <= test266151307()
                    require _2760 + ceil32(return_data.size) + (32 * mem[_2760 + mem[_2760]]) + 32 <= test266151307() and (32 * mem[_2760 + mem[_2760]]) + 32 >= 0
                    mem[64] = _2760 + ceil32(return_data.size) + (32 * mem[_2760 + mem[_2760]]) + 32
                    mem[_2760 + ceil32(return_data.size)] = _2792
                    require _2776 + (32 * _2792) + 32 <= return_data.size
                    idx = 0
                    s = _2760 + _2776 + 32
                    t = _2760 + ceil32(return_data.size) + 32
                    while idx < _2792:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3568 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3568 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3568]
                    mem[_3568 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3568]
                    mem[_3568 + 64] = stor11
                    require 1 < mem[_3568]
                    require 0 < mem[_3568]
                    if mem[_3568 + 44 len 20] == stor11:
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3568]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _1870, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3568 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3568 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[_3568 + 132] = 64
                        mem[_3568 + 164] = mem[_3568]
                        idx = 0
                        s = _3568 + 32
                        t = _3568 + 196
                        while idx < mem[_3568]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3568 + (32 * mem[_3568]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4330 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4341 = mem[_4330]
                        require mem[_4330] <= test266151307()
                        require _4330 + mem[_4330] + 31 < _4330 + return_data.size
                        _4353 = mem[_4330 + mem[_4330]]
                        require mem[_4330 + mem[_4330]] <= test266151307()
                        require _4330 + ceil32(return_data.size) + (32 * mem[_4330 + mem[_4330]]) + 32 <= test266151307() and (32 * mem[_4330 + mem[_4330]]) + 32 >= 0
                        mem[64] = _4330 + ceil32(return_data.size) + (32 * mem[_4330 + mem[_4330]]) + 32
                        mem[_4330 + ceil32(return_data.size)] = _4353
                        require _4341 + (32 * _4353) + 32 <= return_data.size
                        idx = 0
                        s = _4330 + _4341 + 32
                        t = _4330 + ceil32(return_data.size) + 32
                        while idx < _4353:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4353 - 1 < _4353
                        _4721 = mem[(32 * _4353 - 1) + _4330 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _4721
                        mem[mem[64] + 68] = 160
                        _4736 = mem[_3568]
                        mem[mem[64] + 164] = mem[_3568]
                        idx = 0
                        s = _3568 + 32
                        t = mem[64] + 196
                        while idx < _4736:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4721, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4736) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4997 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5005 = mem[_4997]
                        require mem[_4997] <= test266151307()
                        require _4997 + mem[_4997] + 31 < _4997 + return_data.size
                        _5013 = mem[_4997 + mem[_4997]]
                        require mem[_4997 + mem[_4997]] <= test266151307()
                        require _4997 + ceil32(return_data.size) + (32 * mem[_4997 + mem[_4997]]) + 32 <= test266151307() and (32 * mem[_4997 + mem[_4997]]) + 32 >= 0
                        mem[64] = _4997 + ceil32(return_data.size) + (32 * mem[_4997 + mem[_4997]]) + 32
                        mem[_4997 + ceil32(return_data.size)] = _5013
                        require _5005 + (32 * _5013) + 32 <= return_data.size
                        idx = 0
                        s = _4997 + _5005 + 32
                        t = _4997 + ceil32(return_data.size) + 32
                        while idx < _5013:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3568]
                        _5244 = mem[_3568 + 64]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = _1870
                        mem[mem[64] + 100] = _4721
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5244), _1870, _4721, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5274 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5274] == mem[_5274]
                        require mem[_5274 + 32] == mem[_5274 + 32]
                        require mem[_5274 + 64] == mem[_5274 + 64]
                        if mem[_5274 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5274 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5274 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5274 + 64]
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
                mem[(4 * ceil32(return_data.size)) + 416] = 2
                mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                mem[(4 * ceil32(return_data.size)) + 480] = stor10
                if rewardTokenAddress == stor10:
                    mem[(4 * ceil32(return_data.size)) + 512] = 2
                    mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 576] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(4 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = this.address
                        mem[(4 * ceil32(return_data.size)) + 836] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        mem[(4 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 676 len 9 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                        totalDeposits += ext_call.return_data[64]
                        emit Reinvest(uint256 rg1, uint256 rg2):
                                      totalDeposits,
                                      totalSupply,
                                      mem[(6 * ceil32(return_data.size)) + 672 len 9 * ceil32(return_data.size)],
                    else:
                        mem[(4 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 644] = 64
                        mem[(4 * ceil32(return_data.size)) + 676] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 544
                        t = (4 * ceil32(return_data.size)) + 708
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 708 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 608
                        require return_data.size >= 32
                        _790 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                        _831 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                        mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                        require _790 + (32 * _831) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _790 + 640
                        t = (6 * ceil32(return_data.size)) + 640
                        while idx < _831:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _831 - 1 < _831
                        _1872 = mem[(32 * _831 - 1) + (6 * ceil32(return_data.size)) + 640]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1872
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 544
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1872, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2761 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2777 = mem[_2761]
                        require mem[_2761] <= test266151307()
                        require _2761 + mem[_2761] + 31 < _2761 + return_data.size
                        _2793 = mem[_2761 + mem[_2761]]
                        require mem[_2761 + mem[_2761]] <= test266151307()
                        require _2761 + ceil32(return_data.size) + (32 * mem[_2761 + mem[_2761]]) + 32 <= test266151307() and (32 * mem[_2761 + mem[_2761]]) + 32 >= 0
                        mem[64] = _2761 + ceil32(return_data.size) + (32 * mem[_2761 + mem[_2761]]) + 32
                        mem[_2761 + ceil32(return_data.size)] = _2793
                        require _2777 + (32 * _2793) + 32 <= return_data.size
                        idx = 0
                        s = _2761 + _2777 + 32
                        t = _2761 + ceil32(return_data.size) + 32
                        while idx < _2793:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                        _3587 = mem[(4 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _1872
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3587), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1872, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3846 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_3846] == mem[_3846]
                        require mem[_3846 + 32] == mem[_3846 + 32]
                        require mem[_3846 + 64] == mem[_3846 + 64]
                        if mem[_3846 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_3846 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_3846 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_3846 + 64]
                        emit Reinvest(totalDeposits, totalSupply);
                else:
                    mem[(4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[(4 * ceil32(return_data.size)) + 548] = 64
                    mem[(4 * ceil32(return_data.size)) + 580] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 448
                    t = (4 * ceil32(return_data.size)) + 612
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _791 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                    _832 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require _791 + (32 * _832) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _791 + 544
                    t = (6 * ceil32(return_data.size)) + 544
                    while idx < _832:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _832 - 1 < _832
                    _1874 = mem[(32 * _832 - 1) + (6 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1874
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 448
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1874, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2762 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2778 = mem[_2762]
                    require mem[_2762] <= test266151307()
                    require _2762 + mem[_2762] + 31 < _2762 + return_data.size
                    _2794 = mem[_2762 + mem[_2762]]
                    require mem[_2762 + mem[_2762]] <= test266151307()
                    require _2762 + ceil32(return_data.size) + (32 * mem[_2762 + mem[_2762]]) + 32 <= test266151307() and (32 * mem[_2762 + mem[_2762]]) + 32 >= 0
                    mem[64] = _2762 + ceil32(return_data.size) + (32 * mem[_2762 + mem[_2762]]) + 32
                    mem[_2762 + ceil32(return_data.size)] = _2794
                    require _2778 + (32 * _2794) + 32 <= return_data.size
                    idx = 0
                    s = _2762 + _2778 + 32
                    t = _2762 + ceil32(return_data.size) + 32
                    while idx < _2794:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3571 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3571 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3571]
                    mem[_3571 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3571]
                    mem[_3571 + 64] = stor11
                    require 1 < mem[_3571]
                    require 0 < mem[_3571]
                    if mem[_3571 + 44 len 20] == stor11:
                        require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3571]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _1874, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3571 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3571 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[_3571 + 132] = 64
                        mem[_3571 + 164] = mem[_3571]
                        idx = 0
                        s = _3571 + 32
                        t = _3571 + 196
                        while idx < mem[_3571]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3571 + (32 * mem[_3571]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4331 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4342 = mem[_4331]
                        require mem[_4331] <= test266151307()
                        require _4331 + mem[_4331] + 31 < _4331 + return_data.size
                        _4354 = mem[_4331 + mem[_4331]]
                        require mem[_4331 + mem[_4331]] <= test266151307()
                        require _4331 + ceil32(return_data.size) + (32 * mem[_4331 + mem[_4331]]) + 32 <= test266151307() and (32 * mem[_4331 + mem[_4331]]) + 32 >= 0
                        mem[64] = _4331 + ceil32(return_data.size) + (32 * mem[_4331 + mem[_4331]]) + 32
                        mem[_4331 + ceil32(return_data.size)] = _4354
                        require _4342 + (32 * _4354) + 32 <= return_data.size
                        idx = 0
                        s = _4331 + _4342 + 32
                        t = _4331 + ceil32(return_data.size) + 32
                        while idx < _4354:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4354 - 1 < _4354
                        _4723 = mem[(32 * _4354 - 1) + _4331 + ceil32(return_data.size) + 32]
                        _4724 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _4723
                        mem[mem[64] + 68] = 160
                        _4737 = mem[_3571]
                        mem[mem[64] + 164] = mem[_3571]
                        idx = 0
                        s = _3571 + 32
                        t = mem[64] + 196
                        while idx < _4737:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4724 + 100] = this.address
                        mem[_4724 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4724 + (32 * _4737) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4998 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5006 = mem[_4998]
                        require mem[_4998] <= test266151307()
                        require _4998 + mem[_4998] + 31 < _4998 + return_data.size
                        _5014 = mem[_4998 + mem[_4998]]
                        require mem[_4998 + mem[_4998]] <= test266151307()
                        require _4998 + ceil32(return_data.size) + (32 * mem[_4998 + mem[_4998]]) + 32 <= test266151307() and (32 * mem[_4998 + mem[_4998]]) + 32 >= 0
                        mem[64] = _4998 + ceil32(return_data.size) + (32 * mem[_4998 + mem[_4998]]) + 32
                        mem[_4998 + ceil32(return_data.size)] = _5014
                        require _5006 + (32 * _5014) + 32 <= return_data.size
                        idx = 0
                        s = _4998 + _5006 + 32
                        t = _4998 + ceil32(return_data.size) + 32
                        while idx < _5014:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3571]
                        _5246 = mem[_3571 + 64]
                        mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = _1874
                        mem[mem[64] + 100] = _4723
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5246), _1874, _4723, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5275 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5275] == mem[_5275]
                        require mem[_5275 + 32] == mem[_5275 + 32]
                        require mem[_5275 + 64] == mem[_5275 + 64]
                        if mem[_5275 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5275 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5275 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5275 + 64]
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
                mem[(2 * ceil32(return_data.size)) + 416] = 2
                mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                mem[(2 * ceil32(return_data.size)) + 480] = stor10
                if rewardTokenAddress == stor10:
                    mem[(2 * ceil32(return_data.size)) + 512] = 2
                    mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 576] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(2 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 740] = 0
                        mem[(2 * ceil32(return_data.size)) + 772] = 0
                        mem[(2 * ceil32(return_data.size)) + 804] = this.address
                        mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 612] = 32
                            mem[(4 * ceil32(return_data.size)) + 644] = 14
                            mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 612] = PID
                            mem[(4 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                totalDeposits += ext_call.return_data[64]
                                mem[(4 * ceil32(return_data.size)) + 608] = totalDeposits
                                mem[(4 * ceil32(return_data.size)) + 640] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 64],
                            mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 612] = 32
                            mem[(4 * ceil32(return_data.size)) + 644] = 27
                            mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 608
                           len (5 * ceil32(return_data.size)) + 100
                    mem[(2 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[(2 * ceil32(return_data.size)) + 644] = 64
                    mem[(2 * ceil32(return_data.size)) + 676] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = (2 * ceil32(return_data.size)) + 708
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 608
                    require return_data.size >= 32
                    _769 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                    _822 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 640
                    mem[(4 * ceil32(return_data.size)) + 608] = _822
                    require _769 + (32 * _822) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _769 + 640
                    t = (4 * ceil32(return_data.size)) + 640
                    while idx < _822:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _822 - 1 < _822
                    _1856 = mem[(32 * _822 - 1) + (4 * ceil32(return_data.size)) + 640]
                    _1857 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1856
                    mem[mem[64] + 68] = 160
                    _1892 = mem[(2 * ceil32(return_data.size)) + 512]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = mem[64] + 196
                    while idx < _1892:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1857 + 100] = this.address
                    mem[_1857 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1857 + (32 * _1892) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2751 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2769 = mem[_2751]
                    require mem[_2751] <= test266151307()
                    require _2751 + mem[_2751] + 31 < _2751 + return_data.size
                    _2785 = mem[_2751 + mem[_2751]]
                    require mem[_2751 + mem[_2751]] <= test266151307()
                    require _2751 + ceil32(return_data.size) + (32 * mem[_2751 + mem[_2751]]) + 32 <= test266151307() and (32 * mem[_2751 + mem[_2751]]) + 32 >= 0
                    mem[64] = _2751 + ceil32(return_data.size) + (32 * mem[_2751 + mem[_2751]]) + 32
                    mem[_2751 + ceil32(return_data.size)] = _2785
                    require _2769 + (32 * _2785) + 32 <= return_data.size
                    idx = 0
                    s = _2751 + _2769 + 32
                    t = _2751 + ceil32(return_data.size) + 32
                    while idx < _2785:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                    _3579 = mem[(2 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _1856
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3579), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1856, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3842 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3842] == mem[_3842]
                    require mem[_3842 + 32] == mem[_3842 + 32]
                    require mem[_3842 + 64] == mem[_3842 + 64]
                    if mem[_3842 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, mem[_3842 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_3842 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_3842 + 64]
                else:
                    mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[(2 * ceil32(return_data.size)) + 548] = 64
                    mem[(2 * ceil32(return_data.size)) + 580] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = (2 * ceil32(return_data.size)) + 612
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _770 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                    _823 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(4 * ceil32(return_data.size)) + 512] = _823
                    require _770 + (32 * _823) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _770 + 544
                    t = (4 * ceil32(return_data.size)) + 544
                    while idx < _823:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _823 - 1 < _823
                    _1858 = mem[(32 * _823 - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1858
                    mem[mem[64] + 68] = 160
                    _1893 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _1893:
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1858, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1893) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2752 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2770 = mem[_2752]
                    require mem[_2752] <= test266151307()
                    require _2752 + mem[_2752] + 31 < _2752 + return_data.size
                    _2786 = mem[_2752 + mem[_2752]]
                    require mem[_2752 + mem[_2752]] <= test266151307()
                    require _2752 + ceil32(return_data.size) + (32 * mem[_2752 + mem[_2752]]) + 32 <= test266151307() and (32 * mem[_2752 + mem[_2752]]) + 32 >= 0
                    mem[64] = _2752 + ceil32(return_data.size) + (32 * mem[_2752 + mem[_2752]]) + 32
                    mem[_2752 + ceil32(return_data.size)] = _2786
                    require _2770 + (32 * _2786) + 32 <= return_data.size
                    idx = 0
                    s = _2752 + _2770 + 32
                    t = _2752 + ceil32(return_data.size) + 32
                    while idx < _2786:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3559 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3559 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3559]
                    mem[_3559 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3559]
                    mem[_3559 + 64] = stor11
                    require 1 < mem[_3559]
                    require 0 < mem[_3559]
                    if mem[_3559 + 44 len 20] == stor11:
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3559]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _1858, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3559 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3559 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[_3559 + 132] = 64
                        mem[_3559 + 164] = mem[_3559]
                        idx = 0
                        s = _3559 + 32
                        t = _3559 + 196
                        while idx < mem[_3559]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3559 + (32 * mem[_3559]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4324 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4337 = mem[_4324]
                        require mem[_4324] <= test266151307()
                        require _4324 + mem[_4324] + 31 < _4324 + return_data.size
                        _4349 = mem[_4324 + mem[_4324]]
                        require mem[_4324 + mem[_4324]] <= test266151307()
                        require _4324 + ceil32(return_data.size) + (32 * mem[_4324 + mem[_4324]]) + 32 <= test266151307() and (32 * mem[_4324 + mem[_4324]]) + 32 >= 0
                        mem[64] = _4324 + ceil32(return_data.size) + (32 * mem[_4324 + mem[_4324]]) + 32
                        mem[_4324 + ceil32(return_data.size)] = _4349
                        require _4337 + (32 * _4349) + 32 <= return_data.size
                        idx = 0
                        s = _4324 + _4337 + 32
                        t = _4324 + ceil32(return_data.size) + 32
                        while idx < _4349:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4349 - 1 < _4349
                        _4715 = mem[(32 * _4349 - 1) + _4324 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _4715
                        mem[mem[64] + 68] = 160
                        _4733 = mem[_3559]
                        mem[mem[64] + 164] = mem[_3559]
                        idx = 0
                        s = _3559 + 32
                        t = mem[64] + 196
                        while idx < _4733:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _4715, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4733) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4993 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5002 = mem[_4993]
                        require mem[_4993] <= test266151307()
                        require _4993 + mem[_4993] + 31 < _4993 + return_data.size
                        _5010 = mem[_4993 + mem[_4993]]
                        require mem[_4993 + mem[_4993]] <= test266151307()
                        require _4993 + ceil32(return_data.size) + (32 * mem[_4993 + mem[_4993]]) + 32 <= test266151307() and (32 * mem[_4993 + mem[_4993]]) + 32 >= 0
                        mem[64] = _4993 + ceil32(return_data.size) + (32 * mem[_4993 + mem[_4993]]) + 32
                        mem[_4993 + ceil32(return_data.size)] = _5010
                        require _5002 + (32 * _5010) + 32 <= return_data.size
                        idx = 0
                        s = _4993 + _5002 + 32
                        t = _4993 + ceil32(return_data.size) + 32
                        while idx < _5010:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3559]
                        _5238 = mem[_3559 + 64]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = _1858
                        mem[mem[64] + 100] = _4715
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5238), _1858, _4715, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5271 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5271] == mem[_5271]
                        require mem[_5271 + 32] == mem[_5271 + 32]
                        require mem[_5271 + 64] == mem[_5271 + 64]
                        if mem[_5271 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5271 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5271 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5271 + 64]
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
                    mem[(2 * ceil32(return_data.size)) + 416] = 2
                    mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 480] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(2 * ceil32(return_data.size)) + 512] = 2
                        mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 576] = stor11
                        if rewardTokenAddress == stor11:
                            mem[(2 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 740] = 0
                            mem[(2 * ceil32(return_data.size)) + 772] = 0
                            mem[(2 * ceil32(return_data.size)) + 804] = this.address
                            mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 14
                                mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 612] = PID
                                mem[(4 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                    totalDeposits += ext_call.return_data[64]
                                    mem[(4 * ceil32(return_data.size)) + 608] = totalDeposits
                                    mem[(4 * ceil32(return_data.size)) + 640] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 64],
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 27
                                mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 608
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(2 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 644] = 64
                        mem[(2 * ceil32(return_data.size)) + 676] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = (2 * ceil32(return_data.size)) + 708
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 608
                        require return_data.size >= 32
                        _760 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                        _818 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                        mem[(4 * ceil32(return_data.size)) + 608] = _818
                        require _760 + (32 * _818) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _760 + 640
                        t = (4 * ceil32(return_data.size)) + 640
                        while idx < _818:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _818 - 1 < _818
                        _1848 = mem[(32 * _818 - 1) + (4 * ceil32(return_data.size)) + 640]
                        _1849 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1848
                        mem[mem[64] + 68] = 160
                        _1888 = mem[(2 * ceil32(return_data.size)) + 512]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = mem[64] + 196
                        while idx < _1888:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1849 + 100] = this.address
                        mem[_1849 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1849 + (32 * _1888) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2747 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2765 = mem[_2747]
                        require mem[_2747] <= test266151307()
                        require _2747 + mem[_2747] + 31 < _2747 + return_data.size
                        _2781 = mem[_2747 + mem[_2747]]
                        require mem[_2747 + mem[_2747]] <= test266151307()
                        require _2747 + ceil32(return_data.size) + (32 * mem[_2747 + mem[_2747]]) + 32 <= test266151307() and (32 * mem[_2747 + mem[_2747]]) + 32 >= 0
                        mem[64] = _2747 + ceil32(return_data.size) + (32 * mem[_2747 + mem[_2747]]) + 32
                        mem[_2747 + ceil32(return_data.size)] = _2781
                        require _2765 + (32 * _2781) + 32 <= return_data.size
                        idx = 0
                        s = _2747 + _2765 + 32
                        t = _2747 + ceil32(return_data.size) + 32
                        while idx < _2781:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                        _3575 = mem[(2 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _1848
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3575), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1848, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3840 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_3840] == mem[_3840]
                        require mem[_3840 + 32] == mem[_3840 + 32]
                        require mem[_3840 + 64] == mem[_3840 + 64]
                        if mem[_3840 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_3840 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_3840 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_3840 + 64]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 548] = 64
                        mem[(2 * ceil32(return_data.size)) + 580] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = (2 * ceil32(return_data.size)) + 612
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _761 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                        _819 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(4 * ceil32(return_data.size)) + 512] = _819
                        require _761 + (32 * _819) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _761 + 544
                        t = (4 * ceil32(return_data.size)) + 544
                        while idx < _819:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _819 - 1 < _819
                        _1850 = mem[(32 * _819 - 1) + (4 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1850
                        mem[mem[64] + 68] = 160
                        _1889 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _1889:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1850, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1889) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2748 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2766 = mem[_2748]
                        require mem[_2748] <= test266151307()
                        require _2748 + mem[_2748] + 31 < _2748 + return_data.size
                        _2782 = mem[_2748 + mem[_2748]]
                        require mem[_2748 + mem[_2748]] <= test266151307()
                        require _2748 + ceil32(return_data.size) + (32 * mem[_2748 + mem[_2748]]) + 32 <= test266151307() and (32 * mem[_2748 + mem[_2748]]) + 32 >= 0
                        mem[64] = _2748 + ceil32(return_data.size) + (32 * mem[_2748 + mem[_2748]]) + 32
                        mem[_2748 + ceil32(return_data.size)] = _2782
                        require _2766 + (32 * _2782) + 32 <= return_data.size
                        idx = 0
                        s = _2748 + _2766 + 32
                        t = _2748 + ceil32(return_data.size) + 32
                        while idx < _2782:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3553 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3553 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3553]
                        mem[_3553 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3553]
                        mem[_3553 + 64] = stor11
                        require 1 < mem[_3553]
                        require 0 < mem[_3553]
                        if mem[_3553 + 44 len 20] == stor11:
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3553]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _1850, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_3553 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3553 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_3553 + 132] = 64
                            mem[_3553 + 164] = mem[_3553]
                            idx = 0
                            s = _3553 + 32
                            t = _3553 + 196
                            while idx < mem[_3553]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3553 + (32 * mem[_3553]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4322 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4335 = mem[_4322]
                            require mem[_4322] <= test266151307()
                            require _4322 + mem[_4322] + 31 < _4322 + return_data.size
                            _4347 = mem[_4322 + mem[_4322]]
                            require mem[_4322 + mem[_4322]] <= test266151307()
                            require _4322 + ceil32(return_data.size) + (32 * mem[_4322 + mem[_4322]]) + 32 <= test266151307() and (32 * mem[_4322 + mem[_4322]]) + 32 >= 0
                            mem[64] = _4322 + ceil32(return_data.size) + (32 * mem[_4322 + mem[_4322]]) + 32
                            mem[_4322 + ceil32(return_data.size)] = _4347
                            require _4335 + (32 * _4347) + 32 <= return_data.size
                            idx = 0
                            s = _4322 + _4335 + 32
                            t = _4322 + ceil32(return_data.size) + 32
                            while idx < _4347:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4347 - 1 < _4347
                            _4711 = mem[(32 * _4347 - 1) + _4322 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _4711
                            mem[mem[64] + 68] = 160
                            _4731 = mem[_3553]
                            mem[mem[64] + 164] = mem[_3553]
                            idx = 0
                            s = _3553 + 32
                            t = mem[64] + 196
                            while idx < _4731:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4711, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4731) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4991 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5000 = mem[_4991]
                            require mem[_4991] <= test266151307()
                            require _4991 + mem[_4991] + 31 < _4991 + return_data.size
                            _5008 = mem[_4991 + mem[_4991]]
                            require mem[_4991 + mem[_4991]] <= test266151307()
                            require _4991 + ceil32(return_data.size) + (32 * mem[_4991 + mem[_4991]]) + 32 <= test266151307() and (32 * mem[_4991 + mem[_4991]]) + 32 >= 0
                            mem[64] = _4991 + ceil32(return_data.size) + (32 * mem[_4991 + mem[_4991]]) + 32
                            mem[_4991 + ceil32(return_data.size)] = _5008
                            require _5000 + (32 * _5008) + 32 <= return_data.size
                            idx = 0
                            s = _4991 + _5000 + 32
                            t = _4991 + ceil32(return_data.size) + 32
                            while idx < _5008:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3553]
                            _5234 = mem[_3553 + 64]
                            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _1850
                            mem[mem[64] + 100] = _4711
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5234), _1850, _4711, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5269 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5269] == mem[_5269]
                            require mem[_5269 + 32] == mem[_5269 + 32]
                            require mem[_5269 + 64] == mem[_5269 + 64]
                            if mem[_5269 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5269 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5269 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5269 + 64]
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
                    mem[(4 * ceil32(return_data.size)) + 416] = 2
                    mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 480] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(4 * ceil32(return_data.size)) + 512] = 2
                        mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 576] = stor11
                        if rewardTokenAddress == stor11:
                            mem[(4 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = this.address
                            mem[(4 * ceil32(return_data.size)) + 836] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            mem[(4 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 676 len 9 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                            totalDeposits += ext_call.return_data[64]
                            emit Reinvest(uint256 rg1, uint256 rg2):
                                          totalDeposits,
                                          totalSupply,
                                          mem[(6 * ceil32(return_data.size)) + 672 len 9 * ceil32(return_data.size)],
                        else:
                            mem[(4 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 644] = 64
                            mem[(4 * ceil32(return_data.size)) + 676] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 544
                            t = (4 * ceil32(return_data.size)) + 708
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 708 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 608
                            require return_data.size >= 32
                            _764 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                            _820 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                            mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require _764 + (32 * _820) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _764 + 640
                            t = (6 * ceil32(return_data.size)) + 640
                            while idx < _820:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _820 - 1 < _820
                            _1852 = mem[(32 * _820 - 1) + (6 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _1852
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 544
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1852, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2749 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2767 = mem[_2749]
                            require mem[_2749] <= test266151307()
                            require _2749 + mem[_2749] + 31 < _2749 + return_data.size
                            _2783 = mem[_2749 + mem[_2749]]
                            require mem[_2749 + mem[_2749]] <= test266151307()
                            require _2749 + ceil32(return_data.size) + (32 * mem[_2749 + mem[_2749]]) + 32 <= test266151307() and (32 * mem[_2749 + mem[_2749]]) + 32 >= 0
                            mem[64] = _2749 + ceil32(return_data.size) + (32 * mem[_2749 + mem[_2749]]) + 32
                            mem[_2749 + ceil32(return_data.size)] = _2783
                            require _2767 + (32 * _2783) + 32 <= return_data.size
                            idx = 0
                            s = _2749 + _2767 + 32
                            t = _2749 + ceil32(return_data.size) + 32
                            while idx < _2783:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                            _3577 = mem[(4 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _1852
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_3577), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1852, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3841 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_3841] == mem[_3841]
                            require mem[_3841 + 32] == mem[_3841 + 32]
                            require mem[_3841 + 64] == mem[_3841 + 64]
                            if mem[_3841 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_3841 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_3841 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_3841 + 64]
                            emit Reinvest(totalDeposits, totalSupply);
                    else:
                        mem[(4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 548] = 64
                        mem[(4 * ceil32(return_data.size)) + 580] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 448
                        t = (4 * ceil32(return_data.size)) + 612
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _765 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                        _821 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require _765 + (32 * _821) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _765 + 544
                        t = (6 * ceil32(return_data.size)) + 544
                        while idx < _821:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _821 - 1 < _821
                        _1854 = mem[(32 * _821 - 1) + (6 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1854
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 448
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1854, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2750 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2768 = mem[_2750]
                        require mem[_2750] <= test266151307()
                        require _2750 + mem[_2750] + 31 < _2750 + return_data.size
                        _2784 = mem[_2750 + mem[_2750]]
                        require mem[_2750 + mem[_2750]] <= test266151307()
                        require _2750 + ceil32(return_data.size) + (32 * mem[_2750 + mem[_2750]]) + 32 <= test266151307() and (32 * mem[_2750 + mem[_2750]]) + 32 >= 0
                        mem[64] = _2750 + ceil32(return_data.size) + (32 * mem[_2750 + mem[_2750]]) + 32
                        mem[_2750 + ceil32(return_data.size)] = _2784
                        require _2768 + (32 * _2784) + 32 <= return_data.size
                        idx = 0
                        s = _2750 + _2768 + 32
                        t = _2750 + ceil32(return_data.size) + 32
                        while idx < _2784:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3556 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3556 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3556]
                        mem[_3556 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3556]
                        mem[_3556 + 64] = stor11
                        require 1 < mem[_3556]
                        require 0 < mem[_3556]
                        if mem[_3556 + 44 len 20] == stor11:
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3556]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _1854, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_3556 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3556 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_3556 + 132] = 64
                            mem[_3556 + 164] = mem[_3556]
                            idx = 0
                            s = _3556 + 32
                            t = _3556 + 196
                            while idx < mem[_3556]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3556 + (32 * mem[_3556]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4323 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4336 = mem[_4323]
                            require mem[_4323] <= test266151307()
                            require _4323 + mem[_4323] + 31 < _4323 + return_data.size
                            _4348 = mem[_4323 + mem[_4323]]
                            require mem[_4323 + mem[_4323]] <= test266151307()
                            require _4323 + ceil32(return_data.size) + (32 * mem[_4323 + mem[_4323]]) + 32 <= test266151307() and (32 * mem[_4323 + mem[_4323]]) + 32 >= 0
                            mem[64] = _4323 + ceil32(return_data.size) + (32 * mem[_4323 + mem[_4323]]) + 32
                            mem[_4323 + ceil32(return_data.size)] = _4348
                            require _4336 + (32 * _4348) + 32 <= return_data.size
                            idx = 0
                            s = _4323 + _4336 + 32
                            t = _4323 + ceil32(return_data.size) + 32
                            while idx < _4348:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4348 - 1 < _4348
                            _4713 = mem[(32 * _4348 - 1) + _4323 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _4713
                            mem[mem[64] + 68] = 160
                            _4732 = mem[_3556]
                            mem[mem[64] + 164] = mem[_3556]
                            idx = 0
                            s = _3556 + 32
                            t = mem[64] + 196
                            while idx < _4732:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4713, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4732) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4992 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5001 = mem[_4992]
                            require mem[_4992] <= test266151307()
                            require _4992 + mem[_4992] + 31 < _4992 + return_data.size
                            _5009 = mem[_4992 + mem[_4992]]
                            require mem[_4992 + mem[_4992]] <= test266151307()
                            require _4992 + ceil32(return_data.size) + (32 * mem[_4992 + mem[_4992]]) + 32 <= test266151307() and (32 * mem[_4992 + mem[_4992]]) + 32 >= 0
                            mem[64] = _4992 + ceil32(return_data.size) + (32 * mem[_4992 + mem[_4992]]) + 32
                            mem[_4992 + ceil32(return_data.size)] = _5009
                            require _5001 + (32 * _5009) + 32 <= return_data.size
                            idx = 0
                            s = _4992 + _5001 + 32
                            t = _4992 + ceil32(return_data.size) + 32
                            while idx < _5009:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3556]
                            _5236 = mem[_3556 + 64]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _1854
                            mem[mem[64] + 100] = _4713
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5236), _1854, _4713, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5270 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5270] == mem[_5270]
                            require mem[_5270 + 32] == mem[_5270 + 32]
                            require mem[_5270 + 64] == mem[_5270 + 64]
                            if mem[_5270 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5270 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5270 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5270 + 64]
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
                mem[(4 * ceil32(return_data.size)) + 416] = 2
                mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                mem[(4 * ceil32(return_data.size)) + 480] = stor10
                if rewardTokenAddress == stor10:
                    mem[(4 * ceil32(return_data.size)) + 512] = 2
                    mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 576] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(4 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 740] = 0
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = this.address
                        mem[(4 * ceil32(return_data.size)) + 836] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        mem[(4 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 676 len 9 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                        totalDeposits += ext_call.return_data[64]
                        emit Reinvest(uint256 rg1, uint256 rg2):
                                      totalDeposits,
                                      totalSupply,
                                      mem[(6 * ceil32(return_data.size)) + 672 len 9 * ceil32(return_data.size)],
                    else:
                        mem[(4 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 644] = 64
                        mem[(4 * ceil32(return_data.size)) + 676] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 544
                        t = (4 * ceil32(return_data.size)) + 708
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 708 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 608
                        require return_data.size >= 32
                        _780 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                        _827 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 640
                        mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]
                        require _780 + (32 * _827) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _780 + 640
                        t = (6 * ceil32(return_data.size)) + 640
                        while idx < _827:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _827 - 1 < _827
                        _1864 = mem[(32 * _827 - 1) + (6 * ceil32(return_data.size)) + 640]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1864
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 544
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1864, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2757 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2773 = mem[_2757]
                        require mem[_2757] <= test266151307()
                        require _2757 + mem[_2757] + 31 < _2757 + return_data.size
                        _2789 = mem[_2757 + mem[_2757]]
                        require mem[_2757 + mem[_2757]] <= test266151307()
                        require _2757 + ceil32(return_data.size) + (32 * mem[_2757 + mem[_2757]]) + 32 <= test266151307() and (32 * mem[_2757 + mem[_2757]]) + 32 >= 0
                        mem[64] = _2757 + ceil32(return_data.size) + (32 * mem[_2757 + mem[_2757]]) + 32
                        mem[_2757 + ceil32(return_data.size)] = _2789
                        require _2773 + (32 * _2789) + 32 <= return_data.size
                        idx = 0
                        s = _2757 + _2773 + 32
                        t = _2757 + ceil32(return_data.size) + 32
                        while idx < _2789:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                        _3583 = mem[(4 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _1864
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3583), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1864, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3844 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_3844] == mem[_3844]
                        require mem[_3844 + 32] == mem[_3844 + 32]
                        require mem[_3844 + 64] == mem[_3844 + 64]
                        if mem[_3844 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_3844 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_3844 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_3844 + 64]
                        emit Reinvest(totalDeposits, totalSupply);
                else:
                    mem[(4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[(4 * ceil32(return_data.size)) + 548] = 64
                    mem[(4 * ceil32(return_data.size)) + 580] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 448
                    t = (4 * ceil32(return_data.size)) + 612
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _781 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                    _828 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require _781 + (32 * _828) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _781 + 544
                    t = (6 * ceil32(return_data.size)) + 544
                    while idx < _828:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _828 - 1 < _828
                    _1866 = mem[(32 * _828 - 1) + (6 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1866
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 448
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1866, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2758 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2774 = mem[_2758]
                    require mem[_2758] <= test266151307()
                    require _2758 + mem[_2758] + 31 < _2758 + return_data.size
                    _2790 = mem[_2758 + mem[_2758]]
                    require mem[_2758 + mem[_2758]] <= test266151307()
                    require _2758 + ceil32(return_data.size) + (32 * mem[_2758 + mem[_2758]]) + 32 <= test266151307() and (32 * mem[_2758 + mem[_2758]]) + 32 >= 0
                    mem[64] = _2758 + ceil32(return_data.size) + (32 * mem[_2758 + mem[_2758]]) + 32
                    mem[_2758 + ceil32(return_data.size)] = _2790
                    require _2774 + (32 * _2790) + 32 <= return_data.size
                    idx = 0
                    s = _2758 + _2774 + 32
                    t = _2758 + ceil32(return_data.size) + 32
                    while idx < _2790:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3565 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3565 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3565]
                    mem[_3565 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3565]
                    mem[_3565 + 64] = stor11
                    require 1 < mem[_3565]
                    require 0 < mem[_3565]
                    if mem[_3565 + 44 len 20] == stor11:
                        require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3565]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _1866, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3565 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3565 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[_3565 + 132] = 64
                        mem[_3565 + 164] = mem[_3565]
                        idx = 0
                        s = _3565 + 32
                        t = _3565 + 196
                        while idx < mem[_3565]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3565 + (32 * mem[_3565]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4329 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4340 = mem[_4329]
                        require mem[_4329] <= test266151307()
                        require _4329 + mem[_4329] + 31 < _4329 + return_data.size
                        _4352 = mem[_4329 + mem[_4329]]
                        require mem[_4329 + mem[_4329]] <= test266151307()
                        require _4329 + ceil32(return_data.size) + (32 * mem[_4329 + mem[_4329]]) + 32 <= test266151307() and (32 * mem[_4329 + mem[_4329]]) + 32 >= 0
                        mem[64] = _4329 + ceil32(return_data.size) + (32 * mem[_4329 + mem[_4329]]) + 32
                        mem[_4329 + ceil32(return_data.size)] = _4352
                        require _4340 + (32 * _4352) + 32 <= return_data.size
                        idx = 0
                        s = _4329 + _4340 + 32
                        t = _4329 + ceil32(return_data.size) + 32
                        while idx < _4352:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4352 - 1 < _4352
                        _4719 = mem[(32 * _4352 - 1) + _4329 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _4719
                        mem[mem[64] + 68] = 160
                        _4735 = mem[_3565]
                        mem[mem[64] + 164] = mem[_3565]
                        idx = 0
                        s = _3565 + 32
                        t = mem[64] + 196
                        while idx < _4735:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _4719, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4735) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4996 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5004 = mem[_4996]
                        require mem[_4996] <= test266151307()
                        require _4996 + mem[_4996] + 31 < _4996 + return_data.size
                        _5012 = mem[_4996 + mem[_4996]]
                        require mem[_4996 + mem[_4996]] <= test266151307()
                        require _4996 + ceil32(return_data.size) + (32 * mem[_4996 + mem[_4996]]) + 32 <= test266151307() and (32 * mem[_4996 + mem[_4996]]) + 32 >= 0
                        mem[64] = _4996 + ceil32(return_data.size) + (32 * mem[_4996 + mem[_4996]]) + 32
                        mem[_4996 + ceil32(return_data.size)] = _5012
                        require _5004 + (32 * _5012) + 32 <= return_data.size
                        idx = 0
                        s = _4996 + _5004 + 32
                        t = _4996 + ceil32(return_data.size) + 32
                        while idx < _5012:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3565]
                        _5242 = mem[_3565 + 64]
                        mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = _1866
                        mem[mem[64] + 100] = _4719
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5242), _1866, _4719, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5273 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5273] == mem[_5273]
                        require mem[_5273 + 32] == mem[_5273 + 32]
                        require mem[_5273 + 64] == mem[_5273 + 64]
                        if mem[_5273 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5273 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5273 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5273 + 64]
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
                    mem[(4 * ceil32(return_data.size)) + 416] = 2
                    mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 480] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(4 * ceil32(return_data.size)) + 512] = 2
                        mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 576] = stor11
                        if rewardTokenAddress == stor11:
                            mem[(4 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = this.address
                            mem[(4 * ceil32(return_data.size)) + 836] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            mem[(4 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 676 len 9 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                            totalDeposits += ext_call.return_data[64]
                            emit Reinvest(uint256 rg1, uint256 rg2):
                                          totalDeposits,
                                          totalSupply,
                                          mem[(6 * ceil32(return_data.size)) + 672 len 9 * ceil32(return_data.size)],
                        else:
                            mem[(4 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 644] = 64
                            mem[(4 * ceil32(return_data.size)) + 676] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 544
                            t = (4 * ceil32(return_data.size)) + 708
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 708 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 608
                            require return_data.size >= 32
                            _774 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                            _824 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                            mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require _774 + (32 * _824) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _774 + 640
                            t = (6 * ceil32(return_data.size)) + 640
                            while idx < _824:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _824 - 1 < _824
                            _1860 = mem[(32 * _824 - 1) + (6 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _1860
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 544
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1860, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2753 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2771 = mem[_2753]
                            require mem[_2753] <= test266151307()
                            require _2753 + mem[_2753] + 31 < _2753 + return_data.size
                            _2787 = mem[_2753 + mem[_2753]]
                            require mem[_2753 + mem[_2753]] <= test266151307()
                            require _2753 + ceil32(return_data.size) + (32 * mem[_2753 + mem[_2753]]) + 32 <= test266151307() and (32 * mem[_2753 + mem[_2753]]) + 32 >= 0
                            mem[64] = _2753 + ceil32(return_data.size) + (32 * mem[_2753 + mem[_2753]]) + 32
                            mem[_2753 + ceil32(return_data.size)] = _2787
                            require _2771 + (32 * _2787) + 32 <= return_data.size
                            idx = 0
                            s = _2753 + _2771 + 32
                            t = _2753 + ceil32(return_data.size) + 32
                            while idx < _2787:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                            _3581 = mem[(4 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _1860
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_3581), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1860, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3843 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_3843] == mem[_3843]
                            require mem[_3843 + 32] == mem[_3843 + 32]
                            require mem[_3843 + 64] == mem[_3843 + 64]
                            if mem[_3843 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_3843 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_3843 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_3843 + 64]
                            emit Reinvest(totalDeposits, totalSupply);
                    else:
                        mem[(4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 548] = 64
                        mem[(4 * ceil32(return_data.size)) + 580] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 448
                        t = (4 * ceil32(return_data.size)) + 612
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _775 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                        _825 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require _775 + (32 * _825) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _775 + 544
                        t = (6 * ceil32(return_data.size)) + 544
                        while idx < _825:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _825 - 1 < _825
                        _1862 = mem[(32 * _825 - 1) + (6 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1862
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 448
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1862, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2754 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2772 = mem[_2754]
                        require mem[_2754] <= test266151307()
                        require _2754 + mem[_2754] + 31 < _2754 + return_data.size
                        _2788 = mem[_2754 + mem[_2754]]
                        require mem[_2754 + mem[_2754]] <= test266151307()
                        require _2754 + ceil32(return_data.size) + (32 * mem[_2754 + mem[_2754]]) + 32 <= test266151307() and (32 * mem[_2754 + mem[_2754]]) + 32 >= 0
                        mem[64] = _2754 + ceil32(return_data.size) + (32 * mem[_2754 + mem[_2754]]) + 32
                        mem[_2754 + ceil32(return_data.size)] = _2788
                        require _2772 + (32 * _2788) + 32 <= return_data.size
                        idx = 0
                        s = _2754 + _2772 + 32
                        t = _2754 + ceil32(return_data.size) + 32
                        while idx < _2788:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3562 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3562 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3562]
                        mem[_3562 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3562]
                        mem[_3562 + 64] = stor11
                        require 1 < mem[_3562]
                        require 0 < mem[_3562]
                        if mem[_3562 + 44 len 20] == stor11:
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3562]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _1862, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_3562 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3562 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_3562 + 132] = 64
                            mem[_3562 + 164] = mem[_3562]
                            idx = 0
                            s = _3562 + 32
                            t = _3562 + 196
                            while idx < mem[_3562]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3562 + (32 * mem[_3562]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4325 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4338 = mem[_4325]
                            require mem[_4325] <= test266151307()
                            require _4325 + mem[_4325] + 31 < _4325 + return_data.size
                            _4350 = mem[_4325 + mem[_4325]]
                            require mem[_4325 + mem[_4325]] <= test266151307()
                            require _4325 + ceil32(return_data.size) + (32 * mem[_4325 + mem[_4325]]) + 32 <= test266151307() and (32 * mem[_4325 + mem[_4325]]) + 32 >= 0
                            mem[64] = _4325 + ceil32(return_data.size) + (32 * mem[_4325 + mem[_4325]]) + 32
                            mem[_4325 + ceil32(return_data.size)] = _4350
                            require _4338 + (32 * _4350) + 32 <= return_data.size
                            idx = 0
                            s = _4325 + _4338 + 32
                            t = _4325 + ceil32(return_data.size) + 32
                            while idx < _4350:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4350 - 1 < _4350
                            _4717 = mem[(32 * _4350 - 1) + _4325 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _4717
                            mem[mem[64] + 68] = 160
                            _4734 = mem[_3562]
                            mem[mem[64] + 164] = mem[_3562]
                            idx = 0
                            s = _3562 + 32
                            t = mem[64] + 196
                            while idx < _4734:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4717, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4734) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4994 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5003 = mem[_4994]
                            require mem[_4994] <= test266151307()
                            require _4994 + mem[_4994] + 31 < _4994 + return_data.size
                            _5011 = mem[_4994 + mem[_4994]]
                            require mem[_4994 + mem[_4994]] <= test266151307()
                            require _4994 + ceil32(return_data.size) + (32 * mem[_4994 + mem[_4994]]) + 32 <= test266151307() and (32 * mem[_4994 + mem[_4994]]) + 32 >= 0
                            mem[64] = _4994 + ceil32(return_data.size) + (32 * mem[_4994 + mem[_4994]]) + 32
                            mem[_4994 + ceil32(return_data.size)] = _5011
                            require _5003 + (32 * _5011) + 32 <= return_data.size
                            idx = 0
                            s = _4994 + _5003 + 32
                            t = _4994 + ceil32(return_data.size) + 32
                            while idx < _5011:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3562]
                            _5240 = mem[_3562 + 64]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _1862
                            mem[mem[64] + 100] = _4717
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5240), _1862, _4717, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5272 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5272] == mem[_5272]
                            require mem[_5272 + 32] == mem[_5272 + 32]
                            require mem[_5272 + 64] == mem[_5272 + 64]
                            if mem[_5272 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5272 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5272 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5272 + 64]
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
                    mem[(6 * ceil32(return_data.size)) + 416] = 2
                    mem[(6 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(6 * ceil32(return_data.size)) + 480] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(6 * ceil32(return_data.size)) + 512] = 2
                        mem[(6 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(6 * ceil32(return_data.size)) + 576] = stor11
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
                            mem[(6 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(6 * ceil32(return_data.size)) + 644] = 64
                            mem[(6 * ceil32(return_data.size)) + 676] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 544
                            t = (6 * ceil32(return_data.size)) + 708
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 708 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 608
                            require return_data.size >= 32
                            _1882 = mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (6 * ceil32(return_data.size)) + return_data.size + 608
                            _1884 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                            require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                            mem[(7 * ceil32(return_data.size)) + 608] = _1884
                            require _1882 + (32 * _1884) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + _1882 + 640
                            t = (7 * ceil32(return_data.size)) + 640
                            while idx < _1884:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1884 - 1 < _1884
                            _2727 = mem[(32 * _1884 - 1) + (7 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2727
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 544
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2727, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3697 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3707 = mem[_3697]
                            require mem[_3697] <= test266151307()
                            require _3697 + mem[_3697] + 31 < _3697 + return_data.size
                            _3713 = mem[_3697 + mem[_3697]]
                            require mem[_3697 + mem[_3697]] <= test266151307()
                            require _3697 + ceil32(return_data.size) + (32 * mem[_3697 + mem[_3697]]) + 32 <= test266151307() and (32 * mem[_3697 + mem[_3697]]) + 32 >= 0
                            mem[64] = _3697 + ceil32(return_data.size) + (32 * mem[_3697 + mem[_3697]]) + 32
                            mem[_3697 + ceil32(return_data.size)] = _3713
                            require _3707 + (32 * _3713) + 32 <= return_data.size
                            idx = 0
                            s = _3697 + _3707 + 32
                            t = _3697 + ceil32(return_data.size) + 32
                            while idx < _3713:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(6 * ceil32(return_data.size)) + 512]
                            _4333 = mem[(6 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(6 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2727
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4333), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2727, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4446 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_4446] == mem[_4446]
                            require mem[_4446 + 32] == mem[_4446 + 32]
                            require mem[_4446 + 64] == mem[_4446 + 64]
                            if mem[_4446 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_4446 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_4446 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_4446 + 64]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(6 * ceil32(return_data.size)) + 548] = 64
                        mem[(6 * ceil32(return_data.size)) + 580] = 2
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 448
                        t = (6 * ceil32(return_data.size)) + 612
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _1883 = mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (6 * ceil32(return_data.size)) + return_data.size + 512
                        _1885 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(7 * ceil32(return_data.size)) + 512] = _1885
                        require _1883 + (32 * _1885) + 32 <= return_data.size
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + _1883 + 544
                        t = (7 * ceil32(return_data.size)) + 544
                        while idx < _1885:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1885 - 1 < _1885
                        _2729 = mem[(32 * _1885 - 1) + (7 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _2729
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 448
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2729, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3698 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3708 = mem[_3698]
                        require mem[_3698] <= test266151307()
                        require _3698 + mem[_3698] + 31 < _3698 + return_data.size
                        _3714 = mem[_3698 + mem[_3698]]
                        require mem[_3698 + mem[_3698]] <= test266151307()
                        require _3698 + ceil32(return_data.size) + (32 * mem[_3698 + mem[_3698]]) + 32 <= test266151307() and (32 * mem[_3698 + mem[_3698]]) + 32 >= 0
                        mem[64] = _3698 + ceil32(return_data.size) + (32 * mem[_3698 + mem[_3698]]) + 32
                        mem[_3698 + ceil32(return_data.size)] = _3714
                        require _3708 + (32 * _3714) + 32 <= return_data.size
                        idx = 0
                        s = _3698 + _3708 + 32
                        t = _3698 + ceil32(return_data.size) + 32
                        while idx < _3714:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _4328 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_4328 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(6 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_4328]
                        mem[_4328 + 32] = mem[(6 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_4328]
                        mem[_4328 + 64] = stor11
                        require 1 < mem[_4328]
                        require 0 < mem[_4328]
                        if mem[_4328 + 44 len 20] == stor11:
                            require 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_4328]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(6 * ceil32(return_data.size)) + 480]), stor11, _2729, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_4328 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_4328 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_4328 + 132] = 64
                            mem[_4328 + 164] = mem[_4328]
                            idx = 0
                            s = _4328 + 32
                            t = _4328 + 196
                            while idx < mem[_4328]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _4328 + (32 * mem[_4328]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4727 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4728 = mem[_4727]
                            require mem[_4727] <= test266151307()
                            require _4727 + mem[_4727] + 31 < _4727 + return_data.size
                            _4729 = mem[_4727 + mem[_4727]]
                            require mem[_4727 + mem[_4727]] <= test266151307()
                            require _4727 + ceil32(return_data.size) + (32 * mem[_4727 + mem[_4727]]) + 32 <= test266151307() and (32 * mem[_4727 + mem[_4727]]) + 32 >= 0
                            mem[64] = _4727 + ceil32(return_data.size) + (32 * mem[_4727 + mem[_4727]]) + 32
                            mem[_4727 + ceil32(return_data.size)] = _4729
                            require _4728 + (32 * _4729) + 32 <= return_data.size
                            idx = 0
                            s = _4727 + _4728 + 32
                            t = _4727 + ceil32(return_data.size) + 32
                            while idx < _4729:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4729 - 1 < _4729
                            _4981 = mem[(32 * _4729 - 1) + _4727 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _4981
                            mem[mem[64] + 68] = 160
                            _4995 = mem[_4328]
                            mem[mem[64] + 164] = mem[_4328]
                            idx = 0
                            s = _4328 + 32
                            t = mem[64] + 196
                            while idx < _4995:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4981, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4995) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5251 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5252 = mem[_5251]
                            require mem[_5251] <= test266151307()
                            require _5251 + mem[_5251] + 31 < _5251 + return_data.size
                            _5253 = mem[_5251 + mem[_5251]]
                            require mem[_5251 + mem[_5251]] <= test266151307()
                            require _5251 + ceil32(return_data.size) + (32 * mem[_5251 + mem[_5251]]) + 32 <= test266151307() and (32 * mem[_5251 + mem[_5251]]) + 32 >= 0
                            mem[64] = _5251 + ceil32(return_data.size) + (32 * mem[_5251 + mem[_5251]]) + 32
                            mem[_5251 + ceil32(return_data.size)] = _5253
                            require _5252 + (32 * _5253) + 32 <= return_data.size
                            idx = 0
                            s = _5251 + _5252 + 32
                            t = _5251 + ceil32(return_data.size) + 32
                            while idx < _5253:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_4328]
                            _5382 = mem[_4328 + 64]
                            mem[mem[64] + 4] = mem[(6 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _2729
                            mem[mem[64] + 100] = _4981
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5382), _2729, _4981, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5385] == mem[_5385]
                            require mem[_5385 + 32] == mem[_5385 + 32]
                            require mem[_5385 + 64] == mem[_5385 + 64]
                            if mem[_5385 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5385 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5385 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5385 + 64]
                    emit Reinvest(totalDeposits, totalSupply);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalDeposits < totalSupply:
        revert with 0, 'deposit failed'
    if not uint8(REQUIRE_REINVEST_BEFORE_DEPOSIT):
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
        staticcall stakingContractAddress.pendingBamboo(uint256 rg1, address rg2) with:
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
                    mem[(2 * ceil32(return_data.size)) + 416] = 2
                    mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 480] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(2 * ceil32(return_data.size)) + 512] = 2
                        mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 576] = stor11
                        if rewardTokenAddress == stor11:
                            mem[(2 * ceil32(return_data.size)) + 676] = uint255(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 708] = uint255(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 740] = 0
                            mem[(2 * ceil32(return_data.size)) + 772] = 0
                            mem[(2 * ceil32(return_data.size)) + 804] = this.address
                            mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, 2 * ext_call.return_data[0], 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 14
                                mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 608
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 612] = PID
                            mem[(4 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 27
                                mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 608
                                   len (5 * ceil32(return_data.size)) + 100
                            totalDeposits += ext_call.return_data[64]
                            mem[(4 * ceil32(return_data.size)) + 608] = totalDeposits
                            mem[(4 * ceil32(return_data.size)) + 640] = totalSupply
                            emit Reinvest(uint256 rg1, uint256 rg2):
                                          mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 64],
                            mem[(4 * ceil32(return_data.size)) + 612] = msg.sender
                            mem[(4 * ceil32(return_data.size)) + 644] = this.address
                            mem[(4 * ceil32(return_data.size)) + 676] = arg1
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 19
                                mem[(4 * ceil32(return_data.size)) + 676] = 'transferFrom failed'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 608
                                   len (7 * ceil32(return_data.size)) + 100
                            if arg1 <= 0:
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 14
                                mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 608
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 612] = PID
                            mem[(4 * ceil32(return_data.size)) + 644] = arg1
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 612 len (7 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if totalSupply + arg1 >= totalSupply:
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += arg1
                                        mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                        emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                        if totalDeposits + arg1 >= totalDeposits:
                                            totalDeposits += arg1
                                            mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                            emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 27
                                mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 608
                                   len (7 * ceil32(return_data.size)) + 100
                            require totalSupply
                            if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 33
                                mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 708] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 608
                                   len (7 * ceil32(return_data.size)) + 132
                            if not totalSupply * totalDeposits:
                                if totalSupply + arg1 >= totalSupply:
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += arg1
                                        mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                        emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                        if totalDeposits + arg1 >= totalDeposits:
                                            totalDeposits += arg1
                                            mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                            emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 27
                                mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 608
                                   len (7 * ceil32(return_data.size)) + 100
                            if not arg1:
                                if totalDeposits <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require totalDeposits
                                if totalSupply + (0 / totalDeposits) >= totalSupply:
                                    totalSupply += 0 / totalDeposits
                                    if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += 0 / totalDeposits
                                        mem[(4 * ceil32(return_data.size)) + 672] = 0 / totalDeposits
                                        emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                        if totalDeposits + arg1 >= totalDeposits:
                                            totalDeposits += arg1
                                            mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                            emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                            else:
                                require arg1
                                if arg1 * totalSupply / arg1 != totalSupply:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 33
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (7 * ceil32(return_data.size)) + 132
                                if totalDeposits <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require totalDeposits
                                if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                    totalSupply += arg1 * totalSupply / totalDeposits
                                    if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                        mem[(4 * ceil32(return_data.size)) + 672] = arg1 * totalSupply / totalDeposits
                                        emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                        if totalDeposits + arg1 >= totalDeposits:
                                            totalDeposits += arg1
                                            mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                            emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                            mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 676] = 32
                            mem[(4 * ceil32(return_data.size)) + 708] = 27
                            mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 672
                               len (7 * ceil32(return_data.size)) + 100
                        mem[(2 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 612] = uint255(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 644] = 64
                        mem[(2 * ceil32(return_data.size)) + 676] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = (2 * ceil32(return_data.size)) + 708
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 2 * ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 608
                        require return_data.size >= 32
                        _869 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                        require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                        _908 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]) + 640
                        mem[(4 * ceil32(return_data.size)) + 608] = _908
                        require _869 + (32 * _908) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _869 + 640
                        t = (4 * ceil32(return_data.size)) + 640
                        while idx < _908:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _908 - 1 < _908
                        _2702 = mem[(32 * _908 - 1) + (4 * ceil32(return_data.size)) + 640]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                        mem[mem[64] + 36] = _2702
                        mem[mem[64] + 68] = 160
                        _2764 = mem[(2 * ceil32(return_data.size)) + 512]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = mem[64] + 196
                        while idx < _2764:
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
                            args 2 * ext_call.return_data[0], _2702, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2764) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3725 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3741 = mem[_3725]
                        require mem[_3725] <= test266151307()
                        require _3725 + mem[_3725] + 31 < _3725 + return_data.size
                        _3757 = mem[_3725 + mem[_3725]]
                        require mem[_3725 + mem[_3725]] <= test266151307()
                        require _3725 + ceil32(return_data.size) + (32 * mem[_3725 + mem[_3725]]) + 32 <= test266151307() and (32 * mem[_3725 + mem[_3725]]) + 32 >= 0
                        mem[64] = _3725 + ceil32(return_data.size) + (32 * mem[_3725 + mem[_3725]]) + 32
                        mem[_3725 + ceil32(return_data.size)] = _3757
                        require _3741 + (32 * _3757) + 32 <= return_data.size
                        idx = 0
                        s = _3725 + _3741 + 32
                        t = _3725 + ceil32(return_data.size) + 32
                        while idx < _3757:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                        _4779 = mem[(2 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = uint255(ext_call.return_data[0])
                        mem[mem[64] + 100] = _2702
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_4779), 2 * ext_call.return_data[0], _2702, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5037 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5037] == mem[_5037]
                        require mem[_5037 + 32] == mem[_5037 + 32]
                        require mem[_5037 + 64] == mem[_5037 + 64]
                        if mem[_5037 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5037 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5037 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5037 + 64]
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
                        _5412 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5412] == bool(mem[_5412])
                        if not mem[_5412]:
                            revert with 0, 'transferFrom failed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 516] = uint255(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 548] = 64
                        mem[(2 * ceil32(return_data.size)) + 580] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = (2 * ceil32(return_data.size)) + 612
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 2 * ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _870 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                        require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                        _909 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 544
                        mem[(4 * ceil32(return_data.size)) + 512] = _909
                        require _870 + (32 * _909) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _870 + 544
                        t = (4 * ceil32(return_data.size)) + 544
                        while idx < _909:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _909 - 1 < _909
                        _2704 = mem[(32 * _909 - 1) + (4 * ceil32(return_data.size)) + 544]
                        _2705 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                        mem[mem[64] + 36] = _2704
                        mem[mem[64] + 68] = 160
                        _2765 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _2765:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2705 + 100] = this.address
                        mem[_2705 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2705 + (32 * _2765) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3726 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3742 = mem[_3726]
                        require mem[_3726] <= test266151307()
                        require _3726 + mem[_3726] + 31 < _3726 + return_data.size
                        _3758 = mem[_3726 + mem[_3726]]
                        require mem[_3726 + mem[_3726]] <= test266151307()
                        require _3726 + ceil32(return_data.size) + (32 * mem[_3726 + mem[_3726]]) + 32 <= test266151307() and (32 * mem[_3726 + mem[_3726]]) + 32 >= 0
                        mem[64] = _3726 + ceil32(return_data.size) + (32 * mem[_3726 + mem[_3726]]) + 32
                        mem[_3726 + ceil32(return_data.size)] = _3758
                        require _3742 + (32 * _3758) + 32 <= return_data.size
                        idx = 0
                        s = _3726 + _3742 + 32
                        t = _3726 + ceil32(return_data.size) + 32
                        while idx < _3758:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _4764 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_4764 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_4764]
                        mem[_4764 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_4764]
                        mem[_4764 + 64] = stor11
                        require 1 < mem[_4764]
                        require 0 < mem[_4764]
                        if mem[_4764 + 44 len 20] == stor11:
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_4764]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2704, 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
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
                            mem[_4764 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_4764 + 100] = uint255(ext_call.return_data[0])
                            mem[_4764 + 132] = 64
                            mem[_4764 + 164] = mem[_4764]
                            idx = 0
                            s = _4764 + 32
                            t = _4764 + 196
                            while idx < mem[_4764]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _4764 + (32 * mem[_4764]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6717 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6768 = mem[_6717]
                            require mem[_6717] <= test266151307()
                            require _6717 + mem[_6717] + 31 < _6717 + return_data.size
                            _6828 = mem[_6717 + mem[_6717]]
                            require mem[_6717 + mem[_6717]] <= test266151307()
                            require _6717 + ceil32(return_data.size) + (32 * mem[_6717 + mem[_6717]]) + 32 <= test266151307() and (32 * mem[_6717 + mem[_6717]]) + 32 >= 0
                            mem[64] = _6717 + ceil32(return_data.size) + (32 * mem[_6717 + mem[_6717]]) + 32
                            mem[_6717 + ceil32(return_data.size)] = _6828
                            require _6768 + (32 * _6828) + 32 <= return_data.size
                            idx = 0
                            s = _6717 + _6768 + 32
                            t = _6717 + ceil32(return_data.size) + 32
                            while idx < _6828:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _6828 - 1 < _6828
                            _7383 = mem[(32 * _6828 - 1) + _6717 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                            mem[mem[64] + 36] = _7383
                            mem[mem[64] + 68] = 160
                            _7410 = mem[_4764]
                            mem[mem[64] + 164] = mem[_4764]
                            idx = 0
                            s = _4764 + 32
                            t = mem[64] + 196
                            while idx < _7410:
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
                                args 2 * ext_call.return_data[0], _7383, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7410) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7738 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7746 = mem[_7738]
                            require mem[_7738] <= test266151307()
                            require _7738 + mem[_7738] + 31 < _7738 + return_data.size
                            _7754 = mem[_7738 + mem[_7738]]
                            require mem[_7738 + mem[_7738]] <= test266151307()
                            require _7738 + ceil32(return_data.size) + (32 * mem[_7738 + mem[_7738]]) + 32 <= test266151307() and (32 * mem[_7738 + mem[_7738]]) + 32 >= 0
                            mem[64] = _7738 + ceil32(return_data.size) + (32 * mem[_7738 + mem[_7738]]) + 32
                            mem[_7738 + ceil32(return_data.size)] = _7754
                            require _7746 + (32 * _7754) + 32 <= return_data.size
                            idx = 0
                            s = _7738 + _7746 + 32
                            t = _7738 + ceil32(return_data.size) + 32
                            while idx < _7754:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_4764]
                            _8131 = mem[_4764 + 64]
                            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _2704
                            mem[mem[64] + 100] = _7383
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_8131), _2704, _7383, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8159 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_8159] == mem[_8159]
                            require mem[_8159 + 32] == mem[_8159 + 32]
                            require mem[_8159 + 64] == mem[_8159 + 64]
                            if mem[_8159 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_8159 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_8159 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_8159 + 64]
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
                            _8283 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8283] == bool(mem[_8283])
                            if not mem[_8283]:
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
                        mem[(2 * ceil32(return_data.size)) + 416] = 2
                        mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 480] = stor10
                        if rewardTokenAddress == stor10:
                            mem[(2 * ceil32(return_data.size)) + 512] = 2
                            mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                            mem[(2 * ceil32(return_data.size)) + 576] = stor11
                            if rewardTokenAddress == stor11:
                                mem[(2 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 740] = 0
                                mem[(2 * ceil32(return_data.size)) + 772] = 0
                                mem[(2 * ceil32(return_data.size)) + 804] = this.address
                                mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                mem[(2 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 14
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 612] = PID
                                mem[(4 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 27
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (5 * ceil32(return_data.size)) + 100
                                totalDeposits += ext_call.return_data[64]
                                mem[(4 * ceil32(return_data.size)) + 608] = totalDeposits
                                mem[(4 * ceil32(return_data.size)) + 640] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 64],
                                mem[(4 * ceil32(return_data.size)) + 612] = msg.sender
                                mem[(4 * ceil32(return_data.size)) + 644] = this.address
                                mem[(4 * ceil32(return_data.size)) + 676] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 19
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'transferFrom failed'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (7 * ceil32(return_data.size)) + 100
                                if arg1 <= 0:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 14
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 612] = PID
                                mem[(4 * ceil32(return_data.size)) + 644] = arg1
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (7 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 27
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (7 * ceil32(return_data.size)) + 100
                                require totalSupply
                                if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 33
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (7 * ceil32(return_data.size)) + 132
                                if not totalSupply * totalDeposits:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 27
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (7 * ceil32(return_data.size)) + 100
                                if not arg1:
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (0 / totalDeposits) >= totalSupply:
                                        totalSupply += 0 / totalDeposits
                                        if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += 0 / totalDeposits
                                            mem[(4 * ceil32(return_data.size)) + 672] = 0 / totalDeposits
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                else:
                                    require arg1
                                    if arg1 * totalSupply / arg1 != totalSupply:
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 33
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'w'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (7 * ceil32(return_data.size)) + 132
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                        totalSupply += arg1 * totalSupply / totalDeposits
                                        if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                            mem[(4 * ceil32(return_data.size)) + 672] = arg1 * totalSupply / totalDeposits
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 676] = 32
                                mem[(4 * ceil32(return_data.size)) + 708] = 27
                                mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 672
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(2 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 644] = 64
                            mem[(2 * ceil32(return_data.size)) + 676] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 544
                            t = (2 * ceil32(return_data.size)) + 708
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 608
                            require return_data.size >= 32
                            _861 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                            _904 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                            mem[(4 * ceil32(return_data.size)) + 608] = _904
                            require _861 + (32 * _904) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _861 + 640
                            t = (4 * ceil32(return_data.size)) + 640
                            while idx < _904:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _904 - 1 < _904
                            _2694 = mem[(32 * _904 - 1) + (4 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2694
                            mem[mem[64] + 68] = 160
                            _2760 = mem[(2 * ceil32(return_data.size)) + 512]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 544
                            t = mem[64] + 196
                            while idx < _2760:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2694, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2760) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3721 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3737 = mem[_3721]
                            require mem[_3721] <= test266151307()
                            require _3721 + mem[_3721] + 31 < _3721 + return_data.size
                            _3753 = mem[_3721 + mem[_3721]]
                            require mem[_3721 + mem[_3721]] <= test266151307()
                            require _3721 + ceil32(return_data.size) + (32 * mem[_3721 + mem[_3721]]) + 32 <= test266151307() and (32 * mem[_3721 + mem[_3721]]) + 32 >= 0
                            mem[64] = _3721 + ceil32(return_data.size) + (32 * mem[_3721 + mem[_3721]]) + 32
                            mem[_3721 + ceil32(return_data.size)] = _3753
                            require _3737 + (32 * _3753) + 32 <= return_data.size
                            idx = 0
                            s = _3721 + _3737 + 32
                            t = _3721 + ceil32(return_data.size) + 32
                            while idx < _3753:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                            _4775 = mem[(2 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2694
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4775), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2694, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5035 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5035] == mem[_5035]
                            require mem[_5035 + 32] == mem[_5035 + 32]
                            require mem[_5035 + 64] == mem[_5035 + 64]
                            if mem[_5035 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5035 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5035 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5035 + 64]
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
                            _5410 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5410] == bool(mem[_5410])
                            if not mem[_5410]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 548] = 64
                            mem[(2 * ceil32(return_data.size)) + 580] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 448
                            t = (2 * ceil32(return_data.size)) + 612
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _862 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                            _905 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                            mem[(4 * ceil32(return_data.size)) + 512] = _905
                            require _862 + (32 * _905) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _862 + 544
                            t = (4 * ceil32(return_data.size)) + 544
                            while idx < _905:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _905 - 1 < _905
                            _2696 = mem[(32 * _905 - 1) + (4 * ceil32(return_data.size)) + 544]
                            _2697 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2696
                            mem[mem[64] + 68] = 160
                            _2761 = mem[(2 * ceil32(return_data.size)) + 416]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 448
                            t = mem[64] + 196
                            while idx < _2761:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_2697 + 100] = this.address
                            mem[_2697 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2697 + (32 * _2761) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3722 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3738 = mem[_3722]
                            require mem[_3722] <= test266151307()
                            require _3722 + mem[_3722] + 31 < _3722 + return_data.size
                            _3754 = mem[_3722 + mem[_3722]]
                            require mem[_3722 + mem[_3722]] <= test266151307()
                            require _3722 + ceil32(return_data.size) + (32 * mem[_3722 + mem[_3722]]) + 32 <= test266151307() and (32 * mem[_3722 + mem[_3722]]) + 32 >= 0
                            mem[64] = _3722 + ceil32(return_data.size) + (32 * mem[_3722 + mem[_3722]]) + 32
                            mem[_3722 + ceil32(return_data.size)] = _3754
                            require _3738 + (32 * _3754) + 32 <= return_data.size
                            idx = 0
                            s = _3722 + _3738 + 32
                            t = _3722 + ceil32(return_data.size) + 32
                            while idx < _3754:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _4758 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_4758 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_4758]
                            mem[_4758 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_4758]
                            mem[_4758 + 64] = stor11
                            require 1 < mem[_4758]
                            require 0 < mem[_4758]
                            if mem[_4758 + 44 len 20] == stor11:
                                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 1 < mem[_4758]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2696, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                mem[_4758 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_4758 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[_4758 + 132] = 64
                                mem[_4758 + 164] = mem[_4758]
                                idx = 0
                                s = _4758 + 32
                                t = _4758 + 196
                                while idx < mem[_4758]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6713 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6758 = mem[_6713]
                                require mem[_6713] <= test266151307()
                                require _6713 + mem[_6713] + 31 < _6713 + return_data.size
                                _6824 = mem[_6713 + mem[_6713]]
                                require mem[_6713 + mem[_6713]] <= test266151307()
                                require _6713 + ceil32(return_data.size) + (32 * mem[_6713 + mem[_6713]]) + 32 <= test266151307() and (32 * mem[_6713 + mem[_6713]]) + 32 >= 0
                                mem[64] = _6713 + ceil32(return_data.size) + (32 * mem[_6713 + mem[_6713]]) + 32
                                mem[_6713 + ceil32(return_data.size)] = _6824
                                require _6758 + (32 * _6824) + 32 <= return_data.size
                                idx = 0
                                s = _6713 + _6758 + 32
                                t = _6713 + ceil32(return_data.size) + 32
                                while idx < _6824:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _6824 - 1 < _6824
                                _7379 = mem[(32 * _6824 - 1) + _6713 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _7379
                                mem[mem[64] + 68] = 160
                                _7408 = mem[_4758]
                                mem[mem[64] + 164] = mem[_4758]
                                idx = 0
                                s = _4758 + 32
                                t = mem[64] + 196
                                while idx < _7408:
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _7379, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7408) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7736 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7744 = mem[_7736]
                                require mem[_7736] <= test266151307()
                                require _7736 + mem[_7736] + 31 < _7736 + return_data.size
                                _7752 = mem[_7736 + mem[_7736]]
                                require mem[_7736 + mem[_7736]] <= test266151307()
                                require _7736 + ceil32(return_data.size) + (32 * mem[_7736 + mem[_7736]]) + 32 <= test266151307() and (32 * mem[_7736 + mem[_7736]]) + 32 >= 0
                                mem[64] = _7736 + ceil32(return_data.size) + (32 * mem[_7736 + mem[_7736]]) + 32
                                mem[_7736 + ceil32(return_data.size)] = _7752
                                require _7744 + (32 * _7752) + 32 <= return_data.size
                                idx = 0
                                s = _7736 + _7744 + 32
                                t = _7736 + ceil32(return_data.size) + 32
                                while idx < _7752:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 1 < mem[_4758]
                                _8127 = mem[_4758 + 64]
                                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                                mem[mem[64] + 68] = _2696
                                mem[mem[64] + 100] = _7379
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8127), _2696, _7379, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8157 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8157] == mem[_8157]
                                require mem[_8157 + 32] == mem[_8157 + 32]
                                require mem[_8157 + 64] == mem[_8157 + 64]
                                if mem[_8157 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_8157 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8157 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8157 + 64]
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
                                _8281 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8281] == bool(mem[_8281])
                                if not mem[_8281]:
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
                        mem[(4 * ceil32(return_data.size)) + 416] = 2
                        mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 480] = stor10
                        if rewardTokenAddress == stor10:
                            mem[(4 * ceil32(return_data.size)) + 512] = 2
                            mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                            mem[(4 * ceil32(return_data.size)) + 576] = stor11
                            if rewardTokenAddress == stor11:
                                mem[(4 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 740] = 0
                                mem[(4 * ceil32(return_data.size)) + 772] = 0
                                mem[(4 * ceil32(return_data.size)) + 804] = this.address
                                mem[(4 * ceil32(return_data.size)) + 836] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                mem[(4 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                mem[(6 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 676 len 9 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                totalDeposits += ext_call.return_data[64]
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              totalDeposits,
                                              totalSupply,
                                              mem[(6 * ceil32(return_data.size)) + 672 len 9 * ceil32(return_data.size)],
                                mem[(6 * ceil32(return_data.size)) + 612] = msg.sender
                                mem[(6 * ceil32(return_data.size)) + 644] = this.address
                                mem[(6 * ceil32(return_data.size)) + 676] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1, mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 612] = 32
                                    mem[(8 * ceil32(return_data.size)) + 644] = 19
                                    mem[(8 * ceil32(return_data.size)) + 676] = 'transferFrom failed'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 608
                                       len (13 * ceil32(return_data.size)) + 100
                                if arg1 <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 612] = 32
                                    mem[(8 * ceil32(return_data.size)) + 644] = 14
                                    mem[(8 * ceil32(return_data.size)) + 676] = 'amount too low'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 608
                                       len (13 * ceil32(return_data.size)) + 100
                                mem[(8 * ceil32(return_data.size)) + 612] = PID
                                mem[(8 * ceil32(return_data.size)) + 644] = arg1
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 612 len (13 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 612] = 32
                                    mem[(8 * ceil32(return_data.size)) + 644] = 27
                                    mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 608
                                       len (13 * ceil32(return_data.size)) + 100
                                require totalSupply
                                if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                    mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 612] = 32
                                    mem[(8 * ceil32(return_data.size)) + 644] = 33
                                    mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'w'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 608
                                       len (13 * ceil32(return_data.size)) + 132
                                if not totalSupply * totalDeposits:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 612] = 32
                                    mem[(8 * ceil32(return_data.size)) + 644] = 27
                                    mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 608
                                       len (13 * ceil32(return_data.size)) + 100
                                if not arg1:
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (0 / totalDeposits) >= totalSupply:
                                        totalSupply += 0 / totalDeposits
                                        if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += 0 / totalDeposits
                                            mem[(8 * ceil32(return_data.size)) + 672] = 0 / totalDeposits
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 672] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                else:
                                    require arg1
                                    if arg1 * totalSupply / arg1 != totalSupply:
                                        mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 612] = 32
                                        mem[(8 * ceil32(return_data.size)) + 644] = 33
                                        mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'w'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 608
                                           len (13 * ceil32(return_data.size)) + 132
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                        totalSupply += arg1 * totalSupply / totalDeposits
                                        if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                            mem[(8 * ceil32(return_data.size)) + 672] = arg1 * totalSupply / totalDeposits
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 672] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(8 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 676] = 32
                                mem[(8 * ceil32(return_data.size)) + 708] = 27
                                mem[(8 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 672
                                   len (13 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 644] = 64
                            mem[(4 * ceil32(return_data.size)) + 676] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 544
                            t = (4 * ceil32(return_data.size)) + 708
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 708 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 608
                            require return_data.size >= 32
                            _865 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                            _906 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                            mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require _865 + (32 * _906) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _865 + 640
                            t = (6 * ceil32(return_data.size)) + 640
                            while idx < _906:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _906 - 1 < _906
                            _2698 = mem[(32 * _906 - 1) + (6 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2698
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 544
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2698, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3723 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3739 = mem[_3723]
                            require mem[_3723] <= test266151307()
                            require _3723 + mem[_3723] + 31 < _3723 + return_data.size
                            _3755 = mem[_3723 + mem[_3723]]
                            require mem[_3723 + mem[_3723]] <= test266151307()
                            require _3723 + ceil32(return_data.size) + (32 * mem[_3723 + mem[_3723]]) + 32 <= test266151307() and (32 * mem[_3723 + mem[_3723]]) + 32 >= 0
                            mem[64] = _3723 + ceil32(return_data.size) + (32 * mem[_3723 + mem[_3723]]) + 32
                            mem[_3723 + ceil32(return_data.size)] = _3755
                            require _3739 + (32 * _3755) + 32 <= return_data.size
                            idx = 0
                            s = _3723 + _3739 + 32
                            t = _3723 + ceil32(return_data.size) + 32
                            while idx < _3755:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                            _4777 = mem[(4 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2698
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4777), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2698, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5036 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5036] == mem[_5036]
                            require mem[_5036 + 32] == mem[_5036 + 32]
                            require mem[_5036 + 64] == mem[_5036 + 64]
                            if mem[_5036 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5036 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5036 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5036 + 64]
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
                            _5411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5411] == bool(mem[_5411])
                            if not mem[_5411]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 548] = 64
                            mem[(4 * ceil32(return_data.size)) + 580] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 448
                            t = (4 * ceil32(return_data.size)) + 612
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _866 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                            _907 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                            mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                            require _866 + (32 * _907) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _866 + 544
                            t = (6 * ceil32(return_data.size)) + 544
                            while idx < _907:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _907 - 1 < _907
                            _2700 = mem[(32 * _907 - 1) + (6 * ceil32(return_data.size)) + 544]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2700
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 448
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2700, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3724 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3740 = mem[_3724]
                            require mem[_3724] <= test266151307()
                            require _3724 + mem[_3724] + 31 < _3724 + return_data.size
                            _3756 = mem[_3724 + mem[_3724]]
                            require mem[_3724 + mem[_3724]] <= test266151307()
                            require _3724 + ceil32(return_data.size) + (32 * mem[_3724 + mem[_3724]]) + 32 <= test266151307() and (32 * mem[_3724 + mem[_3724]]) + 32 >= 0
                            mem[64] = _3724 + ceil32(return_data.size) + (32 * mem[_3724 + mem[_3724]]) + 32
                            mem[_3724 + ceil32(return_data.size)] = _3756
                            require _3740 + (32 * _3756) + 32 <= return_data.size
                            idx = 0
                            s = _3724 + _3740 + 32
                            t = _3724 + ceil32(return_data.size) + 32
                            while idx < _3756:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _4761 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_4761 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_4761]
                            mem[_4761 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_4761]
                            mem[_4761 + 64] = stor11
                            require 1 < mem[_4761]
                            require 0 < mem[_4761]
                            if mem[_4761 + 44 len 20] == stor11:
                                require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 1 < mem[_4761]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _2700, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                mem[_4761 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_4761 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[_4761 + 132] = 64
                                mem[_4761 + 164] = mem[_4761]
                                idx = 0
                                s = _4761 + 32
                                t = _4761 + 196
                                while idx < mem[_4761]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _4761 + (32 * mem[_4761]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6715 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6763 = mem[_6715]
                                require mem[_6715] <= test266151307()
                                require _6715 + mem[_6715] + 31 < _6715 + return_data.size
                                _6826 = mem[_6715 + mem[_6715]]
                                require mem[_6715 + mem[_6715]] <= test266151307()
                                require _6715 + ceil32(return_data.size) + (32 * mem[_6715 + mem[_6715]]) + 32 <= test266151307() and (32 * mem[_6715 + mem[_6715]]) + 32 >= 0
                                mem[64] = _6715 + ceil32(return_data.size) + (32 * mem[_6715 + mem[_6715]]) + 32
                                mem[_6715 + ceil32(return_data.size)] = _6826
                                require _6763 + (32 * _6826) + 32 <= return_data.size
                                idx = 0
                                s = _6715 + _6763 + 32
                                t = _6715 + ceil32(return_data.size) + 32
                                while idx < _6826:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _6826 - 1 < _6826
                                _7381 = mem[(32 * _6826 - 1) + _6715 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _7381
                                mem[mem[64] + 68] = 160
                                _7409 = mem[_4761]
                                mem[mem[64] + 164] = mem[_4761]
                                idx = 0
                                s = _4761 + 32
                                t = mem[64] + 196
                                while idx < _7409:
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _7381, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7409) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7737 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7745 = mem[_7737]
                                require mem[_7737] <= test266151307()
                                require _7737 + mem[_7737] + 31 < _7737 + return_data.size
                                _7753 = mem[_7737 + mem[_7737]]
                                require mem[_7737 + mem[_7737]] <= test266151307()
                                require _7737 + ceil32(return_data.size) + (32 * mem[_7737 + mem[_7737]]) + 32 <= test266151307() and (32 * mem[_7737 + mem[_7737]]) + 32 >= 0
                                mem[64] = _7737 + ceil32(return_data.size) + (32 * mem[_7737 + mem[_7737]]) + 32
                                mem[_7737 + ceil32(return_data.size)] = _7753
                                require _7745 + (32 * _7753) + 32 <= return_data.size
                                idx = 0
                                s = _7737 + _7745 + 32
                                t = _7737 + ceil32(return_data.size) + 32
                                while idx < _7753:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 1 < mem[_4761]
                                _8129 = mem[_4761 + 64]
                                mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                                mem[mem[64] + 68] = _2700
                                mem[mem[64] + 100] = _7381
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8129), _2700, _7381, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8158 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8158] == mem[_8158]
                                require mem[_8158 + 32] == mem[_8158 + 32]
                                require mem[_8158 + 64] == mem[_8158 + 64]
                                if mem[_8158 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_8158 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8158 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8158 + 64]
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
                                _8282 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8282] == bool(mem[_8282])
                                if not mem[_8282]:
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
                        mem[(2 * ceil32(return_data.size)) + 416] = 2
                        mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 480] = stor10
                        if rewardTokenAddress == stor10:
                            mem[(2 * ceil32(return_data.size)) + 512] = 2
                            mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                            mem[(2 * ceil32(return_data.size)) + 576] = stor11
                            if rewardTokenAddress == stor11:
                                mem[(2 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 740] = 0
                                mem[(2 * ceil32(return_data.size)) + 772] = 0
                                mem[(2 * ceil32(return_data.size)) + 804] = this.address
                                mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                mem[(2 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 14
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 612] = PID
                                mem[(4 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 27
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (5 * ceil32(return_data.size)) + 100
                                totalDeposits += ext_call.return_data[64]
                                mem[(4 * ceil32(return_data.size)) + 608] = totalDeposits
                                mem[(4 * ceil32(return_data.size)) + 640] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 64],
                                mem[(4 * ceil32(return_data.size)) + 612] = msg.sender
                                mem[(4 * ceil32(return_data.size)) + 644] = this.address
                                mem[(4 * ceil32(return_data.size)) + 676] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 19
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'transferFrom failed'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (7 * ceil32(return_data.size)) + 100
                                if arg1 <= 0:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 14
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 612] = PID
                                mem[(4 * ceil32(return_data.size)) + 644] = arg1
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (7 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 27
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (7 * ceil32(return_data.size)) + 100
                                require totalSupply
                                if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 33
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (7 * ceil32(return_data.size)) + 132
                                if not totalSupply * totalDeposits:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 27
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (7 * ceil32(return_data.size)) + 100
                                if not arg1:
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (0 / totalDeposits) >= totalSupply:
                                        totalSupply += 0 / totalDeposits
                                        if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += 0 / totalDeposits
                                            mem[(4 * ceil32(return_data.size)) + 672] = 0 / totalDeposits
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                else:
                                    require arg1
                                    if arg1 * totalSupply / arg1 != totalSupply:
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 33
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'w'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (7 * ceil32(return_data.size)) + 132
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                        totalSupply += arg1 * totalSupply / totalDeposits
                                        if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                            mem[(4 * ceil32(return_data.size)) + 672] = arg1 * totalSupply / totalDeposits
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 676] = 32
                                mem[(4 * ceil32(return_data.size)) + 708] = 27
                                mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 672
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(2 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 644] = 64
                            mem[(2 * ceil32(return_data.size)) + 676] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 544
                            t = (2 * ceil32(return_data.size)) + 708
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 608
                            require return_data.size >= 32
                            _846 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                            _898 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 640
                            mem[(4 * ceil32(return_data.size)) + 608] = _898
                            require _846 + (32 * _898) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _846 + 640
                            t = (4 * ceil32(return_data.size)) + 640
                            while idx < _898:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _898 - 1 < _898
                            _2682 = mem[(32 * _898 - 1) + (4 * ceil32(return_data.size)) + 640]
                            _2683 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2682
                            mem[mem[64] + 68] = 160
                            _2754 = mem[(2 * ceil32(return_data.size)) + 512]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 544
                            t = mem[64] + 196
                            while idx < _2754:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_2683 + 100] = this.address
                            mem[_2683 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2683 + (32 * _2754) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3713 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3731 = mem[_3713]
                            require mem[_3713] <= test266151307()
                            require _3713 + mem[_3713] + 31 < _3713 + return_data.size
                            _3747 = mem[_3713 + mem[_3713]]
                            require mem[_3713 + mem[_3713]] <= test266151307()
                            require _3713 + ceil32(return_data.size) + (32 * mem[_3713 + mem[_3713]]) + 32 <= test266151307() and (32 * mem[_3713 + mem[_3713]]) + 32 >= 0
                            mem[64] = _3713 + ceil32(return_data.size) + (32 * mem[_3713 + mem[_3713]]) + 32
                            mem[_3713 + ceil32(return_data.size)] = _3747
                            require _3731 + (32 * _3747) + 32 <= return_data.size
                            idx = 0
                            s = _3713 + _3731 + 32
                            t = _3713 + ceil32(return_data.size) + 32
                            while idx < _3747:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                            _4769 = mem[(2 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2682
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4769), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2682, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5032 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5032] == mem[_5032]
                            require mem[_5032 + 32] == mem[_5032 + 32]
                            require mem[_5032 + 64] == mem[_5032 + 64]
                            if mem[_5032 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5032 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5032 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5032 + 64]
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
                            _5406 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5406] == bool(mem[_5406])
                            if not mem[_5406]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 548] = 64
                            mem[(2 * ceil32(return_data.size)) + 580] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 448
                            t = (2 * ceil32(return_data.size)) + 612
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _847 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                            _899 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544
                            mem[(4 * ceil32(return_data.size)) + 512] = _899
                            require _847 + (32 * _899) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _847 + 544
                            t = (4 * ceil32(return_data.size)) + 544
                            while idx < _899:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _899 - 1 < _899
                            _2684 = mem[(32 * _899 - 1) + (4 * ceil32(return_data.size)) + 544]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2684
                            mem[mem[64] + 68] = 160
                            _2755 = mem[(2 * ceil32(return_data.size)) + 416]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 448
                            t = mem[64] + 196
                            while idx < _2755:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2684, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2755) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3714 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3732 = mem[_3714]
                            require mem[_3714] <= test266151307()
                            require _3714 + mem[_3714] + 31 < _3714 + return_data.size
                            _3748 = mem[_3714 + mem[_3714]]
                            require mem[_3714 + mem[_3714]] <= test266151307()
                            require _3714 + ceil32(return_data.size) + (32 * mem[_3714 + mem[_3714]]) + 32 <= test266151307() and (32 * mem[_3714 + mem[_3714]]) + 32 >= 0
                            mem[64] = _3714 + ceil32(return_data.size) + (32 * mem[_3714 + mem[_3714]]) + 32
                            mem[_3714 + ceil32(return_data.size)] = _3748
                            require _3732 + (32 * _3748) + 32 <= return_data.size
                            idx = 0
                            s = _3714 + _3732 + 32
                            t = _3714 + ceil32(return_data.size) + 32
                            while idx < _3748:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _4749 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_4749 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_4749]
                            mem[_4749 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_4749]
                            mem[_4749 + 64] = stor11
                            require 1 < mem[_4749]
                            require 0 < mem[_4749]
                            if mem[_4749 + 44 len 20] == stor11:
                                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 1 < mem[_4749]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2684, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                mem[_4749 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_4749 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[_4749 + 132] = 64
                                mem[_4749 + 164] = mem[_4749]
                                idx = 0
                                s = _4749 + 32
                                t = _4749 + 196
                                while idx < mem[_4749]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _4749 + (32 * mem[_4749]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6704 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6742 = mem[_6704]
                                require mem[_6704] <= test266151307()
                                require _6704 + mem[_6704] + 31 < _6704 + return_data.size
                                _6817 = mem[_6704 + mem[_6704]]
                                require mem[_6704 + mem[_6704]] <= test266151307()
                                require _6704 + ceil32(return_data.size) + (32 * mem[_6704 + mem[_6704]]) + 32 <= test266151307() and (32 * mem[_6704 + mem[_6704]]) + 32 >= 0
                                mem[64] = _6704 + ceil32(return_data.size) + (32 * mem[_6704 + mem[_6704]]) + 32
                                mem[_6704 + ceil32(return_data.size)] = _6817
                                require _6742 + (32 * _6817) + 32 <= return_data.size
                                idx = 0
                                s = _6704 + _6742 + 32
                                t = _6704 + ceil32(return_data.size) + 32
                                while idx < _6817:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _6817 - 1 < _6817
                                _7372 = mem[(32 * _6817 - 1) + _6704 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _7372
                                mem[mem[64] + 68] = 160
                                _7405 = mem[_4749]
                                mem[mem[64] + 164] = mem[_4749]
                                idx = 0
                                s = _4749 + 32
                                t = mem[64] + 196
                                while idx < _7405:
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _7372, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7405) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7732 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7741 = mem[_7732]
                                require mem[_7732] <= test266151307()
                                require _7732 + mem[_7732] + 31 < _7732 + return_data.size
                                _7749 = mem[_7732 + mem[_7732]]
                                require mem[_7732 + mem[_7732]] <= test266151307()
                                require _7732 + ceil32(return_data.size) + (32 * mem[_7732 + mem[_7732]]) + 32 <= test266151307() and (32 * mem[_7732 + mem[_7732]]) + 32 >= 0
                                mem[64] = _7732 + ceil32(return_data.size) + (32 * mem[_7732 + mem[_7732]]) + 32
                                mem[_7732 + ceil32(return_data.size)] = _7749
                                require _7741 + (32 * _7749) + 32 <= return_data.size
                                idx = 0
                                s = _7732 + _7741 + 32
                                t = _7732 + ceil32(return_data.size) + 32
                                while idx < _7749:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 1 < mem[_4749]
                                _8121 = mem[_4749 + 64]
                                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                                mem[mem[64] + 68] = _2684
                                mem[mem[64] + 100] = _7372
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8121), _2684, _7372, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8154 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8154] == mem[_8154]
                                require mem[_8154 + 32] == mem[_8154 + 32]
                                require mem[_8154 + 64] == mem[_8154 + 64]
                                if mem[_8154 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_8154 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8154 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8154 + 64]
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
                                _8278 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8278] == bool(mem[_8278])
                                if not mem[_8278]:
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
                            mem[(2 * ceil32(return_data.size)) + 416] = 2
                            mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                            mem[(2 * ceil32(return_data.size)) + 480] = stor10
                            if rewardTokenAddress == stor10:
                                mem[(2 * ceil32(return_data.size)) + 512] = 2
                                mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                                mem[(2 * ceil32(return_data.size)) + 576] = stor11
                                if rewardTokenAddress == stor11:
                                    mem[(2 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(2 * ceil32(return_data.size)) + 740] = 0
                                    mem[(2 * ceil32(return_data.size)) + 772] = 0
                                    mem[(2 * ceil32(return_data.size)) + 804] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                    mem[(2 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 14
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (5 * ceil32(return_data.size)) + 100
                                    mem[(4 * ceil32(return_data.size)) + 612] = PID
                                    mem[(4 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 27
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (5 * ceil32(return_data.size)) + 100
                                    totalDeposits += ext_call.return_data[64]
                                    mem[(4 * ceil32(return_data.size)) + 608] = totalDeposits
                                    mem[(4 * ceil32(return_data.size)) + 640] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 64],
                                    mem[(4 * ceil32(return_data.size)) + 612] = msg.sender
                                    mem[(4 * ceil32(return_data.size)) + 644] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 676] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 19
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'transferFrom failed'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (7 * ceil32(return_data.size)) + 100
                                    if arg1 <= 0:
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 14
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (7 * ceil32(return_data.size)) + 100
                                    mem[(4 * ceil32(return_data.size)) + 612] = PID
                                    mem[(4 * ceil32(return_data.size)) + 644] = arg1
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 612 len (7 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalSupply:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                    emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 27
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (7 * ceil32(return_data.size)) + 100
                                    require totalSupply
                                    if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 33
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'w'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (7 * ceil32(return_data.size)) + 132
                                    if not totalSupply * totalDeposits:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                    emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 27
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (7 * ceil32(return_data.size)) + 100
                                    if not arg1:
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (0 / totalDeposits) >= totalSupply:
                                            totalSupply += 0 / totalDeposits
                                            if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += 0 / totalDeposits
                                                mem[(4 * ceil32(return_data.size)) + 672] = 0 / totalDeposits
                                                emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                                    emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                    else:
                                        require arg1
                                        if arg1 * totalSupply / arg1 != totalSupply:
                                            mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 612] = 32
                                            mem[(4 * ceil32(return_data.size)) + 644] = 33
                                            mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                            mem[(4 * ceil32(return_data.size)) + 708] = 'w'
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + 608
                                               len (7 * ceil32(return_data.size)) + 132
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                            totalSupply += arg1 * totalSupply / totalDeposits
                                            if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                                mem[(4 * ceil32(return_data.size)) + 672] = arg1 * totalSupply / totalDeposits
                                                emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                                    emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (7 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                                    mem[(4 * ceil32(return_data.size)) + 708] = 27
                                    mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 672
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(2 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 644] = 64
                                mem[(2 * ceil32(return_data.size)) + 676] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 544
                                t = (2 * ceil32(return_data.size)) + 708
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 608
                                require return_data.size >= 32
                                _838 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                                _894 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                                mem[(4 * ceil32(return_data.size)) + 608] = _894
                                require _838 + (32 * _894) + 32 <= return_data.size
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + _838 + 640
                                t = (4 * ceil32(return_data.size)) + 640
                                while idx < _894:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _894 - 1 < _894
                                _2674 = mem[(32 * _894 - 1) + (4 * ceil32(return_data.size)) + 640]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2674
                                mem[mem[64] + 68] = 160
                                _2750 = mem[(2 * ceil32(return_data.size)) + 512]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 544
                                t = mem[64] + 196
                                while idx < _2750:
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2674, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2750) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3709 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3727 = mem[_3709]
                                require mem[_3709] <= test266151307()
                                require _3709 + mem[_3709] + 31 < _3709 + return_data.size
                                _3743 = mem[_3709 + mem[_3709]]
                                require mem[_3709 + mem[_3709]] <= test266151307()
                                require _3709 + ceil32(return_data.size) + (32 * mem[_3709 + mem[_3709]]) + 32 <= test266151307() and (32 * mem[_3709 + mem[_3709]]) + 32 >= 0
                                mem[64] = _3709 + ceil32(return_data.size) + (32 * mem[_3709 + mem[_3709]]) + 32
                                mem[_3709 + ceil32(return_data.size)] = _3743
                                require _3727 + (32 * _3743) + 32 <= return_data.size
                                idx = 0
                                s = _3709 + _3727 + 32
                                t = _3709 + ceil32(return_data.size) + 32
                                while idx < _3743:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                                _4765 = mem[(2 * ceil32(return_data.size)) + 576]
                                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                                mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 100] = _2674
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_4765), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2674, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5030 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5030] == mem[_5030]
                                require mem[_5030 + 32] == mem[_5030 + 32]
                                require mem[_5030 + 64] == mem[_5030 + 64]
                                if mem[_5030 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_5030 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5030 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5030 + 64]
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
                                _5404 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5404] == bool(mem[_5404])
                                if not mem[_5404]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 548] = 64
                                mem[(2 * ceil32(return_data.size)) + 580] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 448
                                t = (2 * ceil32(return_data.size)) + 612
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 512
                                require return_data.size >= 32
                                _839 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                                _895 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                                mem[(4 * ceil32(return_data.size)) + 512] = _895
                                require _839 + (32 * _895) + 32 <= return_data.size
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + _839 + 544
                                t = (4 * ceil32(return_data.size)) + 544
                                while idx < _895:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _895 - 1 < _895
                                _2676 = mem[(32 * _895 - 1) + (4 * ceil32(return_data.size)) + 544]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2676
                                mem[mem[64] + 68] = 160
                                _2751 = mem[(2 * ceil32(return_data.size)) + 416]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 448
                                t = mem[64] + 196
                                while idx < _2751:
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2676, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2751) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3710 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3728 = mem[_3710]
                                require mem[_3710] <= test266151307()
                                require _3710 + mem[_3710] + 31 < _3710 + return_data.size
                                _3744 = mem[_3710 + mem[_3710]]
                                require mem[_3710 + mem[_3710]] <= test266151307()
                                require _3710 + ceil32(return_data.size) + (32 * mem[_3710 + mem[_3710]]) + 32 <= test266151307() and (32 * mem[_3710 + mem[_3710]]) + 32 >= 0
                                mem[64] = _3710 + ceil32(return_data.size) + (32 * mem[_3710 + mem[_3710]]) + 32
                                mem[_3710 + ceil32(return_data.size)] = _3744
                                require _3728 + (32 * _3744) + 32 <= return_data.size
                                idx = 0
                                s = _3710 + _3728 + 32
                                t = _3710 + ceil32(return_data.size) + 32
                                while idx < _3744:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _4743 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_4743 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_4743]
                                mem[_4743 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_4743]
                                mem[_4743 + 64] = stor11
                                require 1 < mem[_4743]
                                require 0 < mem[_4743]
                                if mem[_4743 + 44 len 20] == stor11:
                                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_4743]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2676, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                    mem[_4743 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_4743 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[_4743 + 132] = 64
                                    mem[_4743 + 164] = mem[_4743]
                                    idx = 0
                                    s = _4743 + 32
                                    t = _4743 + 196
                                    while idx < mem[_4743]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4743 + (32 * mem[_4743]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6700 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6732 = mem[_6700]
                                    require mem[_6700] <= test266151307()
                                    require _6700 + mem[_6700] + 31 < _6700 + return_data.size
                                    _6813 = mem[_6700 + mem[_6700]]
                                    require mem[_6700 + mem[_6700]] <= test266151307()
                                    require _6700 + ceil32(return_data.size) + (32 * mem[_6700 + mem[_6700]]) + 32 <= test266151307() and (32 * mem[_6700 + mem[_6700]]) + 32 >= 0
                                    mem[64] = _6700 + ceil32(return_data.size) + (32 * mem[_6700 + mem[_6700]]) + 32
                                    mem[_6700 + ceil32(return_data.size)] = _6813
                                    require _6732 + (32 * _6813) + 32 <= return_data.size
                                    idx = 0
                                    s = _6700 + _6732 + 32
                                    t = _6700 + ceil32(return_data.size) + 32
                                    while idx < _6813:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _6813 - 1 < _6813
                                    _7368 = mem[(32 * _6813 - 1) + _6700 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _7368
                                    mem[mem[64] + 68] = 160
                                    _7403 = mem[_4743]
                                    mem[mem[64] + 164] = mem[_4743]
                                    idx = 0
                                    s = _4743 + 32
                                    t = mem[64] + 196
                                    while idx < _7403:
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
                                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _7368, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7403) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7730 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7739 = mem[_7730]
                                    require mem[_7730] <= test266151307()
                                    require _7730 + mem[_7730] + 31 < _7730 + return_data.size
                                    _7747 = mem[_7730 + mem[_7730]]
                                    require mem[_7730 + mem[_7730]] <= test266151307()
                                    require _7730 + ceil32(return_data.size) + (32 * mem[_7730 + mem[_7730]]) + 32 <= test266151307() and (32 * mem[_7730 + mem[_7730]]) + 32 >= 0
                                    mem[64] = _7730 + ceil32(return_data.size) + (32 * mem[_7730 + mem[_7730]]) + 32
                                    mem[_7730 + ceil32(return_data.size)] = _7747
                                    require _7739 + (32 * _7747) + 32 <= return_data.size
                                    idx = 0
                                    s = _7730 + _7739 + 32
                                    t = _7730 + ceil32(return_data.size) + 32
                                    while idx < _7747:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_4743]
                                    _8117 = mem[_4743 + 64]
                                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                                    mem[mem[64] + 68] = _2676
                                    mem[mem[64] + 100] = _7368
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8117), _2676, _7368, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8152 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8152] == mem[_8152]
                                    require mem[_8152 + 32] == mem[_8152 + 32]
                                    require mem[_8152 + 64] == mem[_8152 + 64]
                                    if mem[_8152 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_8152 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8152 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8152 + 64]
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
                                    _8276 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8276] == bool(mem[_8276])
                                    if not mem[_8276]:
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
                            mem[(4 * ceil32(return_data.size)) + 416] = 2
                            mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                            mem[(4 * ceil32(return_data.size)) + 480] = stor10
                            if rewardTokenAddress == stor10:
                                mem[(4 * ceil32(return_data.size)) + 512] = 2
                                mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                                mem[(4 * ceil32(return_data.size)) + 576] = stor11
                                if rewardTokenAddress == stor11:
                                    mem[(4 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(4 * ceil32(return_data.size)) + 740] = 0
                                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                                    mem[(4 * ceil32(return_data.size)) + 804] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                    mem[(4 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                    mem[(6 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 676 len 9 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                    totalDeposits += ext_call.return_data[64]
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  totalDeposits,
                                                  totalSupply,
                                                  mem[(6 * ceil32(return_data.size)) + 672 len 9 * ceil32(return_data.size)],
                                    mem[(6 * ceil32(return_data.size)) + 612] = msg.sender
                                    mem[(6 * ceil32(return_data.size)) + 644] = this.address
                                    mem[(6 * ceil32(return_data.size)) + 676] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1, mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                    mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 612] = 32
                                        mem[(8 * ceil32(return_data.size)) + 644] = 19
                                        mem[(8 * ceil32(return_data.size)) + 676] = 'transferFrom failed'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 608
                                           len (13 * ceil32(return_data.size)) + 100
                                    if arg1 <= 0:
                                        mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 612] = 32
                                        mem[(8 * ceil32(return_data.size)) + 644] = 14
                                        mem[(8 * ceil32(return_data.size)) + 676] = 'amount too low'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 608
                                           len (13 * ceil32(return_data.size)) + 100
                                    mem[(8 * ceil32(return_data.size)) + 612] = PID
                                    mem[(8 * ceil32(return_data.size)) + 644] = arg1
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 612 len (13 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalSupply:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 612] = 32
                                        mem[(8 * ceil32(return_data.size)) + 644] = 27
                                        mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 608
                                           len (13 * ceil32(return_data.size)) + 100
                                    require totalSupply
                                    if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                        mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 612] = 32
                                        mem[(8 * ceil32(return_data.size)) + 644] = 33
                                        mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'w'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 608
                                           len (13 * ceil32(return_data.size)) + 132
                                    if not totalSupply * totalDeposits:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 612] = 32
                                        mem[(8 * ceil32(return_data.size)) + 644] = 27
                                        mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 608
                                           len (13 * ceil32(return_data.size)) + 100
                                    if not arg1:
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (0 / totalDeposits) >= totalSupply:
                                            totalSupply += 0 / totalDeposits
                                            if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += 0 / totalDeposits
                                                mem[(8 * ceil32(return_data.size)) + 672] = 0 / totalDeposits
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 672] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    else:
                                        require arg1
                                        if arg1 * totalSupply / arg1 != totalSupply:
                                            mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(8 * ceil32(return_data.size)) + 612] = 32
                                            mem[(8 * ceil32(return_data.size)) + 644] = 33
                                            mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                            mem[(8 * ceil32(return_data.size)) + 708] = 'w'
                                            revert with memory
                                              from (8 * ceil32(return_data.size)) + 608
                                               len (13 * ceil32(return_data.size)) + 132
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                            totalSupply += arg1 * totalSupply / totalDeposits
                                            if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                                mem[(8 * ceil32(return_data.size)) + 672] = arg1 * totalSupply / totalDeposits
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 672] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(8 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 676] = 32
                                    mem[(8 * ceil32(return_data.size)) + 708] = 27
                                    mem[(8 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 672
                                       len (13 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 644] = 64
                                mem[(4 * ceil32(return_data.size)) + 676] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 544
                                t = (4 * ceil32(return_data.size)) + 708
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 708 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 608
                                require return_data.size >= 32
                                _842 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                                _896 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                                mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                                require _842 + (32 * _896) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _842 + 640
                                t = (6 * ceil32(return_data.size)) + 640
                                while idx < _896:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _896 - 1 < _896
                                _2678 = mem[(32 * _896 - 1) + (6 * ceil32(return_data.size)) + 640]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2678
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 544
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2678, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3711 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3729 = mem[_3711]
                                require mem[_3711] <= test266151307()
                                require _3711 + mem[_3711] + 31 < _3711 + return_data.size
                                _3745 = mem[_3711 + mem[_3711]]
                                require mem[_3711 + mem[_3711]] <= test266151307()
                                require _3711 + ceil32(return_data.size) + (32 * mem[_3711 + mem[_3711]]) + 32 <= test266151307() and (32 * mem[_3711 + mem[_3711]]) + 32 >= 0
                                mem[64] = _3711 + ceil32(return_data.size) + (32 * mem[_3711 + mem[_3711]]) + 32
                                mem[_3711 + ceil32(return_data.size)] = _3745
                                require _3729 + (32 * _3745) + 32 <= return_data.size
                                idx = 0
                                s = _3711 + _3729 + 32
                                t = _3711 + ceil32(return_data.size) + 32
                                while idx < _3745:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                                _4767 = mem[(4 * ceil32(return_data.size)) + 576]
                                mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                                mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 100] = _2678
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_4767), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2678, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5031 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5031] == mem[_5031]
                                require mem[_5031 + 32] == mem[_5031 + 32]
                                require mem[_5031 + 64] == mem[_5031 + 64]
                                if mem[_5031 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_5031 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5031 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5031 + 64]
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
                                _5405 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5405] == bool(mem[_5405])
                                if not mem[_5405]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 548] = 64
                                mem[(4 * ceil32(return_data.size)) + 580] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 448
                                t = (4 * ceil32(return_data.size)) + 612
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 512
                                require return_data.size >= 32
                                _843 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                                _897 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                                mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require _843 + (32 * _897) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _843 + 544
                                t = (6 * ceil32(return_data.size)) + 544
                                while idx < _897:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _897 - 1 < _897
                                _2680 = mem[(32 * _897 - 1) + (6 * ceil32(return_data.size)) + 544]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2680
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 448
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2680, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3712 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3730 = mem[_3712]
                                require mem[_3712] <= test266151307()
                                require _3712 + mem[_3712] + 31 < _3712 + return_data.size
                                _3746 = mem[_3712 + mem[_3712]]
                                require mem[_3712 + mem[_3712]] <= test266151307()
                                require _3712 + ceil32(return_data.size) + (32 * mem[_3712 + mem[_3712]]) + 32 <= test266151307() and (32 * mem[_3712 + mem[_3712]]) + 32 >= 0
                                mem[64] = _3712 + ceil32(return_data.size) + (32 * mem[_3712 + mem[_3712]]) + 32
                                mem[_3712 + ceil32(return_data.size)] = _3746
                                require _3730 + (32 * _3746) + 32 <= return_data.size
                                idx = 0
                                s = _3712 + _3730 + 32
                                t = _3712 + ceil32(return_data.size) + 32
                                while idx < _3746:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _4746 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_4746 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_4746]
                                mem[_4746 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_4746]
                                mem[_4746 + 64] = stor11
                                require 1 < mem[_4746]
                                require 0 < mem[_4746]
                                if mem[_4746 + 44 len 20] == stor11:
                                    require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_4746]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _2680, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                    mem[_4746 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_4746 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[_4746 + 132] = 64
                                    mem[_4746 + 164] = mem[_4746]
                                    idx = 0
                                    s = _4746 + 32
                                    t = _4746 + 196
                                    while idx < mem[_4746]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4746 + (32 * mem[_4746]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6702 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6737 = mem[_6702]
                                    require mem[_6702] <= test266151307()
                                    require _6702 + mem[_6702] + 31 < _6702 + return_data.size
                                    _6815 = mem[_6702 + mem[_6702]]
                                    require mem[_6702 + mem[_6702]] <= test266151307()
                                    require _6702 + ceil32(return_data.size) + (32 * mem[_6702 + mem[_6702]]) + 32 <= test266151307() and (32 * mem[_6702 + mem[_6702]]) + 32 >= 0
                                    mem[64] = _6702 + ceil32(return_data.size) + (32 * mem[_6702 + mem[_6702]]) + 32
                                    mem[_6702 + ceil32(return_data.size)] = _6815
                                    require _6737 + (32 * _6815) + 32 <= return_data.size
                                    idx = 0
                                    s = _6702 + _6737 + 32
                                    t = _6702 + ceil32(return_data.size) + 32
                                    while idx < _6815:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _6815 - 1 < _6815
                                    _7370 = mem[(32 * _6815 - 1) + _6702 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _7370
                                    mem[mem[64] + 68] = 160
                                    _7404 = mem[_4746]
                                    mem[mem[64] + 164] = mem[_4746]
                                    idx = 0
                                    s = _4746 + 32
                                    t = mem[64] + 196
                                    while idx < _7404:
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
                                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _7370, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7404) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7731 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7740 = mem[_7731]
                                    require mem[_7731] <= test266151307()
                                    require _7731 + mem[_7731] + 31 < _7731 + return_data.size
                                    _7748 = mem[_7731 + mem[_7731]]
                                    require mem[_7731 + mem[_7731]] <= test266151307()
                                    require _7731 + ceil32(return_data.size) + (32 * mem[_7731 + mem[_7731]]) + 32 <= test266151307() and (32 * mem[_7731 + mem[_7731]]) + 32 >= 0
                                    mem[64] = _7731 + ceil32(return_data.size) + (32 * mem[_7731 + mem[_7731]]) + 32
                                    mem[_7731 + ceil32(return_data.size)] = _7748
                                    require _7740 + (32 * _7748) + 32 <= return_data.size
                                    idx = 0
                                    s = _7731 + _7740 + 32
                                    t = _7731 + ceil32(return_data.size) + 32
                                    while idx < _7748:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_4746]
                                    _8119 = mem[_4746 + 64]
                                    mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                                    mem[mem[64] + 68] = _2680
                                    mem[mem[64] + 100] = _7370
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8119), _2680, _7370, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8153 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8153] == mem[_8153]
                                    require mem[_8153 + 32] == mem[_8153 + 32]
                                    require mem[_8153 + 64] == mem[_8153 + 64]
                                    if mem[_8153 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_8153 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8153 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8153 + 64]
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
                                    _8277 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8277] == bool(mem[_8277])
                                    if not mem[_8277]:
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
                        mem[(4 * ceil32(return_data.size)) + 416] = 2
                        mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 480] = stor10
                        if rewardTokenAddress == stor10:
                            mem[(4 * ceil32(return_data.size)) + 512] = 2
                            mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                            mem[(4 * ceil32(return_data.size)) + 576] = stor11
                            if rewardTokenAddress == stor11:
                                mem[(4 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 740] = 0
                                mem[(4 * ceil32(return_data.size)) + 772] = 0
                                mem[(4 * ceil32(return_data.size)) + 804] = this.address
                                mem[(4 * ceil32(return_data.size)) + 836] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                mem[(4 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                mem[(6 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 676 len 9 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                totalDeposits += ext_call.return_data[64]
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              totalDeposits,
                                              totalSupply,
                                              mem[(6 * ceil32(return_data.size)) + 672 len 9 * ceil32(return_data.size)],
                                mem[(6 * ceil32(return_data.size)) + 612] = msg.sender
                                mem[(6 * ceil32(return_data.size)) + 644] = this.address
                                mem[(6 * ceil32(return_data.size)) + 676] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg1, mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 612] = 32
                                    mem[(8 * ceil32(return_data.size)) + 644] = 19
                                    mem[(8 * ceil32(return_data.size)) + 676] = 'transferFrom failed'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 608
                                       len (13 * ceil32(return_data.size)) + 100
                                if arg1 <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 612] = 32
                                    mem[(8 * ceil32(return_data.size)) + 644] = 14
                                    mem[(8 * ceil32(return_data.size)) + 676] = 'amount too low'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 608
                                       len (13 * ceil32(return_data.size)) + 100
                                mem[(8 * ceil32(return_data.size)) + 612] = PID
                                mem[(8 * ceil32(return_data.size)) + 644] = arg1
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 612 len (13 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 612] = 32
                                    mem[(8 * ceil32(return_data.size)) + 644] = 27
                                    mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 608
                                       len (13 * ceil32(return_data.size)) + 100
                                require totalSupply
                                if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                    mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 612] = 32
                                    mem[(8 * ceil32(return_data.size)) + 644] = 33
                                    mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'w'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 608
                                       len (13 * ceil32(return_data.size)) + 132
                                if not totalSupply * totalDeposits:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 612] = 32
                                    mem[(8 * ceil32(return_data.size)) + 644] = 27
                                    mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 608
                                       len (13 * ceil32(return_data.size)) + 100
                                if not arg1:
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (0 / totalDeposits) >= totalSupply:
                                        totalSupply += 0 / totalDeposits
                                        if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += 0 / totalDeposits
                                            mem[(8 * ceil32(return_data.size)) + 672] = 0 / totalDeposits
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 672] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                else:
                                    require arg1
                                    if arg1 * totalSupply / arg1 != totalSupply:
                                        mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 612] = 32
                                        mem[(8 * ceil32(return_data.size)) + 644] = 33
                                        mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'w'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 608
                                           len (13 * ceil32(return_data.size)) + 132
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                        totalSupply += arg1 * totalSupply / totalDeposits
                                        if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                            mem[(8 * ceil32(return_data.size)) + 672] = arg1 * totalSupply / totalDeposits
                                            emit Transfer(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(8 * ceil32(return_data.size)) + 672] = arg1
                                                emit Deposit(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(8 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 676] = 32
                                mem[(8 * ceil32(return_data.size)) + 708] = 27
                                mem[(8 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 672
                                   len (13 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 644] = 64
                            mem[(4 * ceil32(return_data.size)) + 676] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 544
                            t = (4 * ceil32(return_data.size)) + 708
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 708 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 608
                            require return_data.size >= 32
                            _857 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                            _902 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 640
                            mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]
                            require _857 + (32 * _902) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _857 + 640
                            t = (6 * ceil32(return_data.size)) + 640
                            while idx < _902:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _902 - 1 < _902
                            _2690 = mem[(32 * _902 - 1) + (6 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2690
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 544
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2690, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3719 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3735 = mem[_3719]
                            require mem[_3719] <= test266151307()
                            require _3719 + mem[_3719] + 31 < _3719 + return_data.size
                            _3751 = mem[_3719 + mem[_3719]]
                            require mem[_3719 + mem[_3719]] <= test266151307()
                            require _3719 + ceil32(return_data.size) + (32 * mem[_3719 + mem[_3719]]) + 32 <= test266151307() and (32 * mem[_3719 + mem[_3719]]) + 32 >= 0
                            mem[64] = _3719 + ceil32(return_data.size) + (32 * mem[_3719 + mem[_3719]]) + 32
                            mem[_3719 + ceil32(return_data.size)] = _3751
                            require _3735 + (32 * _3751) + 32 <= return_data.size
                            idx = 0
                            s = _3719 + _3735 + 32
                            t = _3719 + ceil32(return_data.size) + 32
                            while idx < _3751:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                            _4773 = mem[(4 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2690
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4773), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2690, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5034 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5034] == mem[_5034]
                            require mem[_5034 + 32] == mem[_5034 + 32]
                            require mem[_5034 + 64] == mem[_5034 + 64]
                            if mem[_5034 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5034 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5034 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5034 + 64]
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
                            _5409 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5409] == bool(mem[_5409])
                            if not mem[_5409]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 548] = 64
                            mem[(4 * ceil32(return_data.size)) + 580] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 448
                            t = (4 * ceil32(return_data.size)) + 612
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _858 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                            _903 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544
                            mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                            require _858 + (32 * _903) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _858 + 544
                            t = (6 * ceil32(return_data.size)) + 544
                            while idx < _903:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _903 - 1 < _903
                            _2692 = mem[(32 * _903 - 1) + (6 * ceil32(return_data.size)) + 544]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2692
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 448
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2692, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3720 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3736 = mem[_3720]
                            require mem[_3720] <= test266151307()
                            require _3720 + mem[_3720] + 31 < _3720 + return_data.size
                            _3752 = mem[_3720 + mem[_3720]]
                            require mem[_3720 + mem[_3720]] <= test266151307()
                            require _3720 + ceil32(return_data.size) + (32 * mem[_3720 + mem[_3720]]) + 32 <= test266151307() and (32 * mem[_3720 + mem[_3720]]) + 32 >= 0
                            mem[64] = _3720 + ceil32(return_data.size) + (32 * mem[_3720 + mem[_3720]]) + 32
                            mem[_3720 + ceil32(return_data.size)] = _3752
                            require _3736 + (32 * _3752) + 32 <= return_data.size
                            idx = 0
                            s = _3720 + _3736 + 32
                            t = _3720 + ceil32(return_data.size) + 32
                            while idx < _3752:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _4755 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_4755 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_4755]
                            mem[_4755 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_4755]
                            mem[_4755 + 64] = stor11
                            require 1 < mem[_4755]
                            require 0 < mem[_4755]
                            if mem[_4755 + 44 len 20] == stor11:
                                require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 1 < mem[_4755]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _2692, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                mem[_4755 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_4755 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[_4755 + 132] = 64
                                mem[_4755 + 164] = mem[_4755]
                                idx = 0
                                s = _4755 + 32
                                t = _4755 + 196
                                while idx < mem[_4755]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _4755 + (32 * mem[_4755]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6711 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6753 = mem[_6711]
                                require mem[_6711] <= test266151307()
                                require _6711 + mem[_6711] + 31 < _6711 + return_data.size
                                _6822 = mem[_6711 + mem[_6711]]
                                require mem[_6711 + mem[_6711]] <= test266151307()
                                require _6711 + ceil32(return_data.size) + (32 * mem[_6711 + mem[_6711]]) + 32 <= test266151307() and (32 * mem[_6711 + mem[_6711]]) + 32 >= 0
                                mem[64] = _6711 + ceil32(return_data.size) + (32 * mem[_6711 + mem[_6711]]) + 32
                                mem[_6711 + ceil32(return_data.size)] = _6822
                                require _6753 + (32 * _6822) + 32 <= return_data.size
                                idx = 0
                                s = _6711 + _6753 + 32
                                t = _6711 + ceil32(return_data.size) + 32
                                while idx < _6822:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _6822 - 1 < _6822
                                _7377 = mem[(32 * _6822 - 1) + _6711 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _7377
                                mem[mem[64] + 68] = 160
                                _7407 = mem[_4755]
                                mem[mem[64] + 164] = mem[_4755]
                                idx = 0
                                s = _4755 + 32
                                t = mem[64] + 196
                                while idx < _7407:
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _7377, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7407) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7735 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7743 = mem[_7735]
                                require mem[_7735] <= test266151307()
                                require _7735 + mem[_7735] + 31 < _7735 + return_data.size
                                _7751 = mem[_7735 + mem[_7735]]
                                require mem[_7735 + mem[_7735]] <= test266151307()
                                require _7735 + ceil32(return_data.size) + (32 * mem[_7735 + mem[_7735]]) + 32 <= test266151307() and (32 * mem[_7735 + mem[_7735]]) + 32 >= 0
                                mem[64] = _7735 + ceil32(return_data.size) + (32 * mem[_7735 + mem[_7735]]) + 32
                                mem[_7735 + ceil32(return_data.size)] = _7751
                                require _7743 + (32 * _7751) + 32 <= return_data.size
                                idx = 0
                                s = _7735 + _7743 + 32
                                t = _7735 + ceil32(return_data.size) + 32
                                while idx < _7751:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 1 < mem[_4755]
                                _8125 = mem[_4755 + 64]
                                mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                                mem[mem[64] + 68] = _2692
                                mem[mem[64] + 100] = _7377
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8125), _2692, _7377, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8156 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8156] == mem[_8156]
                                require mem[_8156 + 32] == mem[_8156 + 32]
                                require mem[_8156 + 64] == mem[_8156 + 64]
                                if mem[_8156 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_8156 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8156 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8156 + 64]
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
                                _8280 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8280] == bool(mem[_8280])
                                if not mem[_8280]:
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
                            mem[(4 * ceil32(return_data.size)) + 416] = 2
                            mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                            mem[(4 * ceil32(return_data.size)) + 480] = stor10
                            if rewardTokenAddress == stor10:
                                mem[(4 * ceil32(return_data.size)) + 512] = 2
                                mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                                mem[(4 * ceil32(return_data.size)) + 576] = stor11
                                if rewardTokenAddress == stor11:
                                    mem[(4 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(4 * ceil32(return_data.size)) + 740] = 0
                                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                                    mem[(4 * ceil32(return_data.size)) + 804] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                    mem[(4 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                    mem[(6 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 676 len 9 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                    totalDeposits += ext_call.return_data[64]
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  totalDeposits,
                                                  totalSupply,
                                                  mem[(6 * ceil32(return_data.size)) + 672 len 9 * ceil32(return_data.size)],
                                    mem[(6 * ceil32(return_data.size)) + 612] = msg.sender
                                    mem[(6 * ceil32(return_data.size)) + 644] = this.address
                                    mem[(6 * ceil32(return_data.size)) + 676] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1, mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                    mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 612] = 32
                                        mem[(8 * ceil32(return_data.size)) + 644] = 19
                                        mem[(8 * ceil32(return_data.size)) + 676] = 'transferFrom failed'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 608
                                           len (13 * ceil32(return_data.size)) + 100
                                    if arg1 <= 0:
                                        mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 612] = 32
                                        mem[(8 * ceil32(return_data.size)) + 644] = 14
                                        mem[(8 * ceil32(return_data.size)) + 676] = 'amount too low'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 608
                                           len (13 * ceil32(return_data.size)) + 100
                                    mem[(8 * ceil32(return_data.size)) + 612] = PID
                                    mem[(8 * ceil32(return_data.size)) + 644] = arg1
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 612 len (13 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalSupply:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 612] = 32
                                        mem[(8 * ceil32(return_data.size)) + 644] = 27
                                        mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 608
                                           len (13 * ceil32(return_data.size)) + 100
                                    require totalSupply
                                    if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                        mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 612] = 32
                                        mem[(8 * ceil32(return_data.size)) + 644] = 33
                                        mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                        mem[(8 * ceil32(return_data.size)) + 708] = 'w'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 608
                                           len (13 * ceil32(return_data.size)) + 132
                                    if not totalSupply * totalDeposits:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 608] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 608 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 612] = 32
                                        mem[(8 * ceil32(return_data.size)) + 644] = 27
                                        mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 608
                                           len (13 * ceil32(return_data.size)) + 100
                                    if not arg1:
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (0 / totalDeposits) >= totalSupply:
                                            totalSupply += 0 / totalDeposits
                                            if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += 0 / totalDeposits
                                                mem[(8 * ceil32(return_data.size)) + 672] = 0 / totalDeposits
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 672] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    else:
                                        require arg1
                                        if arg1 * totalSupply / arg1 != totalSupply:
                                            mem[(8 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(8 * ceil32(return_data.size)) + 612] = 32
                                            mem[(8 * ceil32(return_data.size)) + 644] = 33
                                            mem[(8 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                            mem[(8 * ceil32(return_data.size)) + 708] = 'w'
                                            revert with memory
                                              from (8 * ceil32(return_data.size)) + 608
                                               len (13 * ceil32(return_data.size)) + 132
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                            totalSupply += arg1 * totalSupply / totalDeposits
                                            if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                                mem[(8 * ceil32(return_data.size)) + 672] = arg1 * totalSupply / totalDeposits
                                                emit Transfer(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(8 * ceil32(return_data.size)) + 672] = arg1
                                                    emit Deposit(mem[(8 * ceil32(return_data.size)) + 672 len (13 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(8 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 676] = 32
                                    mem[(8 * ceil32(return_data.size)) + 708] = 27
                                    mem[(8 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 672
                                       len (13 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 644] = 64
                                mem[(4 * ceil32(return_data.size)) + 676] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 544
                                t = (4 * ceil32(return_data.size)) + 708
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 708 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 608
                                require return_data.size >= 32
                                _850 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                                _900 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                                mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                                require _850 + (32 * _900) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _850 + 640
                                t = (6 * ceil32(return_data.size)) + 640
                                while idx < _900:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _900 - 1 < _900
                                _2686 = mem[(32 * _900 - 1) + (6 * ceil32(return_data.size)) + 640]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2686
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 544
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2686, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3715 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3733 = mem[_3715]
                                require mem[_3715] <= test266151307()
                                require _3715 + mem[_3715] + 31 < _3715 + return_data.size
                                _3749 = mem[_3715 + mem[_3715]]
                                require mem[_3715 + mem[_3715]] <= test266151307()
                                require _3715 + ceil32(return_data.size) + (32 * mem[_3715 + mem[_3715]]) + 32 <= test266151307() and (32 * mem[_3715 + mem[_3715]]) + 32 >= 0
                                mem[64] = _3715 + ceil32(return_data.size) + (32 * mem[_3715 + mem[_3715]]) + 32
                                mem[_3715 + ceil32(return_data.size)] = _3749
                                require _3733 + (32 * _3749) + 32 <= return_data.size
                                idx = 0
                                s = _3715 + _3733 + 32
                                t = _3715 + ceil32(return_data.size) + 32
                                while idx < _3749:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                                _4771 = mem[(4 * ceil32(return_data.size)) + 576]
                                mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                                mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 100] = _2686
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_4771), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2686, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5033 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5033] == mem[_5033]
                                require mem[_5033 + 32] == mem[_5033 + 32]
                                require mem[_5033 + 64] == mem[_5033 + 64]
                                if mem[_5033 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_5033 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5033 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5033 + 64]
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
                                _5407 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5407] == bool(mem[_5407])
                                if not mem[_5407]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(4 * ceil32(return_data.size)) + 548] = 64
                                mem[(4 * ceil32(return_data.size)) + 580] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 448
                                t = (4 * ceil32(return_data.size)) + 612
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 512
                                require return_data.size >= 32
                                _851 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                                _901 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                                mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require _851 + (32 * _901) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _851 + 544
                                t = (6 * ceil32(return_data.size)) + 544
                                while idx < _901:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _901 - 1 < _901
                                _2688 = mem[(32 * _901 - 1) + (6 * ceil32(return_data.size)) + 544]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _901 - 1) + (6 * ceil32(return_data.size)) + 544]
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 448
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[mem[64] + 36], Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3716 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3734 = mem[_3716]
                                require mem[_3716] <= test266151307()
                                require _3716 + mem[_3716] + 31 < _3716 + return_data.size
                                _3750 = mem[_3716 + mem[_3716]]
                                require mem[_3716 + mem[_3716]] <= test266151307()
                                require _3716 + ceil32(return_data.size) + (32 * mem[_3716 + mem[_3716]]) + 32 <= test266151307() and (32 * mem[_3716 + mem[_3716]]) + 32 >= 0
                                mem[64] = _3716 + ceil32(return_data.size) + (32 * mem[_3716 + mem[_3716]]) + 32
                                mem[_3716 + ceil32(return_data.size)] = _3750
                                require _3734 + (32 * _3750) + 32 <= return_data.size
                                idx = 0
                                s = _3716 + _3734 + 32
                                t = _3716 + ceil32(return_data.size) + 32
                                while idx < _3750:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _4752 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_4752 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_4752]
                                mem[_4752 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_4752]
                                mem[_4752 + 64] = stor11
                                require 1 < mem[_4752]
                                require 0 < mem[_4752]
                                if mem[_4752 + 44 len 20] == stor11:
                                    require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_4752]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _2688, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                    mem[_4752 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_4752 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[_4752 + 132] = 64
                                    mem[_4752 + 164] = mem[_4752]
                                    idx = 0
                                    s = _4752 + 32
                                    t = _4752 + 196
                                    while idx < mem[_4752]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4752 + (32 * mem[_4752]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6706 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6747 = mem[_6706]
                                    require mem[_6706] <= test266151307()
                                    require _6706 + mem[_6706] + 31 < _6706 + return_data.size
                                    _6819 = mem[_6706 + mem[_6706]]
                                    require mem[_6706 + mem[_6706]] <= test266151307()
                                    require _6706 + ceil32(return_data.size) + (32 * mem[_6706 + mem[_6706]]) + 32 <= test266151307() and (32 * mem[_6706 + mem[_6706]]) + 32 >= 0
                                    mem[64] = _6706 + ceil32(return_data.size) + (32 * mem[_6706 + mem[_6706]]) + 32
                                    mem[_6706 + ceil32(return_data.size)] = _6819
                                    require _6747 + (32 * _6819) + 32 <= return_data.size
                                    idx = 0
                                    s = _6706 + _6747 + 32
                                    t = _6706 + ceil32(return_data.size) + 32
                                    while idx < _6819:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _6819 - 1 < _6819
                                    _7374 = mem[(32 * _6819 - 1) + _6706 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _7374
                                    mem[mem[64] + 68] = 160
                                    _7406 = mem[_4752]
                                    mem[mem[64] + 164] = mem[_4752]
                                    idx = 0
                                    s = _4752 + 32
                                    t = mem[64] + 196
                                    while idx < _7406:
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
                                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _7374, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7406) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7733 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7742 = mem[_7733]
                                    require mem[_7733] <= test266151307()
                                    require _7733 + mem[_7733] + 31 < _7733 + return_data.size
                                    _7750 = mem[_7733 + mem[_7733]]
                                    require mem[_7733 + mem[_7733]] <= test266151307()
                                    require _7733 + ceil32(return_data.size) + (32 * mem[_7733 + mem[_7733]]) + 32 <= test266151307() and (32 * mem[_7733 + mem[_7733]]) + 32 >= 0
                                    mem[64] = _7733 + ceil32(return_data.size) + (32 * mem[_7733 + mem[_7733]]) + 32
                                    mem[_7733 + ceil32(return_data.size)] = _7750
                                    require _7742 + (32 * _7750) + 32 <= return_data.size
                                    idx = 0
                                    s = _7733 + _7742 + 32
                                    t = _7733 + ceil32(return_data.size) + 32
                                    while idx < _7750:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_4752]
                                    _8123 = mem[_4752 + 64]
                                    mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                                    mem[mem[64] + 68] = _2688
                                    mem[mem[64] + 100] = _7374
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8123), _2688, _7374, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8155 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8155] == mem[_8155]
                                    require mem[_8155 + 32] == mem[_8155 + 32]
                                    require mem[_8155 + 64] == mem[_8155 + 64]
                                    if mem[_8155 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_8155 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8155 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8155 + 64]
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
                                    _8279 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8279] == bool(mem[_8279])
                                    if not mem[_8279]:
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
                            mem[(6 * ceil32(return_data.size)) + 416] = 2
                            mem[(6 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                            mem[(6 * ceil32(return_data.size)) + 480] = stor10
                            if rewardTokenAddress == stor10:
                                mem[(6 * ceil32(return_data.size)) + 512] = 2
                                mem[(6 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                                mem[(6 * ceil32(return_data.size)) + 576] = stor11
                                if rewardTokenAddress == stor11:
                                    mem[(6 * ceil32(return_data.size)) + 676] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(6 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(6 * ceil32(return_data.size)) + 740] = 0
                                    mem[(6 * ceil32(return_data.size)) + 772] = 0
                                    mem[(6 * ceil32(return_data.size)) + 804] = this.address
                                    mem[(6 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args stor10, stor11, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                                    mem[(6 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
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
                                    mem[(7 * ceil32(return_data.size)) + 644] = this.address
                                    mem[(7 * ceil32(return_data.size)) + 676] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'transferFrom failed', mem[(9 * ceil32(return_data.size)) + 708 len 5 * ceil32(return_data.size)]
                                    if arg1 <= 0:
                                        revert with 0, 'amount too low', mem[(9 * ceil32(return_data.size)) + 708 len 5 * ceil32(return_data.size)]
                                    mem[(9 * ceil32(return_data.size)) + 612] = PID
                                    mem[(9 * ceil32(return_data.size)) + 644] = arg1
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, arg1, mem[(9 * ceil32(return_data.size)) + 676 len 5 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalSupply:
                                        if totalSupply + arg1 < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 708 len 5 * ceil32(return_data.size)]
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 708 len 5 * ceil32(return_data.size)]
                                        balanceOf[address(msg.sender)] += arg1
                                        emit Transfer(address rg1, address rg2, uint256 rg3):
                                                      arg1,
                                                      mem[(9 * ceil32(return_data.size)) + 640 len 5 * ceil32(return_data.size)],
                                                      0,
                                                      msg.sender,
                                        if totalDeposits + arg1 < totalDeposits:
                                            revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 708 len 5 * ceil32(return_data.size)]
                                        totalDeposits += arg1
                                        emit Deposit(address rg1, uint256 rg2):
                                                     arg1,
                                                     mem[(9 * ceil32(return_data.size)) + 640 len 5 * ceil32(return_data.size)],
                                                     msg.sender,
                                    else:
                                        require totalSupply
                                        if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                            revert with 0, 'SafeMath: multiplication overflow', mem[(9 * ceil32(return_data.size)) + 740 len 5 * ceil32(return_data.size)]
                                        if not totalSupply * totalDeposits:
                                            if totalSupply + arg1 < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 708 len 5 * ceil32(return_data.size)]
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                                                revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 708 len 5 * ceil32(return_data.size)]
                                            balanceOf[address(msg.sender)] += arg1
                                            emit Transfer(address rg1, address rg2, uint256 rg3):
                                                          arg1,
                                                          mem[(9 * ceil32(return_data.size)) + 640 len 5 * ceil32(return_data.size)],
                                                          0,
                                                          msg.sender,
                                            if totalDeposits + arg1 < totalDeposits:
                                                revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 708 len 5 * ceil32(return_data.size)]
                                            totalDeposits += arg1
                                            emit Deposit(address rg1, uint256 rg2):
                                                         arg1,
                                                         mem[(9 * ceil32(return_data.size)) + 640 len 5 * ceil32(return_data.size)],
                                                         msg.sender,
                                        else:
                                            if not arg1:
                                                if totalDeposits <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require totalDeposits
                                                if totalSupply + (0 / totalDeposits) < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 772 len 5 * ceil32(return_data.size)]
                                                totalSupply += 0 / totalDeposits
                                                if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 772 len 5 * ceil32(return_data.size)]
                                                balanceOf[address(msg.sender)] += 0 / totalDeposits
                                                emit Transfer(address rg1, address rg2, uint256 rg3):
                                                              0 / totalDeposits,
                                                              mem[(9 * ceil32(return_data.size)) + 704 len 5 * ceil32(return_data.size)],
                                                              0,
                                                              msg.sender,
                                            else:
                                                require arg1
                                                if arg1 * totalSupply / arg1 != totalSupply:
                                                    revert with 0, 'SafeMath: multiplication overflow', mem[(9 * ceil32(return_data.size)) + 740 len 5 * ceil32(return_data.size)]
                                                if totalDeposits <= 0:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                require totalDeposits
                                                if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 772 len 5 * ceil32(return_data.size)]
                                                totalSupply += arg1 * totalSupply / totalDeposits
                                                if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 772 len 5 * ceil32(return_data.size)]
                                                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                                emit Transfer(address rg1, address rg2, uint256 rg3):
                                                              arg1 * totalSupply / totalDeposits,
                                                              mem[(9 * ceil32(return_data.size)) + 704 len 5 * ceil32(return_data.size)],
                                                              0,
                                                              msg.sender,
                                            if totalDeposits + arg1 < totalDeposits:
                                                revert with 0, 'SafeMath: addition overflow', mem[(9 * ceil32(return_data.size)) + 772 len 5 * ceil32(return_data.size)]
                                            totalDeposits += arg1
                                            emit Deposit(address rg1, uint256 rg2):
                                                         arg1,
                                                         mem[(9 * ceil32(return_data.size)) + 704 len 5 * ceil32(return_data.size)],
                                                         msg.sender,
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 612] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[(6 * ceil32(return_data.size)) + 644] = 64
                                    mem[(6 * ceil32(return_data.size)) + 676] = 2
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 544
                                    t = (6 * ceil32(return_data.size)) + 708
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 708 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 608
                                    require return_data.size >= 32
                                    _2718 = mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (6 * ceil32(return_data.size)) + return_data.size + 608
                                    _2746 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                                    require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                                    mem[(7 * ceil32(return_data.size)) + 608] = _2746
                                    require _2718 + (32 * _2746) + 32 <= return_data.size
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + _2718 + 640
                                    t = (7 * ceil32(return_data.size)) + 640
                                    while idx < _2746:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _2746 - 1 < _2746
                                    _3689 = mem[(32 * _2746 - 1) + (7 * ceil32(return_data.size)) + 640]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _3689
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = 2
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 544
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
                                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _3689, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4887 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4897 = mem[_4887]
                                    require mem[_4887] <= test266151307()
                                    require _4887 + mem[_4887] + 31 < _4887 + return_data.size
                                    _4903 = mem[_4887 + mem[_4887]]
                                    require mem[_4887 + mem[_4887]] <= test266151307()
                                    require _4887 + ceil32(return_data.size) + (32 * mem[_4887 + mem[_4887]]) + 32 <= test266151307() and (32 * mem[_4887 + mem[_4887]]) + 32 >= 0
                                    mem[64] = _4887 + ceil32(return_data.size) + (32 * mem[_4887 + mem[_4887]]) + 32
                                    mem[_4887 + ceil32(return_data.size)] = _4903
                                    require _4897 + (32 * _4903) + 32 <= return_data.size
                                    idx = 0
                                    s = _4887 + _4897 + 32
                                    t = _4887 + ceil32(return_data.size) + 32
                                    while idx < _4903:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require 1 < mem[(6 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[(6 * ceil32(return_data.size)) + 512]
                                    _6722 = mem[(6 * ceil32(return_data.size)) + 576]
                                    mem[mem[64] + 4] = mem[(6 * ceil32(return_data.size)) + 492 len 20]
                                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 100] = _3689
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_6722), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _3689, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6935 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_6935] == mem[_6935]
                                    require mem[_6935 + 32] == mem[_6935 + 32]
                                    require mem[_6935 + 64] == mem[_6935 + 64]
                                    if mem[_6935 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_6935 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_6935 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_6935 + 64]
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
                                    _7092 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7092] == bool(mem[_7092])
                                    if not mem[_7092]:
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
                                mem[(6 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 516] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[(6 * ceil32(return_data.size)) + 548] = 64
                                mem[(6 * ceil32(return_data.size)) + 580] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 448
                                t = (6 * ceil32(return_data.size)) + 612
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 612 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (7 * ceil32(return_data.size)) + 512
                                require return_data.size >= 32
                                _2719 = mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (6 * ceil32(return_data.size)) + return_data.size + 512
                                _2747 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                                require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                                mem[(7 * ceil32(return_data.size)) + 512] = _2747
                                require _2719 + (32 * _2747) + 32 <= return_data.size
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + _2719 + 544
                                t = (7 * ceil32(return_data.size)) + 544
                                while idx < _2747:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _2747 - 1 < _2747
                                _3691 = mem[(32 * _2747 - 1) + (7 * ceil32(return_data.size)) + 544]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _3691
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 448
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _3691, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4888 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4898 = mem[_4888]
                                require mem[_4888] <= test266151307()
                                require _4888 + mem[_4888] + 31 < _4888 + return_data.size
                                _4904 = mem[_4888 + mem[_4888]]
                                require mem[_4888 + mem[_4888]] <= test266151307()
                                require _4888 + ceil32(return_data.size) + (32 * mem[_4888 + mem[_4888]]) + 32 <= test266151307() and (32 * mem[_4888 + mem[_4888]]) + 32 >= 0
                                mem[64] = _4888 + ceil32(return_data.size) + (32 * mem[_4888 + mem[_4888]]) + 32
                                mem[_4888 + ceil32(return_data.size)] = _4904
                                require _4898 + (32 * _4904) + 32 <= return_data.size
                                idx = 0
                                s = _4888 + _4898 + 32
                                t = _4888 + ceil32(return_data.size) + 32
                                while idx < _4904:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _6709 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_6709 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[(6 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_6709]
                                mem[_6709 + 32] = mem[(6 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_6709]
                                mem[_6709 + 64] = stor11
                                require 1 < mem[_6709]
                                require 0 < mem[_6709]
                                if mem[_6709 + 44 len 20] == stor11:
                                    require 1 < mem[(6 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_6709]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(6 * ceil32(return_data.size)) + 480]), stor11, _3691, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                    mem[_6709 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_6709 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[_6709 + 132] = 64
                                    mem[_6709 + 164] = mem[_6709]
                                    idx = 0
                                    s = _6709 + 32
                                    t = _6709 + 196
                                    while idx < mem[_6709]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _6709 + (32 * mem[_6709]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7386 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7392 = mem[_7386]
                                    require mem[_7386] <= test266151307()
                                    require _7386 + mem[_7386] + 31 < _7386 + return_data.size
                                    _7399 = mem[_7386 + mem[_7386]]
                                    require mem[_7386 + mem[_7386]] <= test266151307()
                                    require _7386 + ceil32(return_data.size) + (32 * mem[_7386 + mem[_7386]]) + 32 <= test266151307() and (32 * mem[_7386 + mem[_7386]]) + 32 >= 0
                                    mem[64] = _7386 + ceil32(return_data.size) + (32 * mem[_7386 + mem[_7386]]) + 32
                                    mem[_7386 + ceil32(return_data.size)] = _7399
                                    require _7392 + (32 * _7399) + 32 <= return_data.size
                                    idx = 0
                                    s = _7386 + _7392 + 32
                                    t = _7386 + ceil32(return_data.size) + 32
                                    while idx < _7399:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7399 - 1 < _7399
                                    _7720 = mem[(32 * _7399 - 1) + _7386 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _7720
                                    mem[mem[64] + 68] = 160
                                    _7734 = mem[_6709]
                                    mem[mem[64] + 164] = mem[_6709]
                                    idx = 0
                                    s = _6709 + 32
                                    t = mem[64] + 196
                                    while idx < _7734:
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
                                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _7720, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7734) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8134 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8135 = mem[_8134]
                                    require mem[_8134] <= test266151307()
                                    require _8134 + mem[_8134] + 31 < _8134 + return_data.size
                                    _8136 = mem[_8134 + mem[_8134]]
                                    require mem[_8134 + mem[_8134]] <= test266151307()
                                    require _8134 + ceil32(return_data.size) + (32 * mem[_8134 + mem[_8134]]) + 32 <= test266151307() and (32 * mem[_8134 + mem[_8134]]) + 32 >= 0
                                    mem[64] = _8134 + ceil32(return_data.size) + (32 * mem[_8134 + mem[_8134]]) + 32
                                    mem[_8134 + ceil32(return_data.size)] = _8136
                                    require _8135 + (32 * _8136) + 32 <= return_data.size
                                    idx = 0
                                    s = _8134 + _8135 + 32
                                    t = _8134 + ceil32(return_data.size) + 32
                                    while idx < _8136:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require 1 < mem[(6 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_6709]
                                    _8890 = mem[_6709 + 64]
                                    mem[mem[64] + 4] = mem[(6 * ceil32(return_data.size)) + 492 len 20]
                                    mem[mem[64] + 68] = _3691
                                    mem[mem[64] + 100] = _7720
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8890), _3691, _7720, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8925 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8925] == mem[_8925]
                                    require mem[_8925 + 32] == mem[_8925 + 32]
                                    require mem[_8925 + 64] == mem[_8925 + 64]
                                    if mem[_8925 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_8925 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8925 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8925 + 64]
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
                                    _8939 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8939] == bool(mem[_8939])
                                    if not mem[_8939]:
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
