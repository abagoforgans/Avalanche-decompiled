contract main {




// =====================  Runtime code  =====================


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
address depositTokenAddress;
address rewardTokenAddress;
address stakingContractAddress;
uint256 PID;
uint256 MIN_TOKENS_TO_REINVEST;
uint256 REINVEST_REWARD_BIPS;
uint256 ADMIN_FEE_BIPS;
uint8 REQUIRE_REINVEST_BEFORE_DEPOSIT;
uint256 stor15;
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
    uint256(stor15) = not bool(uint8(REQUIRE_REINVEST_BEFORE_DEPOSIT)) or Mask(248, 8, uint256(stor15))
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
        revert with 0, 'MIN_TOKENS_TO_REINVEST'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args PID, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not uint255(ext_call.return_data[0]):
        if not uint255(ext_call.return_data[0]):
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction underflow', 0
            if 2 * ext_call.return_data[0] <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args PID, 2 * ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalDeposits + (2 * ext_call.return_data[0]) < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits += 2 * ext_call.return_data[0]
        else:
            require 2 * ext_call.return_data[0]
            if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 2 * ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                revert with 0, 'SafeMath: multiplication overflow'
            if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > 0:
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'reinvest fee transfer failed'
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction underflow', 0
            if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction underflow', 0
            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args PID, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalDeposits + (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits = totalDeposits + (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
    else:
        require 2 * ext_call.return_data[0]
        if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 2 * ext_call.return_data[0] != ADMIN_FEE_BIPS:
            revert with 0, 'SafeMath: multiplication overflow'
        if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 0:
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'admin fee transfer failed'
        if not uint255(ext_call.return_data[0]):
            if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction underflow', 0
            if 0 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                revert with 0, 'SafeMath: subtraction underflow', 0
            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args PID, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalDeposits + (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits = totalDeposits + (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)
        else:
            require 2 * ext_call.return_data[0]
            if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 2 * ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                revert with 0, 'SafeMath: multiplication overflow'
            if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > 0:
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'reinvest fee transfer failed'
            if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction underflow', 0
            if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                revert with 0, 'SafeMath: subtraction underflow', 0
            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args PID, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalDeposits + (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits = totalDeposits + (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
    emit Reinvest(totalDeposits, totalSupply);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalDeposits < totalSupply:
        revert with 0, 'deposit failed'
    if uint8(REQUIRE_REINVEST_BEFORE_DEPOSIT):
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
        if 2 * ext_call.return_data[0] >= MIN_TOKENS_TO_REINVEST_BEFORE_DEPOSIT:
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args PID, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not uint255(ext_call.return_data[0]):
                if not uint255(ext_call.return_data[0]):
                    if 0 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, 2 * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + (2 * ext_call.return_data[0]) < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += 2 * ext_call.return_data[0]
                else:
                    require 2 * ext_call.return_data[0]
                    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 2 * ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > 0:
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'reinvest fee transfer failed'
                    if 0 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits = totalDeposits + (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
            else:
                require 2 * ext_call.return_data[0]
                if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 2 * ext_call.return_data[0] != ADMIN_FEE_BIPS:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 0:
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'admin fee transfer failed'
                if not uint255(ext_call.return_data[0]):
                    if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    if 0 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits = totalDeposits + (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)
                else:
                    require 2 * ext_call.return_data[0]
                    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 2 * ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > 0:
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'reinvest fee transfer failed'
                    if (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    if (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000 > (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000):
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits = totalDeposits + (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
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
