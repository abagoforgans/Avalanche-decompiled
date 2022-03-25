contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
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
address lpTokenAddress;
address stor11;
address stor12;
address rewardTokenAddress;
address stakingContractAddress;
uint256 PID;
uint256 MIN_TOKENS_TO_REINVEST;
uint256 REINVEST_REWARD_BIPS;
uint256 ADMIN_FEE_BIPS;
uint8 REQUIRE_REINVEST_BEFORE_DEPOSIT;
uint256 stor19;
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

function lpToken() payable {
    return lpTokenAddress
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
    uint256(stor19) = not bool(uint8(REQUIRE_REINVEST_BEFORE_DEPOSIT)) or Mask(248, 8, uint256(stor19))
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
    staticcall stakingContractAddress.0xf90a25be with:
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

function getLPTokensForShares(uint256 arg1) payable {
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

function getSharesForLPTokens(uint256 arg1) payable {
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
    staticcall stakingContractAddress.0xf90a25be with:
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
                    emit Withdraw(msg.sender, 0 / totalSupply);
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
                    emit Withdraw(msg.sender, arg1 * totalDeposits / totalSupply);
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
    staticcall stakingContractAddress.0xf90a25be with:
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
            mem[(2 * ceil32(return_data.size)) + 480] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(2 * ceil32(return_data.size)) + 512] = stor11
            if rewardTokenAddress == stor11:
                mem[(2 * ceil32(return_data.size)) + 544] = 2
                mem[(2 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                mem[(2 * ceil32(return_data.size)) + 608] = stor12
                if rewardTokenAddress == stor12:
                    mem[(2 * ceil32(return_data.size)) + 708] = uint255(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 740] = uint255(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 772] = 0
                    mem[(2 * ceil32(return_data.size)) + 804] = 0
                    mem[(2 * ceil32(return_data.size)) + 836] = this.address
                    mem[(2 * ceil32(return_data.size)) + 868] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args stor11, stor12, 2 * ext_call.return_data[0], 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
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
                    mem[(4 * ceil32(return_data.size)) + 640] = 0xb69ef8a800000000000000000000000000000000000000000000000000000000
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0xb69ef8a8 with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + 644 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 640] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + 644 len 7 * ceil32(return_data.size)]
                    mem[(4 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        mem[(8 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 644 len (13 * ceil32(return_data.size)) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[64] <= 0:
                            mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 644] = 32
                            mem[(8 * ceil32(return_data.size)) + 676] = 14
                            mem[(8 * ceil32(return_data.size)) + 708] = 'amount too low'
                        else:
                            mem[(8 * ceil32(return_data.size)) + 644] = PID
                            mem[(8 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 644 len (13 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                totalDeposits += ext_call.return_data[64]
                                mem[(8 * ceil32(return_data.size)) + 640] = totalDeposits
                                mem[(8 * ceil32(return_data.size)) + 672] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 64],
                            mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 644] = 32
                            mem[(8 * ceil32(return_data.size)) + 676] = 27
                            mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 640
                           len (13 * ceil32(return_data.size)) + 100
                    if not ext_call.return_data[64]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / ext_call.return_data[0] <= 0:
                            mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 708] = 32
                            mem[(8 * ceil32(return_data.size)) + 740] = 14
                            mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                        else:
                            mem[(8 * ceil32(return_data.size)) + 708] = PID
                            mem[(8 * ceil32(return_data.size)) + 740] = 0 / ext_call.return_data[0]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (0 / ext_call.return_data[0]) >= totalDeposits:
                                totalDeposits += 0 / ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 64],
                            mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 708] = 32
                            mem[(8 * ceil32(return_data.size)) + 740] = 27
                            mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                    else:
                        require ext_call.return_data[64]
                        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 644] = 32
                            mem[(8 * ceil32(return_data.size)) + 676] = 33
                            mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                            mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 640
                               len (13 * ceil32(return_data.size)) + 132
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                            mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 708] = 32
                            mem[(8 * ceil32(return_data.size)) + 740] = 14
                            mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                        else:
                            mem[(8 * ceil32(return_data.size)) + 708] = PID
                            mem[(8 * ceil32(return_data.size)) + 740] = ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) >= totalDeposits:
                                totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 64],
                            mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 708] = 32
                            mem[(8 * ceil32(return_data.size)) + 740] = 27
                            mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                    revert with memory
                      from (8 * ceil32(return_data.size)) + 704
                       len (13 * ceil32(return_data.size)) + 100
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
                _844 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                _886 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640] <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 672
                mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]
                require _844 + (32 * _886) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _844 + 672
                t = (4 * ceil32(return_data.size)) + 672
                while idx < _886:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _886 - 1 < _886
                _2912 = mem[(32 * _886 - 1) + (4 * ceil32(return_data.size)) + 672]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                mem[mem[64] + 36] = mem[(32 * _886 - 1) + (4 * ceil32(return_data.size)) + 672]
                mem[mem[64] + 68] = 160
                _2974 = mem[(2 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 544]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 576
                t = mem[64] + 196
                while idx < _2974:
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
                    args 2 * ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2974) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4608 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4624 = mem[_4608]
                require mem[_4608] <= test266151307()
                require _4608 + mem[_4608] + 31 < _4608 + return_data.size
                _4640 = mem[_4608 + mem[_4608]]
                require mem[_4608 + mem[_4608]] <= test266151307()
                require _4608 + ceil32(return_data.size) + (32 * mem[_4608 + mem[_4608]]) + 32 <= test266151307() and (32 * mem[_4608 + mem[_4608]]) + 32 >= 0
                mem[64] = _4608 + ceil32(return_data.size) + (32 * mem[_4608 + mem[_4608]]) + 32
                mem[_4608 + ceil32(return_data.size)] = _4640
                require _4624 + (32 * _4640) + 32 <= return_data.size
                idx = 0
                s = _4608 + _4624 + 32
                t = _4608 + ceil32(return_data.size) + 32
                while idx < _4640:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                require mem[(2 * ceil32(return_data.size)) + 544] - 1 < mem[(2 * ceil32(return_data.size)) + 544]
                _6331 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 544] - 1) + (2 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                mem[mem[64] + 68] = uint255(ext_call.return_data[0])
                mem[mem[64] + 100] = _2912
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_6331), 2 * ext_call.return_data[0], _2912, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6618 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_6618] == mem[_6618]
                require mem[_6618 + 32] == mem[_6618 + 32]
                _6688 = mem[_6618 + 64]
                require mem[_6618 + 64] == mem[_6618 + 64]
                if mem[_6618 + 64] <= 0:
                    revert with 0, 'amount too low'
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0xb69ef8a8 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6759 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6776 = mem[_6759]
                require mem[_6759] == mem[_6759]
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6868 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6868] == mem[_6868]
                if not mem[_6868]:
                    require ext_code.size(depositTokenAddress)
                    call depositTokenAddress.0xb6b55f25 with:
                         gas gas_remaining wei
                        args _6688
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _6688 <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, _6688
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + _6688 < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += _6688
                else:
                    if not _6688:
                        if _6776 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require _6776
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _6688
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / _6776 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, 0 / _6776
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + (0 / _6776) < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += 0 / _6776
                    else:
                        require _6688
                        if _6688 * mem[_6868] / _6688 != mem[_6868]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if _6776 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require _6776
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _6688
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _6688 * mem[_6868] / _6776 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, _6688 * mem[_6868] / _6776
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + (_6688 * mem[_6868] / _6776) < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += _6688 * mem[_6868] / _6776
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
                _845 = mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
                _887 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544] <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]) + 576 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]) + 576
                mem[(4 * ceil32(return_data.size)) + 544] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 544]
                require _845 + (32 * _887) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _845 + 576
                t = (4 * ceil32(return_data.size)) + 576
                while idx < _887:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _887 - 1 < _887
                _2914 = mem[(32 * _887 - 1) + (4 * ceil32(return_data.size)) + 576]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                mem[mem[64] + 36] = mem[(32 * _887 - 1) + (4 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 68] = 160
                _2975 = mem[(2 * ceil32(return_data.size)) + 416]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 448
                t = mem[64] + 196
                while idx < _2975:
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
                    args 2 * ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2975) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4609 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4625 = mem[_4609]
                require mem[_4609] <= test266151307()
                require _4609 + mem[_4609] + 31 < _4609 + return_data.size
                _4641 = mem[_4609 + mem[_4609]]
                require mem[_4609 + mem[_4609]] <= test266151307()
                require _4609 + ceil32(return_data.size) + (32 * mem[_4609 + mem[_4609]]) + 32 <= test266151307() and (32 * mem[_4609 + mem[_4609]]) + 32 >= 0
                mem[64] = _4609 + ceil32(return_data.size) + (32 * mem[_4609 + mem[_4609]]) + 32
                mem[_4609 + ceil32(return_data.size)] = _4641
                require _4625 + (32 * _4641) + 32 <= return_data.size
                idx = 0
                s = _4609 + _4625 + 32
                t = _4609 + ceil32(return_data.size) + 32
                while idx < _4641:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6316 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_6316 + 32 len 64] = call.data[calldata.size len 64]
                require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                require 0 < mem[_6316]
                mem[_6316 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                require 1 < mem[_6316]
                mem[_6316 + 64] = stor12
                require mem[_6316] - 1 < mem[_6316]
                require 0 < mem[_6316]
                if mem[_6316 + 44 len 20] == mem[(32 * mem[_6316] - 1) + _6316 + 44 len 20]:
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[_6316] - 1 < mem[_6316]
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6316] - 1) + _6316 + 44 len 20], _2914, 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    if ext_call.return_data[64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0xb69ef8a8 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args ext_call.return_data[64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if not ext_call.return_data[64]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_call.return_data[0]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / ext_call.return_data[0] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 0 / ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (0 / ext_call.return_data[0]) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 0 / ext_call.return_data[0]
                        else:
                            require ext_call.return_data[64]
                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_call.return_data[0]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    mem[_6316 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_6316 + 100] = uint255(ext_call.return_data[0])
                    mem[_6316 + 132] = 64
                    mem[_6316 + 164] = mem[_6316]
                    idx = 0
                    s = _6316 + 32
                    t = _6316 + 196
                    while idx < mem[_6316]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _6316 + (32 * mem[_6316]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8007 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8050 = mem[_8007]
                    require mem[_8007] <= test266151307()
                    require _8007 + mem[_8007] + 31 < _8007 + return_data.size
                    _8095 = mem[_8007 + mem[_8007]]
                    require mem[_8007 + mem[_8007]] <= test266151307()
                    require _8007 + ceil32(return_data.size) + (32 * mem[_8007 + mem[_8007]]) + 32 <= test266151307() and (32 * mem[_8007 + mem[_8007]]) + 32 >= 0
                    mem[64] = _8007 + ceil32(return_data.size) + (32 * mem[_8007 + mem[_8007]]) + 32
                    mem[_8007 + ceil32(return_data.size)] = _8095
                    require _8050 + (32 * _8095) + 32 <= return_data.size
                    idx = 0
                    s = _8007 + _8050 + 32
                    t = _8007 + ceil32(return_data.size) + 32
                    while idx < _8095:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _8095 - 1 < _8095
                    _8848 = mem[(32 * _8095 - 1) + _8007 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                    mem[mem[64] + 36] = mem[(32 * _8095 - 1) + _8007 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 68] = 160
                    _8869 = mem[_6316]
                    mem[mem[64] + 164] = mem[_6316]
                    idx = 0
                    s = _6316 + 32
                    t = mem[64] + 196
                    while idx < _8869:
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
                        args 2 * ext_call.return_data[0], mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _8869) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9533 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9541 = mem[_9533]
                    require mem[_9533] <= test266151307()
                    require _9533 + mem[_9533] + 31 < _9533 + return_data.size
                    _9549 = mem[_9533 + mem[_9533]]
                    require mem[_9533 + mem[_9533]] <= test266151307()
                    require _9533 + ceil32(return_data.size) + (32 * mem[_9533 + mem[_9533]]) + 32 <= test266151307() and (32 * mem[_9533 + mem[_9533]]) + 32 >= 0
                    mem[64] = _9533 + ceil32(return_data.size) + (32 * mem[_9533 + mem[_9533]]) + 32
                    mem[_9533 + ceil32(return_data.size)] = _9549
                    require _9541 + (32 * _9549) + 32 <= return_data.size
                    idx = 0
                    s = _9533 + _9541 + 32
                    t = _9533 + ceil32(return_data.size) + 32
                    while idx < _9549:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[_6316] - 1 < mem[_6316]
                    _10228 = mem[(32 * mem[_6316] - 1) + _6316 + 32]
                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = _2914
                    mem[mem[64] + 100] = _8848
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_10228), _2914, _8848, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_10258] == mem[_10258]
                    require mem[_10258 + 32] == mem[_10258 + 32]
                    _10282 = mem[_10258 + 64]
                    require mem[_10258 + 64] == mem[_10258 + 64]
                    if mem[_10258 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0xb69ef8a8 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10325 = mem[_10316]
                    require mem[_10316] == mem[_10316]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10358 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_10358] == mem[_10358]
                    if not mem[_10358]:
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _10282
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _10282 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, _10282
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + _10282 < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += _10282
                    else:
                        if not _10282:
                            if _10325 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _10325
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _10282
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / _10325 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 0 / _10325
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (0 / _10325) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 0 / _10325
                        else:
                            require _10282
                            if _10282 * mem[_10358] / _10282 != mem[_10358]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _10325 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _10325
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _10282
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _10282 * mem[_10358] / _10325 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _10282 * mem[_10358] / _10325
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (_10282 * mem[_10358] / _10325) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _10282 * mem[_10358] / _10325
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
                mem[(2 * ceil32(return_data.size)) + 480] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[(2 * ceil32(return_data.size)) + 512] = stor11
                if rewardTokenAddress == stor11:
                    mem[(2 * ceil32(return_data.size)) + 544] = 2
                    mem[(2 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 608] = stor12
                    if rewardTokenAddress == stor12:
                        mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 772] = 0
                        mem[(2 * ceil32(return_data.size)) + 804] = 0
                        mem[(2 * ceil32(return_data.size)) + 836] = this.address
                        mem[(2 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor11, stor12, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[(4 * ceil32(return_data.size)) + 640] = 0xb69ef8a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + 644 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 640] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + 644 len 7 * ceil32(return_data.size)]
                        mem[(4 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 644 len (13 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[64] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 644] = 32
                                mem[(8 * ceil32(return_data.size)) + 676] = 14
                                mem[(8 * ceil32(return_data.size)) + 708] = 'amount too low'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 644] = PID
                                mem[(8 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 644 len (13 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                    totalDeposits += ext_call.return_data[64]
                                    mem[(8 * ceil32(return_data.size)) + 640] = totalDeposits
                                    mem[(8 * ceil32(return_data.size)) + 672] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 64],
                                mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 644] = 32
                                mem[(8 * ceil32(return_data.size)) + 676] = 27
                                mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 640
                               len (13 * ceil32(return_data.size)) + 100
                        if not ext_call.return_data[64]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / ext_call.return_data[0] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 14
                                mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 708] = PID
                                mem[(8 * ceil32(return_data.size)) + 740] = 0 / ext_call.return_data[0]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / ext_call.return_data[0]) >= totalDeposits:
                                    totalDeposits += 0 / ext_call.return_data[0]
                                    mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                    mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 64],
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 27
                                mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                        else:
                            require ext_call.return_data[64]
                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 644] = 32
                                mem[(8 * ceil32(return_data.size)) + 676] = 33
                                mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 640
                                   len (13 * ceil32(return_data.size)) + 132
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 14
                                mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 708] = PID
                                mem[(8 * ceil32(return_data.size)) + 740] = ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) >= totalDeposits:
                                    totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                    mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 64],
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 27
                                mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 704
                           len (13 * ceil32(return_data.size)) + 100
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
                    _836 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                    _882 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                    mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                    require _836 + (32 * _882) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _836 + 672
                    t = (4 * ceil32(return_data.size)) + 672
                    while idx < _882:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _882 - 1 < _882
                    _2904 = mem[(32 * _882 - 1) + (4 * ceil32(return_data.size)) + 672]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _2904
                    mem[mem[64] + 68] = 160
                    _2970 = mem[(2 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 544]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 576
                    t = mem[64] + 196
                    while idx < _2970:
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2904, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2970) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4604 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4620 = mem[_4604]
                    require mem[_4604] <= test266151307()
                    require _4604 + mem[_4604] + 31 < _4604 + return_data.size
                    _4636 = mem[_4604 + mem[_4604]]
                    require mem[_4604 + mem[_4604]] <= test266151307()
                    require _4604 + ceil32(return_data.size) + (32 * mem[_4604 + mem[_4604]]) + 32 <= test266151307() and (32 * mem[_4604 + mem[_4604]]) + 32 >= 0
                    mem[64] = _4604 + ceil32(return_data.size) + (32 * mem[_4604 + mem[_4604]]) + 32
                    mem[_4604 + ceil32(return_data.size)] = _4636
                    require _4620 + (32 * _4636) + 32 <= return_data.size
                    idx = 0
                    s = _4604 + _4620 + 32
                    t = _4604 + ceil32(return_data.size) + 32
                    while idx < _4636:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[(2 * ceil32(return_data.size)) + 544] - 1 < mem[(2 * ceil32(return_data.size)) + 544]
                    _6327 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 544] - 1) + (2 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _2904
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_6327), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2904, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6616 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_6616] == mem[_6616]
                    require mem[_6616 + 32] == mem[_6616 + 32]
                    _6686 = mem[_6616 + 64]
                    require mem[_6616 + 64] == mem[_6616 + 64]
                    if mem[_6616 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0xb69ef8a8 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6757 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6774 = mem[_6757]
                    require mem[_6757] == mem[_6757]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6864 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6864] == mem[_6864]
                    if not mem[_6864]:
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _6686
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _6686 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, _6686
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + _6686 < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += _6686
                    else:
                        if not _6686:
                            if _6774 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6774
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6686
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / _6774 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 0 / _6774
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (0 / _6774) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 0 / _6774
                        else:
                            require _6686
                            if _6686 * mem[_6864] / _6686 != mem[_6864]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _6774 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6774
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6686
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6686 * mem[_6864] / _6774 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6686 * mem[_6864] / _6774
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (_6686 * mem[_6864] / _6774) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6686 * mem[_6864] / _6774
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
                    _837 = mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
                    _883 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                    mem[(4 * ceil32(return_data.size)) + 544] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                    require _837 + (32 * _883) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _837 + 576
                    t = (4 * ceil32(return_data.size)) + 576
                    while idx < _883:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _883 - 1 < _883
                    _2906 = mem[(32 * _883 - 1) + (4 * ceil32(return_data.size)) + 576]
                    _2907 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _883 - 1) + (4 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 68] = 160
                    _2971 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _2971:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2907 + 100] = this.address
                    mem[_2907 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2907 + (32 * _2971) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4605 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4621 = mem[_4605]
                    require mem[_4605] <= test266151307()
                    require _4605 + mem[_4605] + 31 < _4605 + return_data.size
                    _4637 = mem[_4605 + mem[_4605]]
                    require mem[_4605 + mem[_4605]] <= test266151307()
                    require _4605 + ceil32(return_data.size) + (32 * mem[_4605 + mem[_4605]]) + 32 <= test266151307() and (32 * mem[_4605 + mem[_4605]]) + 32 >= 0
                    mem[64] = _4605 + ceil32(return_data.size) + (32 * mem[_4605 + mem[_4605]]) + 32
                    mem[_4605 + ceil32(return_data.size)] = _4637
                    require _4621 + (32 * _4637) + 32 <= return_data.size
                    idx = 0
                    s = _4605 + _4621 + 32
                    t = _4605 + ceil32(return_data.size) + 32
                    while idx < _4637:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6308 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6308 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_6308]
                    mem[_6308 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_6308]
                    mem[_6308 + 64] = stor12
                    require mem[_6308] - 1 < mem[_6308]
                    require 0 < mem[_6308]
                    if mem[_6308 + 44 len 20] == mem[(32 * mem[_6308] - 1) + _6308 + 44 len 20]:
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_6308] - 1 < mem[_6308]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6308] - 1) + _6308 + 44 len 20], _2906, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            if not ext_call.return_data[64]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / ext_call.return_data[0] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / ext_call.return_data[0]) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / ext_call.return_data[0]
                            else:
                                require ext_call.return_data[64]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                    else:
                        mem[_6308 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6308 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[_6308 + 132] = 64
                        mem[_6308 + 164] = mem[_6308]
                        idx = 0
                        s = _6308 + 32
                        t = _6308 + 196
                        while idx < mem[_6308]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6308 + (32 * mem[_6308]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8005 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8040 = mem[_8005]
                        require mem[_8005] <= test266151307()
                        require _8005 + mem[_8005] + 31 < _8005 + return_data.size
                        _8093 = mem[_8005 + mem[_8005]]
                        require mem[_8005 + mem[_8005]] <= test266151307()
                        require _8005 + ceil32(return_data.size) + (32 * mem[_8005 + mem[_8005]]) + 32 <= test266151307() and (32 * mem[_8005 + mem[_8005]]) + 32 >= 0
                        mem[64] = _8005 + ceil32(return_data.size) + (32 * mem[_8005 + mem[_8005]]) + 32
                        mem[_8005 + ceil32(return_data.size)] = _8093
                        require _8040 + (32 * _8093) + 32 <= return_data.size
                        idx = 0
                        s = _8005 + _8040 + 32
                        t = _8005 + ceil32(return_data.size) + 32
                        while idx < _8093:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _8093 - 1 < _8093
                        _8844 = mem[(32 * _8093 - 1) + _8005 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _8844
                        mem[mem[64] + 68] = 160
                        _8867 = mem[_6308]
                        mem[mem[64] + 164] = mem[_6308]
                        idx = 0
                        s = _6308 + 32
                        t = mem[64] + 196
                        while idx < _8867:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _8844, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _8867) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9531 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9539 = mem[_9531]
                        require mem[_9531] <= test266151307()
                        require _9531 + mem[_9531] + 31 < _9531 + return_data.size
                        _9547 = mem[_9531 + mem[_9531]]
                        require mem[_9531 + mem[_9531]] <= test266151307()
                        require _9531 + ceil32(return_data.size) + (32 * mem[_9531 + mem[_9531]]) + 32 <= test266151307() and (32 * mem[_9531 + mem[_9531]]) + 32 >= 0
                        mem[64] = _9531 + ceil32(return_data.size) + (32 * mem[_9531 + mem[_9531]]) + 32
                        mem[_9531 + ceil32(return_data.size)] = _9547
                        require _9539 + (32 * _9547) + 32 <= return_data.size
                        idx = 0
                        s = _9531 + _9539 + 32
                        t = _9531 + ceil32(return_data.size) + 32
                        while idx < _9547:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_6308] - 1 < mem[_6308]
                        _10224 = mem[(32 * mem[_6308] - 1) + _6308 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _2906
                        mem[mem[64] + 100] = _8844
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_10224), _2906, _8844, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10256 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_10256] == mem[_10256]
                        require mem[_10256 + 32] == mem[_10256 + 32]
                        _10280 = mem[_10256 + 64]
                        require mem[_10256 + 64] == mem[_10256 + 64]
                        if mem[_10256 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10314 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10323 = mem[_10314]
                        require mem[_10314] == mem[_10314]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10356 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10356] == mem[_10356]
                        if not mem[_10356]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _10280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _10280 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _10280
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _10280 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _10280
                        else:
                            if not _10280:
                                if _10323 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10323
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10280
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _10323 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _10323
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _10323) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _10323
                            else:
                                require _10280
                                if _10280 * mem[_10356] / _10280 != mem[_10356]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _10323 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10323
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10280
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10280 * mem[_10356] / _10323 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10280 * mem[_10356] / _10323
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_10280 * mem[_10356] / _10323) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10280 * mem[_10356] / _10323
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
                mem[(4 * ceil32(return_data.size)) + 480] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[(4 * ceil32(return_data.size)) + 512] = stor11
                if rewardTokenAddress == stor11:
                    mem[(4 * ceil32(return_data.size)) + 544] = 2
                    mem[(4 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 608] = stor12
                    if rewardTokenAddress == stor12:
                        mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 0
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor11, stor12, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        mem[(4 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 640] = 0xb69ef8a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 644 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 640] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 644 len 13 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 644 len (15 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[64] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 644] = 32
                                mem[(8 * ceil32(return_data.size)) + 676] = 14
                                mem[(8 * ceil32(return_data.size)) + 708] = 'amount too low'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 644] = PID
                                mem[(8 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 644 len (15 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                    totalDeposits += ext_call.return_data[64]
                                    mem[(8 * ceil32(return_data.size)) + 640] = totalDeposits
                                    mem[(8 * ceil32(return_data.size)) + 672] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(8 * ceil32(return_data.size)) + 640 len (15 * ceil32(return_data.size)) + 64],
                                mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 644] = 32
                                mem[(8 * ceil32(return_data.size)) + 676] = 27
                                mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 640
                               len (15 * ceil32(return_data.size)) + 100
                        if not ext_call.return_data[64]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / ext_call.return_data[0] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 14
                                mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 708] = PID
                                mem[(8 * ceil32(return_data.size)) + 740] = 0 / ext_call.return_data[0]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / ext_call.return_data[0]) >= totalDeposits:
                                    totalDeposits += 0 / ext_call.return_data[0]
                                    mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                    mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(8 * ceil32(return_data.size)) + 704 len (15 * ceil32(return_data.size)) + 64],
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 27
                                mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                        else:
                            require ext_call.return_data[64]
                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 644] = 32
                                mem[(8 * ceil32(return_data.size)) + 676] = 33
                                mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 640
                                   len (15 * ceil32(return_data.size)) + 132
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 14
                                mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 708] = PID
                                mem[(8 * ceil32(return_data.size)) + 740] = ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) >= totalDeposits:
                                    totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                    mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(8 * ceil32(return_data.size)) + 704 len (15 * ceil32(return_data.size)) + 64],
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 27
                                mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 704
                           len (15 * ceil32(return_data.size)) + 100
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
                    _840 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                    _884 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                    require _840 + (32 * _884) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _840 + 672
                    t = (6 * ceil32(return_data.size)) + 672
                    while idx < _884:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _884 - 1 < _884
                    _2908 = mem[(32 * _884 - 1) + (6 * ceil32(return_data.size)) + 672]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _884 - 1) + (6 * ceil32(return_data.size)) + 672]
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _884 - 1) + (6 * ceil32(return_data.size)) + 672], Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4606 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4622 = mem[_4606]
                    require mem[_4606] <= test266151307()
                    require _4606 + mem[_4606] + 31 < _4606 + return_data.size
                    _4638 = mem[_4606 + mem[_4606]]
                    require mem[_4606 + mem[_4606]] <= test266151307()
                    require _4606 + ceil32(return_data.size) + (32 * mem[_4606 + mem[_4606]]) + 32 <= test266151307() and (32 * mem[_4606 + mem[_4606]]) + 32 >= 0
                    mem[64] = _4606 + ceil32(return_data.size) + (32 * mem[_4606 + mem[_4606]]) + 32
                    mem[_4606 + ceil32(return_data.size)] = _4638
                    require _4622 + (32 * _4638) + 32 <= return_data.size
                    idx = 0
                    s = _4606 + _4622 + 32
                    t = _4606 + ceil32(return_data.size) + 32
                    while idx < _4638:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                    require mem[(4 * ceil32(return_data.size)) + 544] - 1 < mem[(4 * ceil32(return_data.size)) + 544]
                    _6329 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 544] - 1) + (4 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _2908
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_6329), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2908, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6617 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_6617] == mem[_6617]
                    require mem[_6617 + 32] == mem[_6617 + 32]
                    _6687 = mem[_6617 + 64]
                    require mem[_6617 + 64] == mem[_6617 + 64]
                    if mem[_6617 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0xb69ef8a8 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6758 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6775 = mem[_6758]
                    require mem[_6758] == mem[_6758]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6866 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6866] == mem[_6866]
                    if not mem[_6866]:
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _6687
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _6687 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, _6687
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + _6687 < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += _6687
                    else:
                        if not _6687:
                            if _6775 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6775
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6687
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / _6775 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 0 / _6775
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (0 / _6775) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 0 / _6775
                        else:
                            require _6687
                            if _6687 * mem[_6866] / _6687 != mem[_6866]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _6775 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6775
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6687
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6687 * mem[_6866] / _6775 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6687 * mem[_6866] / _6775
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (_6687 * mem[_6866] / _6775) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6687 * mem[_6866] / _6775
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
                    _841 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                    _885 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                    mem[(6 * ceil32(return_data.size)) + 544] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                    require _841 + (32 * _885) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _841 + 576
                    t = (6 * ceil32(return_data.size)) + 576
                    while idx < _885:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _885 - 1 < _885
                    _2910 = mem[(32 * _885 - 1) + (6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _885 - 1) + (6 * ceil32(return_data.size)) + 576]
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _885 - 1) + (6 * ceil32(return_data.size)) + 576], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4607 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4623 = mem[_4607]
                    require mem[_4607] <= test266151307()
                    require _4607 + mem[_4607] + 31 < _4607 + return_data.size
                    _4639 = mem[_4607 + mem[_4607]]
                    require mem[_4607 + mem[_4607]] <= test266151307()
                    require _4607 + ceil32(return_data.size) + (32 * mem[_4607 + mem[_4607]]) + 32 <= test266151307() and (32 * mem[_4607 + mem[_4607]]) + 32 >= 0
                    mem[64] = _4607 + ceil32(return_data.size) + (32 * mem[_4607 + mem[_4607]]) + 32
                    mem[_4607 + ceil32(return_data.size)] = _4639
                    require _4623 + (32 * _4639) + 32 <= return_data.size
                    idx = 0
                    s = _4607 + _4623 + 32
                    t = _4607 + ceil32(return_data.size) + 32
                    while idx < _4639:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6312 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6312 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_6312]
                    mem[_6312 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_6312]
                    mem[_6312 + 64] = stor12
                    require mem[_6312] - 1 < mem[_6312]
                    require 0 < mem[_6312]
                    if mem[_6312 + 44 len 20] == mem[(32 * mem[_6312] - 1) + _6312 + 44 len 20]:
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_6312] - 1 < mem[_6312]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6312] - 1) + _6312 + 44 len 20], _2910, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            if not ext_call.return_data[64]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / ext_call.return_data[0] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / ext_call.return_data[0]) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / ext_call.return_data[0]
                            else:
                                require ext_call.return_data[64]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                    else:
                        mem[_6312 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6312 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[_6312 + 132] = 64
                        mem[_6312 + 164] = mem[_6312]
                        idx = 0
                        s = _6312 + 32
                        t = _6312 + 196
                        while idx < mem[_6312]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6312 + (32 * mem[_6312]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8006 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8045 = mem[_8006]
                        require mem[_8006] <= test266151307()
                        require _8006 + mem[_8006] + 31 < _8006 + return_data.size
                        _8094 = mem[_8006 + mem[_8006]]
                        require mem[_8006 + mem[_8006]] <= test266151307()
                        require _8006 + ceil32(return_data.size) + (32 * mem[_8006 + mem[_8006]]) + 32 <= test266151307() and (32 * mem[_8006 + mem[_8006]]) + 32 >= 0
                        mem[64] = _8006 + ceil32(return_data.size) + (32 * mem[_8006 + mem[_8006]]) + 32
                        mem[_8006 + ceil32(return_data.size)] = _8094
                        require _8045 + (32 * _8094) + 32 <= return_data.size
                        idx = 0
                        s = _8006 + _8045 + 32
                        t = _8006 + ceil32(return_data.size) + 32
                        while idx < _8094:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _8094 - 1 < _8094
                        _8846 = mem[(32 * _8094 - 1) + _8006 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _8846
                        mem[mem[64] + 68] = 160
                        _8868 = mem[_6312]
                        mem[mem[64] + 164] = mem[_6312]
                        idx = 0
                        s = _6312 + 32
                        t = mem[64] + 196
                        while idx < _8868:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _8846, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _8868) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9532 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9540 = mem[_9532]
                        require mem[_9532] <= test266151307()
                        require _9532 + mem[_9532] + 31 < _9532 + return_data.size
                        _9548 = mem[_9532 + mem[_9532]]
                        require mem[_9532 + mem[_9532]] <= test266151307()
                        require _9532 + ceil32(return_data.size) + (32 * mem[_9532 + mem[_9532]]) + 32 <= test266151307() and (32 * mem[_9532 + mem[_9532]]) + 32 >= 0
                        mem[64] = _9532 + ceil32(return_data.size) + (32 * mem[_9532 + mem[_9532]]) + 32
                        mem[_9532 + ceil32(return_data.size)] = _9548
                        require _9540 + (32 * _9548) + 32 <= return_data.size
                        idx = 0
                        s = _9532 + _9540 + 32
                        t = _9532 + ceil32(return_data.size) + 32
                        while idx < _9548:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_6312] - 1 < mem[_6312]
                        _10226 = mem[(32 * mem[_6312] - 1) + _6312 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _2910
                        mem[mem[64] + 100] = _8846
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_10226), _2910, _8846, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10257 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_10257] == mem[_10257]
                        require mem[_10257 + 32] == mem[_10257 + 32]
                        _10281 = mem[_10257 + 64]
                        require mem[_10257 + 64] == mem[_10257 + 64]
                        if mem[_10257 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10315 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10324 = mem[_10315]
                        require mem[_10315] == mem[_10315]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10357 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10357] == mem[_10357]
                        if not mem[_10357]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _10281
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _10281 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _10281
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _10281 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _10281
                        else:
                            if not _10281:
                                if _10324 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10324
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10281
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _10324 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _10324
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _10324) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _10324
                            else:
                                require _10281
                                if _10281 * mem[_10357] / _10281 != mem[_10357]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _10324 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10324
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10281
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10281 * mem[_10357] / _10324 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10281 * mem[_10357] / _10324
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_10281 * mem[_10357] / _10324) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10281 * mem[_10357] / _10324
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
                mem[(2 * ceil32(return_data.size)) + 480] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[(2 * ceil32(return_data.size)) + 512] = stor11
                if rewardTokenAddress == stor11:
                    mem[(2 * ceil32(return_data.size)) + 544] = 2
                    mem[(2 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 608] = stor12
                    if rewardTokenAddress == stor12:
                        mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 772] = 0
                        mem[(2 * ceil32(return_data.size)) + 804] = 0
                        mem[(2 * ceil32(return_data.size)) + 836] = this.address
                        mem[(2 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor11, stor12, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[(4 * ceil32(return_data.size)) + 640] = 0xb69ef8a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + 644 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 640] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + 644 len 7 * ceil32(return_data.size)]
                        mem[(4 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 644 len (13 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[64] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 644] = 32
                                mem[(8 * ceil32(return_data.size)) + 676] = 14
                                mem[(8 * ceil32(return_data.size)) + 708] = 'amount too low'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 644] = PID
                                mem[(8 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 644 len (13 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                    totalDeposits += ext_call.return_data[64]
                                    mem[(8 * ceil32(return_data.size)) + 640] = totalDeposits
                                    mem[(8 * ceil32(return_data.size)) + 672] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 64],
                                mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 644] = 32
                                mem[(8 * ceil32(return_data.size)) + 676] = 27
                                mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 640
                               len (13 * ceil32(return_data.size)) + 100
                        if not ext_call.return_data[64]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / ext_call.return_data[0] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 14
                                mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 708] = PID
                                mem[(8 * ceil32(return_data.size)) + 740] = 0 / ext_call.return_data[0]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / ext_call.return_data[0]) >= totalDeposits:
                                    totalDeposits += 0 / ext_call.return_data[0]
                                    mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                    mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 64],
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 27
                                mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                        else:
                            require ext_call.return_data[64]
                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 644] = 32
                                mem[(8 * ceil32(return_data.size)) + 676] = 33
                                mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 640
                                   len (13 * ceil32(return_data.size)) + 132
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 14
                                mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 708] = PID
                                mem[(8 * ceil32(return_data.size)) + 740] = ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) >= totalDeposits:
                                    totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                    mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 64],
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 27
                                mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 704
                           len (13 * ceil32(return_data.size)) + 100
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
                    _820 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                    _875 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672
                    mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                    require _820 + (32 * _875) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _820 + 672
                    t = (4 * ceil32(return_data.size)) + 672
                    while idx < _875:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _875 - 1 < _875
                    _2892 = mem[(32 * _875 - 1) + (4 * ceil32(return_data.size)) + 672]
                    _2893 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _2892
                    mem[mem[64] + 68] = 160
                    _2964 = mem[(2 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 544]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 576
                    t = mem[64] + 196
                    while idx < _2964:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2893 + 100] = this.address
                    mem[_2893 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2893 + (32 * _2964) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4596 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4614 = mem[_4596]
                    require mem[_4596] <= test266151307()
                    require _4596 + mem[_4596] + 31 < _4596 + return_data.size
                    _4630 = mem[_4596 + mem[_4596]]
                    require mem[_4596 + mem[_4596]] <= test266151307()
                    require _4596 + ceil32(return_data.size) + (32 * mem[_4596 + mem[_4596]]) + 32 <= test266151307() and (32 * mem[_4596 + mem[_4596]]) + 32 >= 0
                    mem[64] = _4596 + ceil32(return_data.size) + (32 * mem[_4596 + mem[_4596]]) + 32
                    mem[_4596 + ceil32(return_data.size)] = _4630
                    require _4614 + (32 * _4630) + 32 <= return_data.size
                    idx = 0
                    s = _4596 + _4614 + 32
                    t = _4596 + ceil32(return_data.size) + 32
                    while idx < _4630:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[(2 * ceil32(return_data.size)) + 544] - 1 < mem[(2 * ceil32(return_data.size)) + 544]
                    _6321 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 544] - 1) + (2 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _2892
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_6321), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2892, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6613 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_6613] == mem[_6613]
                    require mem[_6613 + 32] == mem[_6613 + 32]
                    _6683 = mem[_6613 + 64]
                    require mem[_6613 + 64] == mem[_6613 + 64]
                    if mem[_6613 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0xb69ef8a8 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6754 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6771 = mem[_6754]
                    require mem[_6754] == mem[_6754]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6858 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6858] == mem[_6858]
                    if not mem[_6858]:
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _6683
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _6683 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, _6683
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + _6683 < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += _6683
                    else:
                        if not _6683:
                            if _6771 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6771
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6683
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / _6771 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 0 / _6771
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (0 / _6771) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 0 / _6771
                        else:
                            require _6683
                            if _6683 * mem[_6858] / _6683 != mem[_6858]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _6771 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6771
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6683
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6683 * mem[_6858] / _6771 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6683 * mem[_6858] / _6771
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (_6683 * mem[_6858] / _6771) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6683 * mem[_6858] / _6771
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
                    _821 = mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
                    _876 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 576
                    mem[(4 * ceil32(return_data.size)) + 544] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]
                    require _821 + (32 * _876) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _821 + 576
                    t = (4 * ceil32(return_data.size)) + 576
                    while idx < _876:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _876 - 1 < _876
                    _2894 = mem[(32 * _876 - 1) + (4 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _876 - 1) + (4 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 68] = 160
                    _2965 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _2965:
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2965) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4597 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4615 = mem[_4597]
                    require mem[_4597] <= test266151307()
                    require _4597 + mem[_4597] + 31 < _4597 + return_data.size
                    _4631 = mem[_4597 + mem[_4597]]
                    require mem[_4597 + mem[_4597]] <= test266151307()
                    require _4597 + ceil32(return_data.size) + (32 * mem[_4597 + mem[_4597]]) + 32 <= test266151307() and (32 * mem[_4597 + mem[_4597]]) + 32 >= 0
                    mem[64] = _4597 + ceil32(return_data.size) + (32 * mem[_4597 + mem[_4597]]) + 32
                    mem[_4597 + ceil32(return_data.size)] = _4631
                    require _4615 + (32 * _4631) + 32 <= return_data.size
                    idx = 0
                    s = _4597 + _4615 + 32
                    t = _4597 + ceil32(return_data.size) + 32
                    while idx < _4631:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6296 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6296 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_6296]
                    mem[_6296 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_6296]
                    mem[_6296 + 64] = stor12
                    require mem[_6296] - 1 < mem[_6296]
                    require 0 < mem[_6296]
                    if mem[_6296 + 44 len 20] == mem[(32 * mem[_6296] - 1) + _6296 + 44 len 20]:
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_6296] - 1 < mem[_6296]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6296] - 1) + _6296 + 44 len 20], _2894, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            if not ext_call.return_data[64]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / ext_call.return_data[0] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / ext_call.return_data[0]) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / ext_call.return_data[0]
                            else:
                                require ext_call.return_data[64]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                    else:
                        mem[_6296 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6296 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[_6296 + 132] = 64
                        mem[_6296 + 164] = mem[_6296]
                        idx = 0
                        s = _6296 + 32
                        t = _6296 + 196
                        while idx < mem[_6296]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6296 + (32 * mem[_6296]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7998 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8024 = mem[_7998]
                        require mem[_7998] <= test266151307()
                        require _7998 + mem[_7998] + 31 < _7998 + return_data.size
                        _8088 = mem[_7998 + mem[_7998]]
                        require mem[_7998 + mem[_7998]] <= test266151307()
                        require _7998 + ceil32(return_data.size) + (32 * mem[_7998 + mem[_7998]]) + 32 <= test266151307() and (32 * mem[_7998 + mem[_7998]]) + 32 >= 0
                        mem[64] = _7998 + ceil32(return_data.size) + (32 * mem[_7998 + mem[_7998]]) + 32
                        mem[_7998 + ceil32(return_data.size)] = _8088
                        require _8024 + (32 * _8088) + 32 <= return_data.size
                        idx = 0
                        s = _7998 + _8024 + 32
                        t = _7998 + ceil32(return_data.size) + 32
                        while idx < _8088:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _8088 - 1 < _8088
                        _8838 = mem[(32 * _8088 - 1) + _7998 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _8088 - 1) + _7998 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 68] = 160
                        _8864 = mem[_6296]
                        mem[mem[64] + 164] = mem[_6296]
                        idx = 0
                        s = _6296 + 32
                        t = mem[64] + 196
                        while idx < _8864:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _8864) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9527 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9536 = mem[_9527]
                        require mem[_9527] <= test266151307()
                        require _9527 + mem[_9527] + 31 < _9527 + return_data.size
                        _9544 = mem[_9527 + mem[_9527]]
                        require mem[_9527 + mem[_9527]] <= test266151307()
                        require _9527 + ceil32(return_data.size) + (32 * mem[_9527 + mem[_9527]]) + 32 <= test266151307() and (32 * mem[_9527 + mem[_9527]]) + 32 >= 0
                        mem[64] = _9527 + ceil32(return_data.size) + (32 * mem[_9527 + mem[_9527]]) + 32
                        mem[_9527 + ceil32(return_data.size)] = _9544
                        require _9536 + (32 * _9544) + 32 <= return_data.size
                        idx = 0
                        s = _9527 + _9536 + 32
                        t = _9527 + ceil32(return_data.size) + 32
                        while idx < _9544:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_6296] - 1 < mem[_6296]
                        _10218 = mem[(32 * mem[_6296] - 1) + _6296 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _2894
                        mem[mem[64] + 100] = _8838
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_10218), _2894, _8838, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10253 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_10253] == mem[_10253]
                        require mem[_10253 + 32] == mem[_10253 + 32]
                        _10277 = mem[_10253 + 64]
                        require mem[_10253 + 64] == mem[_10253 + 64]
                        if mem[_10253 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10311 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10320 = mem[_10311]
                        require mem[_10311] == mem[_10311]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10353 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10353] == mem[_10353]
                        if not mem[_10353]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _10277
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _10277 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _10277
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _10277 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _10277
                        else:
                            if not _10277:
                                if _10320 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10320
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10277
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _10320 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _10320
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _10320) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _10320
                            else:
                                require _10277
                                if _10277 * mem[_10353] / _10277 != mem[_10353]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _10320 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10320
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10277
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10277 * mem[_10353] / _10320 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10277 * mem[_10353] / _10320
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_10277 * mem[_10353] / _10320) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10277 * mem[_10353] / _10320
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
                    mem[(2 * ceil32(return_data.size)) + 480] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[(2 * ceil32(return_data.size)) + 512] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(2 * ceil32(return_data.size)) + 544] = 2
                        mem[(2 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 608] = stor12
                        if rewardTokenAddress == stor12:
                            mem[(2 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 772] = 0
                            mem[(2 * ceil32(return_data.size)) + 804] = 0
                            mem[(2 * ceil32(return_data.size)) + 836] = this.address
                            mem[(2 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor11, stor12, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[(4 * ceil32(return_data.size)) + 640] = 0xb69ef8a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                                   args mem[(4 * ceil32(return_data.size)) + 644 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[(4 * ceil32(return_data.size)) + 640] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                                   args mem[(4 * ceil32(return_data.size)) + 644 len 7 * ceil32(return_data.size)]
                            mem[(4 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                mem[(8 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 644 len (13 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[64] <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 14
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'amount too low'
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 644] = PID
                                    mem[(8 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 644 len (13 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                        totalDeposits += ext_call.return_data[64]
                                        mem[(8 * ceil32(return_data.size)) + 640] = totalDeposits
                                        mem[(8 * ceil32(return_data.size)) + 672] = totalSupply
                                        emit Reinvest(uint256 rg1, uint256 rg2):
                                                      mem[(8 * ceil32(return_data.size)) + 640 len (13 * ceil32(return_data.size)) + 64],
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 27
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 640
                                   len (13 * ceil32(return_data.size)) + 100
                            if not ext_call.return_data[64]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / ext_call.return_data[0] <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 14
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 708] = PID
                                    mem[(8 * ceil32(return_data.size)) + 740] = 0 / ext_call.return_data[0]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / ext_call.return_data[0]) >= totalDeposits:
                                        totalDeposits += 0 / ext_call.return_data[0]
                                        mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                        mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                        emit Reinvest(uint256 rg1, uint256 rg2):
                                                      mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 64],
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 27
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                            else:
                                require ext_call.return_data[64]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 33
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                    mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (13 * ceil32(return_data.size)) + 132
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 14
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 708] = PID
                                    mem[(8 * ceil32(return_data.size)) + 740] = ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 708 len (13 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) >= totalDeposits:
                                        totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                        mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                        mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                        emit Reinvest(uint256 rg1, uint256 rg2):
                                                      mem[(8 * ceil32(return_data.size)) + 704 len (13 * ceil32(return_data.size)) + 64],
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 27
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 704
                               len (13 * ceil32(return_data.size)) + 100
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
                        _810 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                        _870 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                        mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require _810 + (32 * _870) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _810 + 672
                        t = (4 * ceil32(return_data.size)) + 672
                        while idx < _870:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _870 - 1 < _870
                        _2884 = mem[(32 * _870 - 1) + (4 * ceil32(return_data.size)) + 672]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _870 - 1) + (4 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 68] = 160
                        _2960 = mem[(2 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 544]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 576
                        t = mem[64] + 196
                        while idx < _2960:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2960) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4592 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4610 = mem[_4592]
                        require mem[_4592] <= test266151307()
                        require _4592 + mem[_4592] + 31 < _4592 + return_data.size
                        _4626 = mem[_4592 + mem[_4592]]
                        require mem[_4592 + mem[_4592]] <= test266151307()
                        require _4592 + ceil32(return_data.size) + (32 * mem[_4592 + mem[_4592]]) + 32 <= test266151307() and (32 * mem[_4592 + mem[_4592]]) + 32 >= 0
                        mem[64] = _4592 + ceil32(return_data.size) + (32 * mem[_4592 + mem[_4592]]) + 32
                        mem[_4592 + ceil32(return_data.size)] = _4626
                        require _4610 + (32 * _4626) + 32 <= return_data.size
                        idx = 0
                        s = _4592 + _4610 + 32
                        t = _4592 + ceil32(return_data.size) + 32
                        while idx < _4626:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[(2 * ceil32(return_data.size)) + 544] - 1 < mem[(2 * ceil32(return_data.size)) + 544]
                        _6317 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 544] - 1) + (2 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _2884
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_6317), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2884, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6611 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_6611] == mem[_6611]
                        require mem[_6611 + 32] == mem[_6611 + 32]
                        _6681 = mem[_6611 + 64]
                        require mem[_6611 + 64] == mem[_6611 + 64]
                        if mem[_6611 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6752 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6769 = mem[_6752]
                        require mem[_6752] == mem[_6752]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6854 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6854] == mem[_6854]
                        if not mem[_6854]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6681
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6681 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6681
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _6681 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6681
                        else:
                            if not _6681:
                                if _6769 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _6769
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _6681
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _6769 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _6769
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _6769) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _6769
                            else:
                                require _6681
                                if _6681 * mem[_6854] / _6681 != mem[_6854]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _6769 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _6769
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _6681
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _6681 * mem[_6854] / _6769 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _6681 * mem[_6854] / _6769
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_6681 * mem[_6854] / _6769) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _6681 * mem[_6854] / _6769
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
                        _811 = mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (2 * ceil32(return_data.size)) + return_data.size + 544
                        _871 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                        mem[(4 * ceil32(return_data.size)) + 544] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                        require _811 + (32 * _871) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _811 + 576
                        t = (4 * ceil32(return_data.size)) + 576
                        while idx < _871:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _871 - 1 < _871
                        _2886 = mem[(32 * _871 - 1) + (4 * ceil32(return_data.size)) + 576]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _2886
                        mem[mem[64] + 68] = 160
                        _2961 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _2961:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2886, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2961) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4593 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4611 = mem[_4593]
                        require mem[_4593] <= test266151307()
                        require _4593 + mem[_4593] + 31 < _4593 + return_data.size
                        _4627 = mem[_4593 + mem[_4593]]
                        require mem[_4593 + mem[_4593]] <= test266151307()
                        require _4593 + ceil32(return_data.size) + (32 * mem[_4593 + mem[_4593]]) + 32 <= test266151307() and (32 * mem[_4593 + mem[_4593]]) + 32 >= 0
                        mem[64] = _4593 + ceil32(return_data.size) + (32 * mem[_4593 + mem[_4593]]) + 32
                        mem[_4593 + ceil32(return_data.size)] = _4627
                        require _4611 + (32 * _4627) + 32 <= return_data.size
                        idx = 0
                        s = _4593 + _4611 + 32
                        t = _4593 + ceil32(return_data.size) + 32
                        while idx < _4627:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _6288 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6288 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_6288]
                        mem[_6288 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_6288]
                        mem[_6288 + 64] = stor12
                        require mem[_6288] - 1 < mem[_6288]
                        require 0 < mem[_6288]
                        if mem[_6288 + 44 len 20] == mem[(32 * mem[_6288] - 1) + _6288 + 44 len 20]:
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[_6288] - 1 < mem[_6288]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6288] - 1) + _6288 + 44 len 20], _2886, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
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
                                if not ext_call.return_data[64]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require ext_call.return_data[0]
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / ext_call.return_data[0] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / ext_call.return_data[0]) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / ext_call.return_data[0]
                                else:
                                    require ext_call.return_data[64]
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require ext_call.return_data[0]
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                        else:
                            mem[_6288 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_6288 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_6288 + 132] = 64
                            mem[_6288 + 164] = mem[_6288]
                            idx = 0
                            s = _6288 + 32
                            t = _6288 + 196
                            while idx < mem[_6288]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6288 + (32 * mem[_6288]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7996 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8014 = mem[_7996]
                            require mem[_7996] <= test266151307()
                            require _7996 + mem[_7996] + 31 < _7996 + return_data.size
                            _8086 = mem[_7996 + mem[_7996]]
                            require mem[_7996 + mem[_7996]] <= test266151307()
                            require _7996 + ceil32(return_data.size) + (32 * mem[_7996 + mem[_7996]]) + 32 <= test266151307() and (32 * mem[_7996 + mem[_7996]]) + 32 >= 0
                            mem[64] = _7996 + ceil32(return_data.size) + (32 * mem[_7996 + mem[_7996]]) + 32
                            mem[_7996 + ceil32(return_data.size)] = _8086
                            require _8014 + (32 * _8086) + 32 <= return_data.size
                            idx = 0
                            s = _7996 + _8014 + 32
                            t = _7996 + ceil32(return_data.size) + 32
                            while idx < _8086:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _8086 - 1 < _8086
                            _8834 = mem[(32 * _8086 - 1) + _7996 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _8086 - 1) + _7996 + ceil32(return_data.size) + 32]
                            mem[mem[64] + 68] = 160
                            _8862 = mem[_6288]
                            mem[mem[64] + 164] = mem[_6288]
                            idx = 0
                            s = _6288 + 32
                            t = mem[64] + 196
                            while idx < _8862:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _8862) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9525 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _9534 = mem[_9525]
                            require mem[_9525] <= test266151307()
                            require _9525 + mem[_9525] + 31 < _9525 + return_data.size
                            _9542 = mem[_9525 + mem[_9525]]
                            require mem[_9525 + mem[_9525]] <= test266151307()
                            require _9525 + ceil32(return_data.size) + (32 * mem[_9525 + mem[_9525]]) + 32 <= test266151307() and (32 * mem[_9525 + mem[_9525]]) + 32 >= 0
                            mem[64] = _9525 + ceil32(return_data.size) + (32 * mem[_9525 + mem[_9525]]) + 32
                            mem[_9525 + ceil32(return_data.size)] = _9542
                            require _9534 + (32 * _9542) + 32 <= return_data.size
                            idx = 0
                            s = _9525 + _9534 + 32
                            t = _9525 + ceil32(return_data.size) + 32
                            while idx < _9542:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[_6288] - 1 < mem[_6288]
                            _10214 = mem[(32 * mem[_6288] - 1) + _6288 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _2886
                            mem[mem[64] + 100] = _8834
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_10214), _2886, _8834, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10251 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_10251] == mem[_10251]
                            require mem[_10251 + 32] == mem[_10251 + 32]
                            _10275 = mem[_10251 + 64]
                            require mem[_10251 + 64] == mem[_10251 + 64]
                            if mem[_10251 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10309 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10318 = mem[_10309]
                            require mem[_10309] == mem[_10309]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10351 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10351] == mem[_10351]
                            if not mem[_10351]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10275
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10275 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10275
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + _10275 < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10275
                            else:
                                if not _10275:
                                    if _10318 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10318
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10275
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / _10318 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / _10318
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / _10318) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / _10318
                                else:
                                    require _10275
                                    if _10275 * mem[_10351] / _10275 != mem[_10351]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _10318 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10318
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10275
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _10275 * mem[_10351] / _10318 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, _10275 * mem[_10351] / _10318
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (_10275 * mem[_10351] / _10318) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += _10275 * mem[_10351] / _10318
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
                    mem[(4 * ceil32(return_data.size)) + 480] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[(4 * ceil32(return_data.size)) + 512] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(4 * ceil32(return_data.size)) + 544] = 2
                        mem[(4 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 608] = stor12
                        if rewardTokenAddress == stor12:
                            mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 0
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor11, stor12, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            mem[(4 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 640] = 0xb69ef8a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                                   args mem[(6 * ceil32(return_data.size)) + 644 len 8 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 640] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                                   args mem[(8 * ceil32(return_data.size)) + 644 len 13 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                mem[(8 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 644 len (15 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[64] <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 14
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'amount too low'
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 644] = PID
                                    mem[(8 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 644 len (15 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                        totalDeposits += ext_call.return_data[64]
                                        mem[(8 * ceil32(return_data.size)) + 640] = totalDeposits
                                        mem[(8 * ceil32(return_data.size)) + 672] = totalSupply
                                        emit Reinvest(uint256 rg1, uint256 rg2):
                                                      mem[(8 * ceil32(return_data.size)) + 640 len (15 * ceil32(return_data.size)) + 64],
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 27
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 640
                                   len (15 * ceil32(return_data.size)) + 100
                            if not ext_call.return_data[64]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / ext_call.return_data[0] <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 14
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 708] = PID
                                    mem[(8 * ceil32(return_data.size)) + 740] = 0 / ext_call.return_data[0]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / ext_call.return_data[0]) >= totalDeposits:
                                        totalDeposits += 0 / ext_call.return_data[0]
                                        mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                        mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                        emit Reinvest(uint256 rg1, uint256 rg2):
                                                      mem[(8 * ceil32(return_data.size)) + 704 len (15 * ceil32(return_data.size)) + 64],
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 27
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                            else:
                                require ext_call.return_data[64]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 33
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                    mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (15 * ceil32(return_data.size)) + 132
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 14
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 708] = PID
                                    mem[(8 * ceil32(return_data.size)) + 740] = ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) >= totalDeposits:
                                        totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                        mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                        mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                        emit Reinvest(uint256 rg1, uint256 rg2):
                                                      mem[(8 * ceil32(return_data.size)) + 704 len (15 * ceil32(return_data.size)) + 64],
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 27
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 704
                               len (15 * ceil32(return_data.size)) + 100
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
                        _815 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                        _873 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                        mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require _815 + (32 * _873) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _815 + 672
                        t = (6 * ceil32(return_data.size)) + 672
                        while idx < _873:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _873 - 1 < _873
                        _2888 = mem[(32 * _873 - 1) + (6 * ceil32(return_data.size)) + 672]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _873 - 1) + (6 * ceil32(return_data.size)) + 672]
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _873 - 1) + (6 * ceil32(return_data.size)) + 672], Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4594 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4612 = mem[_4594]
                        require mem[_4594] <= test266151307()
                        require _4594 + mem[_4594] + 31 < _4594 + return_data.size
                        _4628 = mem[_4594 + mem[_4594]]
                        require mem[_4594 + mem[_4594]] <= test266151307()
                        require _4594 + ceil32(return_data.size) + (32 * mem[_4594 + mem[_4594]]) + 32 <= test266151307() and (32 * mem[_4594 + mem[_4594]]) + 32 >= 0
                        mem[64] = _4594 + ceil32(return_data.size) + (32 * mem[_4594 + mem[_4594]]) + 32
                        mem[_4594 + ceil32(return_data.size)] = _4628
                        require _4612 + (32 * _4628) + 32 <= return_data.size
                        idx = 0
                        s = _4594 + _4612 + 32
                        t = _4594 + ceil32(return_data.size) + 32
                        while idx < _4628:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[(4 * ceil32(return_data.size)) + 544] - 1 < mem[(4 * ceil32(return_data.size)) + 544]
                        _6319 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 544] - 1) + (4 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _2888
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_6319), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2888, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6612 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_6612] == mem[_6612]
                        require mem[_6612 + 32] == mem[_6612 + 32]
                        _6682 = mem[_6612 + 64]
                        require mem[_6612 + 64] == mem[_6612 + 64]
                        if mem[_6612 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6753 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6770 = mem[_6753]
                        require mem[_6753] == mem[_6753]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6856 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6856] == mem[_6856]
                        if not mem[_6856]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6682
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6682 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6682
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _6682 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6682
                        else:
                            if not _6682:
                                if _6770 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _6770
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _6682
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _6770 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _6770
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _6770) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _6770
                            else:
                                require _6682
                                if _6682 * mem[_6856] / _6682 != mem[_6856]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _6770 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _6770
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _6682
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _6682 * mem[_6856] / _6770 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _6682 * mem[_6856] / _6770
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_6682 * mem[_6856] / _6770) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _6682 * mem[_6856] / _6770
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
                        _816 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                        _874 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                        mem[(6 * ceil32(return_data.size)) + 544] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                        require _816 + (32 * _874) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _816 + 576
                        t = (6 * ceil32(return_data.size)) + 576
                        while idx < _874:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _874 - 1 < _874
                        _2890 = mem[(32 * _874 - 1) + (6 * ceil32(return_data.size)) + 576]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _874 - 1) + (6 * ceil32(return_data.size)) + 576]
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _874 - 1) + (6 * ceil32(return_data.size)) + 576], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4595 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4613 = mem[_4595]
                        require mem[_4595] <= test266151307()
                        require _4595 + mem[_4595] + 31 < _4595 + return_data.size
                        _4629 = mem[_4595 + mem[_4595]]
                        require mem[_4595 + mem[_4595]] <= test266151307()
                        require _4595 + ceil32(return_data.size) + (32 * mem[_4595 + mem[_4595]]) + 32 <= test266151307() and (32 * mem[_4595 + mem[_4595]]) + 32 >= 0
                        mem[64] = _4595 + ceil32(return_data.size) + (32 * mem[_4595 + mem[_4595]]) + 32
                        mem[_4595 + ceil32(return_data.size)] = _4629
                        require _4613 + (32 * _4629) + 32 <= return_data.size
                        idx = 0
                        s = _4595 + _4613 + 32
                        t = _4595 + ceil32(return_data.size) + 32
                        while idx < _4629:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _6292 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6292 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_6292]
                        mem[_6292 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_6292]
                        mem[_6292 + 64] = stor12
                        require mem[_6292] - 1 < mem[_6292]
                        require 0 < mem[_6292]
                        if mem[_6292 + 44 len 20] == mem[(32 * mem[_6292] - 1) + _6292 + 44 len 20]:
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_6292] - 1 < mem[_6292]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6292] - 1) + _6292 + 44 len 20], _2890, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
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
                                if not ext_call.return_data[64]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require ext_call.return_data[0]
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / ext_call.return_data[0] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / ext_call.return_data[0]) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / ext_call.return_data[0]
                                else:
                                    require ext_call.return_data[64]
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require ext_call.return_data[0]
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                        else:
                            mem[_6292 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_6292 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_6292 + 132] = 64
                            mem[_6292 + 164] = mem[_6292]
                            idx = 0
                            s = _6292 + 32
                            t = _6292 + 196
                            while idx < mem[_6292]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6292 + (32 * mem[_6292]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7997 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8019 = mem[_7997]
                            require mem[_7997] <= test266151307()
                            require _7997 + mem[_7997] + 31 < _7997 + return_data.size
                            _8087 = mem[_7997 + mem[_7997]]
                            require mem[_7997 + mem[_7997]] <= test266151307()
                            require _7997 + ceil32(return_data.size) + (32 * mem[_7997 + mem[_7997]]) + 32 <= test266151307() and (32 * mem[_7997 + mem[_7997]]) + 32 >= 0
                            mem[64] = _7997 + ceil32(return_data.size) + (32 * mem[_7997 + mem[_7997]]) + 32
                            mem[_7997 + ceil32(return_data.size)] = _8087
                            require _8019 + (32 * _8087) + 32 <= return_data.size
                            idx = 0
                            s = _7997 + _8019 + 32
                            t = _7997 + ceil32(return_data.size) + 32
                            while idx < _8087:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _8087 - 1 < _8087
                            _8836 = mem[(32 * _8087 - 1) + _7997 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _8087 - 1) + _7997 + ceil32(return_data.size) + 32]
                            mem[mem[64] + 68] = 160
                            _8863 = mem[_6292]
                            mem[mem[64] + 164] = mem[_6292]
                            idx = 0
                            s = _6292 + 32
                            t = mem[64] + 196
                            while idx < _8863:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _8863) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9526 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _9535 = mem[_9526]
                            require mem[_9526] <= test266151307()
                            require _9526 + mem[_9526] + 31 < _9526 + return_data.size
                            _9543 = mem[_9526 + mem[_9526]]
                            require mem[_9526 + mem[_9526]] <= test266151307()
                            require _9526 + ceil32(return_data.size) + (32 * mem[_9526 + mem[_9526]]) + 32 <= test266151307() and (32 * mem[_9526 + mem[_9526]]) + 32 >= 0
                            mem[64] = _9526 + ceil32(return_data.size) + (32 * mem[_9526 + mem[_9526]]) + 32
                            mem[_9526 + ceil32(return_data.size)] = _9543
                            require _9535 + (32 * _9543) + 32 <= return_data.size
                            idx = 0
                            s = _9526 + _9535 + 32
                            t = _9526 + ceil32(return_data.size) + 32
                            while idx < _9543:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_6292] - 1 < mem[_6292]
                            _10216 = mem[(32 * mem[_6292] - 1) + _6292 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _2890
                            mem[mem[64] + 100] = _8836
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_10216), _2890, _8836, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10252 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_10252] == mem[_10252]
                            require mem[_10252 + 32] == mem[_10252 + 32]
                            _10276 = mem[_10252 + 64]
                            require mem[_10252 + 64] == mem[_10252 + 64]
                            if mem[_10252 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10319 = mem[_10310]
                            require mem[_10310] == mem[_10310]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10352] == mem[_10352]
                            if not mem[_10352]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10276
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10276 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10276
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + _10276 < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10276
                            else:
                                if not _10276:
                                    if _10319 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10319
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10276
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / _10319 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / _10319
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / _10319) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / _10319
                                else:
                                    require _10276
                                    if _10276 * mem[_10352] / _10276 != mem[_10352]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _10319 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10319
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10276
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _10276 * mem[_10352] / _10319 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, _10276 * mem[_10352] / _10319
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (_10276 * mem[_10352] / _10319) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += _10276 * mem[_10352] / _10319
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
                mem[(4 * ceil32(return_data.size)) + 480] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[(4 * ceil32(return_data.size)) + 512] = stor11
                if rewardTokenAddress == stor11:
                    mem[(4 * ceil32(return_data.size)) + 544] = 2
                    mem[(4 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 608] = stor12
                    if rewardTokenAddress == stor12:
                        mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[(4 * ceil32(return_data.size)) + 772] = 0
                        mem[(4 * ceil32(return_data.size)) + 804] = 0
                        mem[(4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor11, stor12, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        mem[(4 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 640] = 0xb69ef8a800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                               args mem[(6 * ceil32(return_data.size)) + 644 len 8 * ceil32(return_data.size)]
                        mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 640] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 644 len 13 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 644 len (15 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[64] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 644] = 32
                                mem[(8 * ceil32(return_data.size)) + 676] = 14
                                mem[(8 * ceil32(return_data.size)) + 708] = 'amount too low'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 644] = PID
                                mem[(8 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 644 len (15 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                    totalDeposits += ext_call.return_data[64]
                                    mem[(8 * ceil32(return_data.size)) + 640] = totalDeposits
                                    mem[(8 * ceil32(return_data.size)) + 672] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(8 * ceil32(return_data.size)) + 640 len (15 * ceil32(return_data.size)) + 64],
                                mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 644] = 32
                                mem[(8 * ceil32(return_data.size)) + 676] = 27
                                mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 640
                               len (15 * ceil32(return_data.size)) + 100
                        if not ext_call.return_data[64]:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / ext_call.return_data[0] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 14
                                mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 708] = PID
                                mem[(8 * ceil32(return_data.size)) + 740] = 0 / ext_call.return_data[0]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / ext_call.return_data[0]) >= totalDeposits:
                                    totalDeposits += 0 / ext_call.return_data[0]
                                    mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                    mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(8 * ceil32(return_data.size)) + 704 len (15 * ceil32(return_data.size)) + 64],
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 27
                                mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                        else:
                            require ext_call.return_data[64]
                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 644] = 32
                                mem[(8 * ceil32(return_data.size)) + 676] = 33
                                mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 640
                                   len (15 * ceil32(return_data.size)) + 132
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 14
                                mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 708] = PID
                                mem[(8 * ceil32(return_data.size)) + 740] = ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) >= totalDeposits:
                                    totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                    mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(8 * ceil32(return_data.size)) + 704 len (15 * ceil32(return_data.size)) + 64],
                                mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 708] = 32
                                mem[(8 * ceil32(return_data.size)) + 740] = 27
                                mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 704
                           len (15 * ceil32(return_data.size)) + 100
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
                    _831 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                    _880 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                    require _831 + (32 * _880) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _831 + 672
                    t = (6 * ceil32(return_data.size)) + 672
                    while idx < _880:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _880 - 1 < _880
                    _2900 = mem[(32 * _880 - 1) + (6 * ceil32(return_data.size)) + 672]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _880 - 1) + (6 * ceil32(return_data.size)) + 672]
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), mem[(32 * _880 - 1) + (6 * ceil32(return_data.size)) + 672], Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4602 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4618 = mem[_4602]
                    require mem[_4602] <= test266151307()
                    require _4602 + mem[_4602] + 31 < _4602 + return_data.size
                    _4634 = mem[_4602 + mem[_4602]]
                    require mem[_4602 + mem[_4602]] <= test266151307()
                    require _4602 + ceil32(return_data.size) + (32 * mem[_4602 + mem[_4602]]) + 32 <= test266151307() and (32 * mem[_4602 + mem[_4602]]) + 32 >= 0
                    mem[64] = _4602 + ceil32(return_data.size) + (32 * mem[_4602 + mem[_4602]]) + 32
                    mem[_4602 + ceil32(return_data.size)] = _4634
                    require _4618 + (32 * _4634) + 32 <= return_data.size
                    idx = 0
                    s = _4602 + _4618 + 32
                    t = _4602 + ceil32(return_data.size) + 32
                    while idx < _4634:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                    require mem[(4 * ceil32(return_data.size)) + 544] - 1 < mem[(4 * ceil32(return_data.size)) + 544]
                    _6325 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 544] - 1) + (4 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _2900
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_6325), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2900, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6615 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_6615] == mem[_6615]
                    require mem[_6615 + 32] == mem[_6615 + 32]
                    _6685 = mem[_6615 + 64]
                    require mem[_6615 + 64] == mem[_6615 + 64]
                    if mem[_6615 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0xb69ef8a8 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6756 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6773 = mem[_6756]
                    require mem[_6756] == mem[_6756]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6862 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6862] == mem[_6862]
                    if not mem[_6862]:
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _6685
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _6685 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, _6685
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + _6685 < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += _6685
                    else:
                        if not _6685:
                            if _6773 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6773
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6685
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / _6773 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 0 / _6773
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (0 / _6773) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 0 / _6773
                        else:
                            require _6685
                            if _6685 * mem[_6862] / _6685 != mem[_6862]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _6773 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6773
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6685
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6685 * mem[_6862] / _6773 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6685 * mem[_6862] / _6773
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (_6685 * mem[_6862] / _6773) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6685 * mem[_6862] / _6773
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
                    _832 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                    _881 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]) + 576
                    mem[(6 * ceil32(return_data.size)) + 544] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 544]
                    require _832 + (32 * _881) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _832 + 576
                    t = (6 * ceil32(return_data.size)) + 576
                    while idx < _881:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _881 - 1 < _881
                    _2902 = mem[(32 * _881 - 1) + (6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _881 - 1) + (6 * ceil32(return_data.size)) + 576]
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), mem[(32 * _881 - 1) + (6 * ceil32(return_data.size)) + 576], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4603 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4619 = mem[_4603]
                    require mem[_4603] <= test266151307()
                    require _4603 + mem[_4603] + 31 < _4603 + return_data.size
                    _4635 = mem[_4603 + mem[_4603]]
                    require mem[_4603 + mem[_4603]] <= test266151307()
                    require _4603 + ceil32(return_data.size) + (32 * mem[_4603 + mem[_4603]]) + 32 <= test266151307() and (32 * mem[_4603 + mem[_4603]]) + 32 >= 0
                    mem[64] = _4603 + ceil32(return_data.size) + (32 * mem[_4603 + mem[_4603]]) + 32
                    mem[_4603 + ceil32(return_data.size)] = _4635
                    require _4619 + (32 * _4635) + 32 <= return_data.size
                    idx = 0
                    s = _4603 + _4619 + 32
                    t = _4603 + ceil32(return_data.size) + 32
                    while idx < _4635:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6304 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6304 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_6304]
                    mem[_6304 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_6304]
                    mem[_6304 + 64] = stor12
                    require mem[_6304] - 1 < mem[_6304]
                    require 0 < mem[_6304]
                    if mem[_6304 + 44 len 20] == mem[(32 * mem[_6304] - 1) + _6304 + 44 len 20]:
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_6304] - 1 < mem[_6304]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6304] - 1) + _6304 + 44 len 20], _2902, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                            if not ext_call.return_data[64]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / ext_call.return_data[0] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / ext_call.return_data[0]) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / ext_call.return_data[0]
                            else:
                                require ext_call.return_data[64]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                    else:
                        mem[_6304 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6304 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[_6304 + 132] = 64
                        mem[_6304 + 164] = mem[_6304]
                        idx = 0
                        s = _6304 + 32
                        t = _6304 + 196
                        while idx < mem[_6304]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6304 + (32 * mem[_6304]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8004 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8035 = mem[_8004]
                        require mem[_8004] <= test266151307()
                        require _8004 + mem[_8004] + 31 < _8004 + return_data.size
                        _8092 = mem[_8004 + mem[_8004]]
                        require mem[_8004 + mem[_8004]] <= test266151307()
                        require _8004 + ceil32(return_data.size) + (32 * mem[_8004 + mem[_8004]]) + 32 <= test266151307() and (32 * mem[_8004 + mem[_8004]]) + 32 >= 0
                        mem[64] = _8004 + ceil32(return_data.size) + (32 * mem[_8004 + mem[_8004]]) + 32
                        mem[_8004 + ceil32(return_data.size)] = _8092
                        require _8035 + (32 * _8092) + 32 <= return_data.size
                        idx = 0
                        s = _8004 + _8035 + 32
                        t = _8004 + ceil32(return_data.size) + 32
                        while idx < _8092:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _8092 - 1 < _8092
                        _8842 = mem[(32 * _8092 - 1) + _8004 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _8092 - 1) + _8004 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 68] = 160
                        _8866 = mem[_6304]
                        mem[mem[64] + 164] = mem[_6304]
                        idx = 0
                        s = _6304 + 32
                        t = mem[64] + 196
                        while idx < _8866:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _8866) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9530 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9538 = mem[_9530]
                        require mem[_9530] <= test266151307()
                        require _9530 + mem[_9530] + 31 < _9530 + return_data.size
                        _9546 = mem[_9530 + mem[_9530]]
                        require mem[_9530 + mem[_9530]] <= test266151307()
                        require _9530 + ceil32(return_data.size) + (32 * mem[_9530 + mem[_9530]]) + 32 <= test266151307() and (32 * mem[_9530 + mem[_9530]]) + 32 >= 0
                        mem[64] = _9530 + ceil32(return_data.size) + (32 * mem[_9530 + mem[_9530]]) + 32
                        mem[_9530 + ceil32(return_data.size)] = _9546
                        require _9538 + (32 * _9546) + 32 <= return_data.size
                        idx = 0
                        s = _9530 + _9538 + 32
                        t = _9530 + ceil32(return_data.size) + 32
                        while idx < _9546:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_6304] - 1 < mem[_6304]
                        _10222 = mem[(32 * mem[_6304] - 1) + _6304 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _2902
                        mem[mem[64] + 100] = _8842
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_10222), _2902, _8842, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10255 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_10255] == mem[_10255]
                        require mem[_10255 + 32] == mem[_10255 + 32]
                        _10279 = mem[_10255 + 64]
                        require mem[_10255 + 64] == mem[_10255 + 64]
                        if mem[_10255 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10313 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10322 = mem[_10313]
                        require mem[_10313] == mem[_10313]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10355 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10355] == mem[_10355]
                        if not mem[_10355]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _10279
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _10279 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _10279
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _10279 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _10279
                        else:
                            if not _10279:
                                if _10322 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10322
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10279
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _10322 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _10322
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _10322) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _10322
                            else:
                                require _10279
                                if _10279 * mem[_10355] / _10279 != mem[_10355]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _10322 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10322
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10279
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10279 * mem[_10355] / _10322 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10279 * mem[_10355] / _10322
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_10279 * mem[_10355] / _10322) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10279 * mem[_10355] / _10322
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
                    mem[(4 * ceil32(return_data.size)) + 480] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[(4 * ceil32(return_data.size)) + 512] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(4 * ceil32(return_data.size)) + 544] = 2
                        mem[(4 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 608] = stor12
                        if rewardTokenAddress == stor12:
                            mem[(4 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = 0
                            mem[(4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(4 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor11, stor12, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            mem[(4 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 640] = 0xb69ef8a800000000000000000000000000000000000000000000000000000000
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                                   args mem[(6 * ceil32(return_data.size)) + 644 len 8 * ceil32(return_data.size)]
                            mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 640] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                                   args mem[(8 * ceil32(return_data.size)) + 644 len 13 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                mem[(8 * ceil32(return_data.size)) + 644] = ext_call.return_data[64]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 644 len (15 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[64] <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 14
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'amount too low'
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 644] = PID
                                    mem[(8 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 644 len (15 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                        totalDeposits += ext_call.return_data[64]
                                        mem[(8 * ceil32(return_data.size)) + 640] = totalDeposits
                                        mem[(8 * ceil32(return_data.size)) + 672] = totalSupply
                                        emit Reinvest(uint256 rg1, uint256 rg2):
                                                      mem[(8 * ceil32(return_data.size)) + 640 len (15 * ceil32(return_data.size)) + 64],
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 27
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (8 * ceil32(return_data.size)) + 640
                                   len (15 * ceil32(return_data.size)) + 100
                            if not ext_call.return_data[64]:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / ext_call.return_data[0] <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 14
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 708] = PID
                                    mem[(8 * ceil32(return_data.size)) + 740] = 0 / ext_call.return_data[0]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / ext_call.return_data[0]) >= totalDeposits:
                                        totalDeposits += 0 / ext_call.return_data[0]
                                        mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                        mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                        emit Reinvest(uint256 rg1, uint256 rg2):
                                                      mem[(8 * ceil32(return_data.size)) + 704 len (15 * ceil32(return_data.size)) + 64],
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 27
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                            else:
                                require ext_call.return_data[64]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    mem[(8 * ceil32(return_data.size)) + 640] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 644] = 32
                                    mem[(8 * ceil32(return_data.size)) + 676] = 33
                                    mem[(8 * ceil32(return_data.size)) + 708] = 'SafeMath: multiplication overflo'
                                    mem[(8 * ceil32(return_data.size)) + 740] = 'w'
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 640
                                       len (15 * ceil32(return_data.size)) + 132
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 708] = ext_call.return_data[64]
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 14
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'amount too low'
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 708] = PID
                                    mem[(8 * ceil32(return_data.size)) + 740] = ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 708 len (15 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) >= totalDeposits:
                                        totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                        mem[(8 * ceil32(return_data.size)) + 704] = totalDeposits
                                        mem[(8 * ceil32(return_data.size)) + 736] = totalSupply
                                        emit Reinvest(uint256 rg1, uint256 rg2):
                                                      mem[(8 * ceil32(return_data.size)) + 704 len (15 * ceil32(return_data.size)) + 64],
                                    mem[(8 * ceil32(return_data.size)) + 704] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 708] = 32
                                    mem[(8 * ceil32(return_data.size)) + 740] = 27
                                    mem[(8 * ceil32(return_data.size)) + 772] = 'SafeMath: addition overflow'
                            revert with memory
                              from (8 * ceil32(return_data.size)) + 704
                               len (15 * ceil32(return_data.size)) + 100
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
                        _824 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                        _877 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                        mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require _824 + (32 * _877) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _824 + 672
                        t = (6 * ceil32(return_data.size)) + 672
                        while idx < _877:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _877 - 1 < _877
                        _2896 = mem[(32 * _877 - 1) + (6 * ceil32(return_data.size)) + 672]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _877 - 1) + (6 * ceil32(return_data.size)) + 672]
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _877 - 1) + (6 * ceil32(return_data.size)) + 672], Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4598 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4616 = mem[_4598]
                        require mem[_4598] <= test266151307()
                        require _4598 + mem[_4598] + 31 < _4598 + return_data.size
                        _4632 = mem[_4598 + mem[_4598]]
                        require mem[_4598 + mem[_4598]] <= test266151307()
                        require _4598 + ceil32(return_data.size) + (32 * mem[_4598 + mem[_4598]]) + 32 <= test266151307() and (32 * mem[_4598 + mem[_4598]]) + 32 >= 0
                        mem[64] = _4598 + ceil32(return_data.size) + (32 * mem[_4598 + mem[_4598]]) + 32
                        mem[_4598 + ceil32(return_data.size)] = _4632
                        require _4616 + (32 * _4632) + 32 <= return_data.size
                        idx = 0
                        s = _4598 + _4616 + 32
                        t = _4598 + ceil32(return_data.size) + 32
                        while idx < _4632:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[(4 * ceil32(return_data.size)) + 544] - 1 < mem[(4 * ceil32(return_data.size)) + 544]
                        _6323 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 544] - 1) + (4 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _2896
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_6323), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2896, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6614 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_6614] == mem[_6614]
                        require mem[_6614 + 32] == mem[_6614 + 32]
                        _6684 = mem[_6614 + 64]
                        require mem[_6614 + 64] == mem[_6614 + 64]
                        if mem[_6614 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0xb69ef8a8 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6755 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6772 = mem[_6755]
                        require mem[_6755] == mem[_6755]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6860 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6860] == mem[_6860]
                        if not mem[_6860]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6684
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6684 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6684
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _6684 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6684
                        else:
                            if not _6684:
                                if _6772 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _6772
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _6684
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _6772 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _6772
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _6772) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _6772
                            else:
                                require _6684
                                if _6684 * mem[_6860] / _6684 != mem[_6860]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _6772 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _6772
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _6684
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _6684 * mem[_6860] / _6772 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _6684 * mem[_6860] / _6772
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_6684 * mem[_6860] / _6772) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _6684 * mem[_6860] / _6772
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
                        _825 = mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
                        _878 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                        mem[(6 * ceil32(return_data.size)) + 544] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                        require _825 + (32 * _878) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _825 + 576
                        t = (6 * ceil32(return_data.size)) + 576
                        while idx < _878:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _878 - 1 < _878
                        _2898 = mem[(32 * _878 - 1) + (6 * ceil32(return_data.size)) + 576]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _878 - 1) + (6 * ceil32(return_data.size)) + 576]
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _878 - 1) + (6 * ceil32(return_data.size)) + 576], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4599 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4617 = mem[_4599]
                        require mem[_4599] <= test266151307()
                        require _4599 + mem[_4599] + 31 < _4599 + return_data.size
                        _4633 = mem[_4599 + mem[_4599]]
                        require mem[_4599 + mem[_4599]] <= test266151307()
                        require _4599 + ceil32(return_data.size) + (32 * mem[_4599 + mem[_4599]]) + 32 <= test266151307() and (32 * mem[_4599 + mem[_4599]]) + 32 >= 0
                        mem[64] = _4599 + ceil32(return_data.size) + (32 * mem[_4599 + mem[_4599]]) + 32
                        mem[_4599 + ceil32(return_data.size)] = _4633
                        require _4617 + (32 * _4633) + 32 <= return_data.size
                        idx = 0
                        s = _4599 + _4617 + 32
                        t = _4599 + ceil32(return_data.size) + 32
                        while idx < _4633:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _6300 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6300 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_6300]
                        mem[_6300 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_6300]
                        mem[_6300 + 64] = stor12
                        require mem[_6300] - 1 < mem[_6300]
                        require 0 < mem[_6300]
                        if mem[_6300 + 44 len 20] == mem[(32 * mem[_6300] - 1) + _6300 + 44 len 20]:
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_6300] - 1 < mem[_6300]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6300] - 1) + _6300 + 44 len 20], _2898, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
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
                                if not ext_call.return_data[64]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require ext_call.return_data[0]
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / ext_call.return_data[0] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / ext_call.return_data[0]) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / ext_call.return_data[0]
                                else:
                                    require ext_call.return_data[64]
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require ext_call.return_data[0]
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                        else:
                            mem[_6300 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_6300 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_6300 + 132] = 64
                            mem[_6300 + 164] = mem[_6300]
                            idx = 0
                            s = _6300 + 32
                            t = _6300 + 196
                            while idx < mem[_6300]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6300 + (32 * mem[_6300]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7999 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8029 = mem[_7999]
                            require mem[_7999] <= test266151307()
                            require _7999 + mem[_7999] + 31 < _7999 + return_data.size
                            _8089 = mem[_7999 + mem[_7999]]
                            require mem[_7999 + mem[_7999]] <= test266151307()
                            require _7999 + ceil32(return_data.size) + (32 * mem[_7999 + mem[_7999]]) + 32 <= test266151307() and (32 * mem[_7999 + mem[_7999]]) + 32 >= 0
                            mem[64] = _7999 + ceil32(return_data.size) + (32 * mem[_7999 + mem[_7999]]) + 32
                            mem[_7999 + ceil32(return_data.size)] = _8089
                            require _8029 + (32 * _8089) + 32 <= return_data.size
                            idx = 0
                            s = _7999 + _8029 + 32
                            t = _7999 + ceil32(return_data.size) + 32
                            while idx < _8089:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _8089 - 1 < _8089
                            _8840 = mem[(32 * _8089 - 1) + _7999 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _8089 - 1) + _7999 + ceil32(return_data.size) + 32]
                            mem[mem[64] + 68] = 160
                            _8865 = mem[_6300]
                            mem[mem[64] + 164] = mem[_6300]
                            idx = 0
                            s = _6300 + 32
                            t = mem[64] + 196
                            while idx < _8865:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _8865) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9528 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _9537 = mem[_9528]
                            require mem[_9528] <= test266151307()
                            require _9528 + mem[_9528] + 31 < _9528 + return_data.size
                            _9545 = mem[_9528 + mem[_9528]]
                            require mem[_9528 + mem[_9528]] <= test266151307()
                            require _9528 + ceil32(return_data.size) + (32 * mem[_9528 + mem[_9528]]) + 32 <= test266151307() and (32 * mem[_9528 + mem[_9528]]) + 32 >= 0
                            mem[64] = _9528 + ceil32(return_data.size) + (32 * mem[_9528 + mem[_9528]]) + 32
                            mem[_9528 + ceil32(return_data.size)] = _9545
                            require _9537 + (32 * _9545) + 32 <= return_data.size
                            idx = 0
                            s = _9528 + _9537 + 32
                            t = _9528 + ceil32(return_data.size) + 32
                            while idx < _9545:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_6300] - 1 < mem[_6300]
                            _10220 = mem[(32 * mem[_6300] - 1) + _6300 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _2898
                            mem[mem[64] + 100] = _8840
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_10220), _2898, _8840, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10254 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_10254] == mem[_10254]
                            require mem[_10254 + 32] == mem[_10254 + 32]
                            _10278 = mem[_10254 + 64]
                            require mem[_10254 + 64] == mem[_10254 + 64]
                            if mem[_10254 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10321 = mem[_10312]
                            require mem[_10312] == mem[_10312]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10354 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10354] == mem[_10354]
                            if not mem[_10354]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10278
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10278 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10278
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + _10278 < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10278
                            else:
                                if not _10278:
                                    if _10321 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10321
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10278
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / _10321 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / _10321
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / _10321) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / _10321
                                else:
                                    require _10278
                                    if _10278 * mem[_10354] / _10278 != mem[_10354]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _10321 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10321
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10278
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _10278 * mem[_10354] / _10321 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, _10278 * mem[_10354] / _10321
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (_10278 * mem[_10354] / _10321) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += _10278 * mem[_10354] / _10321
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
                    mem[(6 * ceil32(return_data.size)) + 480] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[(6 * ceil32(return_data.size)) + 512] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(6 * ceil32(return_data.size)) + 544] = 2
                        mem[(6 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                        mem[(6 * ceil32(return_data.size)) + 608] = stor12
                        if rewardTokenAddress == stor12:
                            mem[(6 * ceil32(return_data.size)) + 708] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(6 * ceil32(return_data.size)) + 740] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[(6 * ceil32(return_data.size)) + 772] = 0
                            mem[(6 * ceil32(return_data.size)) + 804] = 0
                            mem[(6 * ceil32(return_data.size)) + 836] = this.address
                            mem[(6 * ceil32(return_data.size)) + 868] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor11, stor12, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            mem[(6 * ceil32(return_data.size)) + 640 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[(9 * ceil32(return_data.size)) + 640] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                                   args mem[(9 * ceil32(return_data.size)) + 644 len 4 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64], mem[(11 * ceil32(return_data.size)) + 676 len 9 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low', mem[(11 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                mem[(11 * ceil32(return_data.size)) + 676] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, ext_call.return_data[64], mem[(11 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow', mem[(11 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                totalDeposits += ext_call.return_data[64]
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              totalDeposits,
                                              totalSupply,
                                              mem[(11 * ceil32(return_data.size)) + 704 len 9 * ceil32(return_data.size)],
                            else:
                                if not ext_call.return_data[64]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require ext_call.return_data[0]
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64], mem[(11 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / ext_call.return_data[0] <= 0:
                                        revert with 0, 'amount too low', mem[(11 * ceil32(return_data.size)) + 804 len 9 * ceil32(return_data.size)]
                                    mem[(11 * ceil32(return_data.size)) + 740] = 0 / ext_call.return_data[0]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / ext_call.return_data[0], mem[(11 * ceil32(return_data.size)) + 772 len 9 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / ext_call.return_data[0]) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow', mem[(11 * ceil32(return_data.size)) + 804 len 9 * ceil32(return_data.size)]
                                    totalDeposits += 0 / ext_call.return_data[0]
                                else:
                                    require ext_call.return_data[64]
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow', mem[(11 * ceil32(return_data.size)) + 772 len 9 * ceil32(return_data.size)]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require ext_call.return_data[0]
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64], mem[(11 * ceil32(return_data.size)) + 740 len 9 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'amount too low', mem[(11 * ceil32(return_data.size)) + 804 len 9 * ceil32(return_data.size)]
                                    mem[(11 * ceil32(return_data.size)) + 740] = ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0], mem[(11 * ceil32(return_data.size)) + 772 len 9 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow', mem[(11 * ceil32(return_data.size)) + 804 len 9 * ceil32(return_data.size)]
                                    totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              totalDeposits,
                                              totalSupply,
                                              mem[(11 * ceil32(return_data.size)) + 768 len 9 * ceil32(return_data.size)],
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
                            _2928 = mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (6 * ceil32(return_data.size)) + return_data.size + 640
                            _2956 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(7 * ceil32(return_data.size)) + 640] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require _2928 + (32 * _2956) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + _2928 + 672
                            t = (7 * ceil32(return_data.size)) + 672
                            while idx < _2956:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _2956 - 1 < _2956
                            _4572 = mem[(32 * _2956 - 1) + (7 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _2956 - 1) + (7 * ceil32(return_data.size)) + 672]
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _2956 - 1) + (7 * ceil32(return_data.size)) + 672], Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6463 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6473 = mem[_6463]
                            require mem[_6463] <= test266151307()
                            require _6463 + mem[_6463] + 31 < _6463 + return_data.size
                            _6479 = mem[_6463 + mem[_6463]]
                            require mem[_6463 + mem[_6463]] <= test266151307()
                            require _6463 + ceil32(return_data.size) + (32 * mem[_6463 + mem[_6463]]) + 32 <= test266151307() and (32 * mem[_6463 + mem[_6463]]) + 32 >= 0
                            mem[64] = _6463 + ceil32(return_data.size) + (32 * mem[_6463 + mem[_6463]]) + 32
                            mem[_6463 + ceil32(return_data.size)] = _6479
                            require _6473 + (32 * _6479) + 32 <= return_data.size
                            idx = 0
                            s = _6463 + _6473 + 32
                            t = _6463 + ceil32(return_data.size) + 32
                            while idx < _6479:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require mem[(6 * ceil32(return_data.size)) + 544] - 1 < mem[(6 * ceil32(return_data.size)) + 544]
                            _8008 = mem[(32 * mem[(6 * ceil32(return_data.size)) + 544] - 1) + (6 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _4572
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_8008), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4572, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8188 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_8188] == mem[_8188]
                            require mem[_8188 + 32] == mem[_8188 + 32]
                            _8236 = mem[_8188 + 64]
                            require mem[_8188 + 64] == mem[_8188 + 64]
                            if mem[_8188 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8304 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8306 = mem[_8304]
                            require mem[_8304] == mem[_8304]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8316] == mem[_8316]
                            if not mem[_8316]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _8236
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _8236 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _8236
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + _8236 < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _8236
                            else:
                                if not _8236:
                                    if _8306 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _8306
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _8236
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / _8306 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / _8306
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / _8306) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / _8306
                                else:
                                    require _8236
                                    if _8236 * mem[_8316] / _8236 != mem[_8316]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _8306 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _8306
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _8236
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _8236 * mem[_8316] / _8306 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, _8236 * mem[_8316] / _8306
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (_8236 * mem[_8316] / _8306) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += _8236 * mem[_8316] / _8306
                            emit Reinvest(totalDeposits, totalSupply);
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
                        _2929 = mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 575 < (6 * ceil32(return_data.size)) + return_data.size + 544
                        _2957 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544] <= test266151307()
                        require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 32 >= 0
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]) + 576
                        mem[(7 * ceil32(return_data.size)) + 544] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 544]
                        require _2929 + (32 * _2957) + 32 <= return_data.size
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + _2929 + 576
                        t = (7 * ceil32(return_data.size)) + 576
                        while idx < _2957:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _2957 - 1 < _2957
                        _4574 = mem[(32 * _2957 - 1) + (7 * ceil32(return_data.size)) + 576]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _2957 - 1) + (7 * ceil32(return_data.size)) + 576]
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _2957 - 1) + (7 * ceil32(return_data.size)) + 576], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6464 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6474 = mem[_6464]
                        require mem[_6464] <= test266151307()
                        require _6464 + mem[_6464] + 31 < _6464 + return_data.size
                        _6480 = mem[_6464 + mem[_6464]]
                        require mem[_6464 + mem[_6464]] <= test266151307()
                        require _6464 + ceil32(return_data.size) + (32 * mem[_6464 + mem[_6464]]) + 32 <= test266151307() and (32 * mem[_6464 + mem[_6464]]) + 32 >= 0
                        mem[64] = _6464 + ceil32(return_data.size) + (32 * mem[_6464 + mem[_6464]]) + 32
                        mem[_6464 + ceil32(return_data.size)] = _6480
                        require _6474 + (32 * _6480) + 32 <= return_data.size
                        idx = 0
                        s = _6464 + _6474 + 32
                        t = _6464 + ceil32(return_data.size) + 32
                        while idx < _6480:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _8003 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_8003 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(6 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_8003]
                        mem[_8003 + 32] = mem[(6 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_8003]
                        mem[_8003 + 64] = stor12
                        require mem[_8003] - 1 < mem[_8003]
                        require 0 < mem[_8003]
                        if mem[_8003 + 44 len 20] == mem[(32 * mem[_8003] - 1) + _8003 + 44 len 20]:
                            require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require mem[_8003] - 1 < mem[_8003]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_8003] - 1) + _8003 + 44 len 20], _4574, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if not ext_call.return_data[0]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
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
                                if not ext_call.return_data[64]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require ext_call.return_data[0]
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / ext_call.return_data[0] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / ext_call.return_data[0]) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / ext_call.return_data[0]
                                else:
                                    require ext_call.return_data[64]
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require ext_call.return_data[0]
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[0]
                        else:
                            mem[_8003 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_8003 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_8003 + 132] = 64
                            mem[_8003 + 164] = mem[_8003]
                            idx = 0
                            s = _8003 + 32
                            t = _8003 + 196
                            while idx < mem[_8003]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8003 + (32 * mem[_8003]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8850 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8855 = mem[_8850]
                            require mem[_8850] <= test266151307()
                            require _8850 + mem[_8850] + 31 < _8850 + return_data.size
                            _8860 = mem[_8850 + mem[_8850]]
                            require mem[_8850 + mem[_8850]] <= test266151307()
                            require _8850 + ceil32(return_data.size) + (32 * mem[_8850 + mem[_8850]]) + 32 <= test266151307() and (32 * mem[_8850 + mem[_8850]]) + 32 >= 0
                            mem[64] = _8850 + ceil32(return_data.size) + (32 * mem[_8850 + mem[_8850]]) + 32
                            mem[_8850 + ceil32(return_data.size)] = _8860
                            require _8855 + (32 * _8860) + 32 <= return_data.size
                            idx = 0
                            s = _8850 + _8855 + 32
                            t = _8850 + ceil32(return_data.size) + 32
                            while idx < _8860:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _8860 - 1 < _8860
                            _9515 = mem[(32 * _8860 - 1) + _8850 + ceil32(return_data.size) + 32]
                            _9516 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _9515
                            mem[mem[64] + 68] = 160
                            _9529 = mem[_8003]
                            mem[mem[64] + 164] = mem[_8003]
                            idx = 0
                            s = _8003 + 32
                            t = mem[64] + 196
                            while idx < _9529:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_9516 + 100] = this.address
                            mem[_9516 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _9516 + (32 * _9529) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10231 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10232 = mem[_10231]
                            require mem[_10231] <= test266151307()
                            require _10231 + mem[_10231] + 31 < _10231 + return_data.size
                            _10233 = mem[_10231 + mem[_10231]]
                            require mem[_10231 + mem[_10231]] <= test266151307()
                            require _10231 + ceil32(return_data.size) + (32 * mem[_10231 + mem[_10231]]) + 32 <= test266151307() and (32 * mem[_10231 + mem[_10231]]) + 32 >= 0
                            mem[64] = _10231 + ceil32(return_data.size) + (32 * mem[_10231 + mem[_10231]]) + 32
                            mem[_10231 + ceil32(return_data.size)] = _10233
                            require _10232 + (32 * _10233) + 32 <= return_data.size
                            idx = 0
                            s = _10231 + _10232 + 32
                            t = _10231 + ceil32(return_data.size) + 32
                            while idx < _10233:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require mem[_8003] - 1 < mem[_8003]
                            _10796 = mem[(32 * mem[_8003] - 1) + _8003 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _4574
                            mem[mem[64] + 100] = _9515
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_10796), _4574, _9515, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10831 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_10831] == mem[_10831]
                            require mem[_10831 + 32] == mem[_10831 + 32]
                            _10834 = mem[_10831 + 64]
                            require mem[_10831 + 64] == mem[_10831 + 64]
                            if mem[_10831 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0xb69ef8a8 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10838 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10839 = mem[_10838]
                            require mem[_10838] == mem[_10838]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10843 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10843] == mem[_10843]
                            if not mem[_10843]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10834
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10834 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10834
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + _10834 < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10834
                            else:
                                if not _10834:
                                    if _10839 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10839
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10834
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / _10839 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / _10839
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / _10839) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / _10839
                                else:
                                    require _10834
                                    if _10834 * mem[_10843] / _10834 != mem[_10843]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _10839 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10839
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10834
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _10834 * mem[_10843] / _10839 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, _10834 * mem[_10843] / _10839
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (_10834 * mem[_10843] / _10839) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += _10834 * mem[_10843] / _10839
                        emit Reinvest(totalDeposits, totalSupply);
}



}
