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
            mem[(2 * ceil32(return_data.size)) + 416] = 2
            mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
            mem[(2 * ceil32(return_data.size)) + 480] = stor11
            if rewardTokenAddress == stor11:
                mem[(2 * ceil32(return_data.size)) + 512] = 3
                mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                mem[(2 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                    staticcall depositTokenAddress.balance() with:
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
                mem[(2 * ceil32(return_data.size)) + 708] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 544
                t = (2 * ceil32(return_data.size)) + 740
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 2 * ext_call.return_data[0], Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 740 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 640
                require return_data.size >= 32
                _846 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                _889 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640] <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 672
                mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]
                require _846 + (32 * _889) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _846 + 672
                t = (4 * ceil32(return_data.size)) + 672
                while idx < _889:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _889 - 1 < _889
                _2915 = mem[(32 * _889 - 1) + (4 * ceil32(return_data.size)) + 672]
                _2916 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                mem[mem[64] + 36] = _2915
                mem[mem[64] + 68] = 160
                _2977 = mem[(2 * ceil32(return_data.size)) + 512]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 544
                t = mem[64] + 196
                while idx < _2977:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_2916 + 100] = this.address
                mem[_2916 + 132] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2916 + (32 * _2977) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4611 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4627 = mem[_4611]
                require mem[_4611] <= test266151307()
                require _4611 + mem[_4611] + 31 < _4611 + return_data.size
                _4643 = mem[_4611 + mem[_4611]]
                require mem[_4611 + mem[_4611]] <= test266151307()
                require _4611 + ceil32(return_data.size) + (32 * mem[_4611 + mem[_4611]]) + 32 <= test266151307() and (32 * mem[_4611 + mem[_4611]]) + 32 >= 0
                mem[64] = _4611 + ceil32(return_data.size) + (32 * mem[_4611 + mem[_4611]]) + 32
                mem[_4611 + ceil32(return_data.size)] = _4643
                require _4627 + (32 * _4643) + 32 <= return_data.size
                idx = 0
                s = _4611 + _4627 + 32
                t = _4611 + ceil32(return_data.size) + 32
                while idx < _4643:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                require mem[(2 * ceil32(return_data.size)) + 512] - 1 < mem[(2 * ceil32(return_data.size)) + 512]
                _6342 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 512] - 1) + (2 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                mem[mem[64] + 68] = uint255(ext_call.return_data[0])
                mem[mem[64] + 100] = _2915
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_6342), 2 * ext_call.return_data[0], _2915, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6638 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_6638] == mem[_6638]
                require mem[_6638 + 32] == mem[_6638 + 32]
                _6708 = mem[_6638 + 64]
                require mem[_6638 + 64] == mem[_6638 + 64]
                if mem[_6638 + 64] <= 0:
                    revert with 0, 'amount too low'
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.balance() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6778 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6796 = mem[_6778]
                require mem[_6778] == mem[_6778]
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6881 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6881] == mem[_6881]
                if not mem[_6881]:
                    require ext_code.size(depositTokenAddress)
                    call depositTokenAddress.0xb6b55f25 with:
                         gas gas_remaining wei
                        args _6708
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _6708 <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, _6708
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + _6708 < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += _6708
                else:
                    if not _6708:
                        if _6796 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require _6796
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _6708
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / _6796 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, 0 / _6796
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + (0 / _6796) < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += 0 / _6796
                    else:
                        require _6708
                        if _6708 * mem[_6881] / _6708 != mem[_6881]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if _6796 <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require _6796
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _6708
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _6708 * mem[_6881] / _6796 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, _6708 * mem[_6881] / _6796
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + (_6708 * mem[_6881] / _6796) < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += _6708 * mem[_6881] / _6796
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
                _847 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                _890 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512] <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 544
                mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]
                require _847 + (32 * _890) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _847 + 544
                t = (4 * ceil32(return_data.size)) + 544
                while idx < _890:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _890 - 1 < _890
                _2917 = mem[(32 * _890 - 1) + (4 * ceil32(return_data.size)) + 544]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                mem[mem[64] + 36] = _2917
                mem[mem[64] + 68] = 160
                _2978 = mem[(2 * ceil32(return_data.size)) + 416]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 448
                t = mem[64] + 196
                while idx < _2978:
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
                    args 2 * ext_call.return_data[0], _2917, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2978) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4612 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4628 = mem[_4612]
                require mem[_4612] <= test266151307()
                require _4612 + mem[_4612] + 31 < _4612 + return_data.size
                _4644 = mem[_4612 + mem[_4612]]
                require mem[_4612 + mem[_4612]] <= test266151307()
                require _4612 + ceil32(return_data.size) + (32 * mem[_4612 + mem[_4612]]) + 32 <= test266151307() and (32 * mem[_4612 + mem[_4612]]) + 32 >= 0
                mem[64] = _4612 + ceil32(return_data.size) + (32 * mem[_4612 + mem[_4612]]) + 32
                mem[_4612 + ceil32(return_data.size)] = _4644
                require _4628 + (32 * _4644) + 32 <= return_data.size
                idx = 0
                s = _4612 + _4628 + 32
                t = _4612 + ceil32(return_data.size) + 32
                while idx < _4644:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6327 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[_6327 + 32 len 96] = call.data[calldata.size len 96]
                require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                require 0 < mem[_6327]
                mem[_6327 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                require 1 < mem[_6327]
                mem[_6327 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                require 2 < mem[_6327]
                mem[_6327 + 96] = stor12
                require mem[_6327] - 1 < mem[_6327]
                require 0 < mem[_6327]
                if mem[_6327 + 44 len 20] == mem[(32 * mem[_6327] - 1) + _6327 + 44 len 20]:
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[_6327] - 1 < mem[_6327]
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6327] - 1) + _6327 + 44 len 20], _2917, 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    if ext_call.return_data[64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.balance() with:
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
                    mem[_6327 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_6327 + 132] = uint255(ext_call.return_data[0])
                    mem[_6327 + 164] = 64
                    mem[_6327 + 196] = mem[_6327]
                    idx = 0
                    s = _6327 + 32
                    t = _6327 + 228
                    while idx < mem[_6327]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _6327 + (32 * mem[_6327]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8027 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8070 = mem[_8027]
                    require mem[_8027] <= test266151307()
                    require _8027 + mem[_8027] + 31 < _8027 + return_data.size
                    _8114 = mem[_8027 + mem[_8027]]
                    require mem[_8027 + mem[_8027]] <= test266151307()
                    require _8027 + ceil32(return_data.size) + (32 * mem[_8027 + mem[_8027]]) + 32 <= test266151307() and (32 * mem[_8027 + mem[_8027]]) + 32 >= 0
                    mem[64] = _8027 + ceil32(return_data.size) + (32 * mem[_8027 + mem[_8027]]) + 32
                    mem[_8027 + ceil32(return_data.size)] = _8114
                    require _8070 + (32 * _8114) + 32 <= return_data.size
                    idx = 0
                    s = _8027 + _8070 + 32
                    t = _8027 + ceil32(return_data.size) + 32
                    while idx < _8114:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _8114 - 1 < _8114
                    _8869 = mem[(32 * _8114 - 1) + _8027 + ceil32(return_data.size) + 32]
                    _8870 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                    mem[mem[64] + 36] = _8869
                    mem[mem[64] + 68] = 160
                    _8890 = mem[_6327]
                    mem[mem[64] + 164] = mem[_6327]
                    idx = 0
                    s = _6327 + 32
                    t = mem[64] + 196
                    while idx < _8890:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_8870 + 100] = this.address
                    mem[_8870 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _8870 + (32 * _8890) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9554 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9562 = mem[_9554]
                    require mem[_9554] <= test266151307()
                    require _9554 + mem[_9554] + 31 < _9554 + return_data.size
                    _9570 = mem[_9554 + mem[_9554]]
                    require mem[_9554 + mem[_9554]] <= test266151307()
                    require _9554 + ceil32(return_data.size) + (32 * mem[_9554 + mem[_9554]]) + 32 <= test266151307() and (32 * mem[_9554 + mem[_9554]]) + 32 >= 0
                    mem[64] = _9554 + ceil32(return_data.size) + (32 * mem[_9554 + mem[_9554]]) + 32
                    mem[_9554 + ceil32(return_data.size)] = _9570
                    require _9562 + (32 * _9570) + 32 <= return_data.size
                    idx = 0
                    s = _9554 + _9562 + 32
                    t = _9554 + ceil32(return_data.size) + 32
                    while idx < _9570:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[_6327] - 1 < mem[_6327]
                    _10249 = mem[(32 * mem[_6327] - 1) + _6327 + 32]
                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = _2917
                    mem[mem[64] + 100] = _8869
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_10249), _2917, _8869, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10279 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_10279] == mem[_10279]
                    require mem[_10279 + 32] == mem[_10279 + 32]
                    _10303 = mem[_10279 + 64]
                    require mem[_10279 + 64] == mem[_10279 + 64]
                    if mem[_10279 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.balance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10337 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10346 = mem[_10337]
                    require mem[_10337] == mem[_10337]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_10379] == mem[_10379]
                    if not mem[_10379]:
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _10303
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _10303 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, _10303
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + _10303 < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += _10303
                    else:
                        if not _10303:
                            if _10346 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _10346
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _10303
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / _10346 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 0 / _10346
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (0 / _10346) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 0 / _10346
                        else:
                            require _10303
                            if _10303 * mem[_10379] / _10303 != mem[_10379]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _10346 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _10346
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _10303
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _10303 * mem[_10379] / _10346 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _10303 * mem[_10379] / _10346
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (_10303 * mem[_10379] / _10346) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _10303 * mem[_10379] / _10346
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
                mem[(2 * ceil32(return_data.size)) + 480] = stor11
                if rewardTokenAddress == stor11:
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                        staticcall depositTokenAddress.balance() with:
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
                    mem[(2 * ceil32(return_data.size)) + 708] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = (2 * ceil32(return_data.size)) + 740
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 740 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 640
                    require return_data.size >= 32
                    _838 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                    _885 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                    mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                    require _838 + (32 * _885) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _838 + 672
                    t = (4 * ceil32(return_data.size)) + 672
                    while idx < _885:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _885 - 1 < _885
                    _2907 = mem[(32 * _885 - 1) + (4 * ceil32(return_data.size)) + 672]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _885 - 1) + (4 * ceil32(return_data.size)) + 672]
                    mem[mem[64] + 68] = 160
                    _2973 = mem[(2 * ceil32(return_data.size)) + 512]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = mem[64] + 196
                    while idx < _2973:
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2973) + 32]
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
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[(2 * ceil32(return_data.size)) + 512] - 1 < mem[(2 * ceil32(return_data.size)) + 512]
                    _6338 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 512] - 1) + (2 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _2907
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_6338), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2907, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6636 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_6636] == mem[_6636]
                    require mem[_6636 + 32] == mem[_6636 + 32]
                    _6706 = mem[_6636 + 64]
                    require mem[_6636 + 64] == mem[_6636 + 64]
                    if mem[_6636 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.balance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6794 = mem[_6774]
                    require mem[_6774] == mem[_6774]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6879 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6879] == mem[_6879]
                    if not mem[_6879]:
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _6706
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _6706 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, _6706
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + _6706 < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += _6706
                    else:
                        if not _6706:
                            if _6794 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6794
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6706
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / _6794 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 0 / _6794
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (0 / _6794) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 0 / _6794
                        else:
                            require _6706
                            if _6706 * mem[_6879] / _6706 != mem[_6879]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _6794 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6794
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6706
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6706 * mem[_6879] / _6794 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6706 * mem[_6879] / _6794
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (_6706 * mem[_6879] / _6794) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6706 * mem[_6879] / _6794
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
                    _839 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                    _886 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require _839 + (32 * _886) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _839 + 544
                    t = (4 * ceil32(return_data.size)) + 544
                    while idx < _886:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _886 - 1 < _886
                    _2909 = mem[(32 * _886 - 1) + (4 * ceil32(return_data.size)) + 544]
                    _2910 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _2909
                    mem[mem[64] + 68] = 160
                    _2974 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _2974:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2910 + 100] = this.address
                    mem[_2910 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2910 + (32 * _2974) + -mem[64] + 192]
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
                    _6319 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_6319 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_6319]
                    mem[_6319 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_6319]
                    mem[_6319 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    require 2 < mem[_6319]
                    mem[_6319 + 96] = stor12
                    require mem[_6319] - 1 < mem[_6319]
                    require 0 < mem[_6319]
                    if mem[_6319 + 44 len 20] == mem[(32 * mem[_6319] - 1) + _6319 + 44 len 20]:
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_6319] - 1 < mem[_6319]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6319] - 1) + _6319 + 44 len 20], _2909, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.balance() with:
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
                        mem[_6319 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6319 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[_6319 + 164] = 64
                        mem[_6319 + 196] = mem[_6319]
                        idx = 0
                        s = _6319 + 32
                        t = _6319 + 228
                        while idx < mem[_6319]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6319 + (32 * mem[_6319]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8025 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8060 = mem[_8025]
                        require mem[_8025] <= test266151307()
                        require _8025 + mem[_8025] + 31 < _8025 + return_data.size
                        _8112 = mem[_8025 + mem[_8025]]
                        require mem[_8025 + mem[_8025]] <= test266151307()
                        require _8025 + ceil32(return_data.size) + (32 * mem[_8025 + mem[_8025]]) + 32 <= test266151307() and (32 * mem[_8025 + mem[_8025]]) + 32 >= 0
                        mem[64] = _8025 + ceil32(return_data.size) + (32 * mem[_8025 + mem[_8025]]) + 32
                        mem[_8025 + ceil32(return_data.size)] = _8112
                        require _8060 + (32 * _8112) + 32 <= return_data.size
                        idx = 0
                        s = _8025 + _8060 + 32
                        t = _8025 + ceil32(return_data.size) + 32
                        while idx < _8112:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _8112 - 1 < _8112
                        _8865 = mem[(32 * _8112 - 1) + _8025 + ceil32(return_data.size) + 32]
                        _8866 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _8865
                        mem[mem[64] + 68] = 160
                        _8888 = mem[_6319]
                        mem[mem[64] + 164] = mem[_6319]
                        idx = 0
                        s = _6319 + 32
                        t = mem[64] + 196
                        while idx < _8888:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8866 + 100] = this.address
                        mem[_8866 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8866 + (32 * _8888) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9552 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9560 = mem[_9552]
                        require mem[_9552] <= test266151307()
                        require _9552 + mem[_9552] + 31 < _9552 + return_data.size
                        _9568 = mem[_9552 + mem[_9552]]
                        require mem[_9552 + mem[_9552]] <= test266151307()
                        require _9552 + ceil32(return_data.size) + (32 * mem[_9552 + mem[_9552]]) + 32 <= test266151307() and (32 * mem[_9552 + mem[_9552]]) + 32 >= 0
                        mem[64] = _9552 + ceil32(return_data.size) + (32 * mem[_9552 + mem[_9552]]) + 32
                        mem[_9552 + ceil32(return_data.size)] = _9568
                        require _9560 + (32 * _9568) + 32 <= return_data.size
                        idx = 0
                        s = _9552 + _9560 + 32
                        t = _9552 + ceil32(return_data.size) + 32
                        while idx < _9568:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_6319] - 1 < mem[_6319]
                        _10245 = mem[(32 * mem[_6319] - 1) + _6319 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _2909
                        mem[mem[64] + 100] = _8865
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_10245), _2909, _8865, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10277 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_10277] == mem[_10277]
                        require mem[_10277 + 32] == mem[_10277 + 32]
                        _10301 = mem[_10277 + 64]
                        require mem[_10277 + 64] == mem[_10277 + 64]
                        if mem[_10277 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.balance() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10344 = mem[_10335]
                        require mem[_10335] == mem[_10335]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10377 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10377] == mem[_10377]
                        if not mem[_10377]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _10301
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _10301 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _10301
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _10301 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _10301
                        else:
                            if not _10301:
                                if _10344 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10344
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10301
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _10344 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _10344
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _10344) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _10344
                            else:
                                require _10301
                                if _10301 * mem[_10377] / _10301 != mem[_10377]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _10344 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10344
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10301
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10301 * mem[_10377] / _10344 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10301 * mem[_10377] / _10344
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_10301 * mem[_10377] / _10344) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10301 * mem[_10377] / _10344
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
                mem[(4 * ceil32(return_data.size)) + 480] = stor11
                if rewardTokenAddress == stor11:
                    mem[(4 * ceil32(return_data.size)) + 512] = 3
                    mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                        staticcall depositTokenAddress.balance() with:
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
                    mem[(4 * ceil32(return_data.size)) + 708] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 544
                    t = (4 * ceil32(return_data.size)) + 740
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 740 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 640
                    require return_data.size >= 32
                    _842 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                    _887 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                    require _842 + (32 * _887) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _842 + 672
                    t = (6 * ceil32(return_data.size)) + 672
                    while idx < _887:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _887 - 1 < _887
                    _2911 = mem[(32 * _887 - 1) + (6 * ceil32(return_data.size)) + 672]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _2911
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 544
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2911, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
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
                    require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                    require mem[(4 * ceil32(return_data.size)) + 512] - 1 < mem[(4 * ceil32(return_data.size)) + 512]
                    _6340 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 512] - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _2911
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_6340), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2911, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6637 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_6637] == mem[_6637]
                    require mem[_6637 + 32] == mem[_6637 + 32]
                    _6707 = mem[_6637 + 64]
                    require mem[_6637 + 64] == mem[_6637 + 64]
                    if mem[_6637 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.balance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6776 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6795 = mem[_6776]
                    require mem[_6776] == mem[_6776]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6880 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6880] == mem[_6880]
                    if not mem[_6880]:
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _6707
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _6707 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, _6707
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + _6707 < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += _6707
                    else:
                        if not _6707:
                            if _6795 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6795
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6707
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / _6795 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 0 / _6795
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (0 / _6795) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 0 / _6795
                        else:
                            require _6707
                            if _6707 * mem[_6880] / _6707 != mem[_6880]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _6795 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6795
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6707
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6707 * mem[_6880] / _6795 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6707 * mem[_6880] / _6795
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (_6707 * mem[_6880] / _6795) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6707 * mem[_6880] / _6795
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
                    _843 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                    _888 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(6 * ceil32(return_data.size)) + 512] = _888
                    require _843 + (32 * _888) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _843 + 544
                    t = (6 * ceil32(return_data.size)) + 544
                    while idx < _888:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _888 - 1 < _888
                    _2913 = mem[(32 * _888 - 1) + (6 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _2913
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2913, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4610 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4626 = mem[_4610]
                    require mem[_4610] <= test266151307()
                    require _4610 + mem[_4610] + 31 < _4610 + return_data.size
                    _4642 = mem[_4610 + mem[_4610]]
                    require mem[_4610 + mem[_4610]] <= test266151307()
                    require _4610 + ceil32(return_data.size) + (32 * mem[_4610 + mem[_4610]]) + 32 <= test266151307() and (32 * mem[_4610 + mem[_4610]]) + 32 >= 0
                    mem[64] = _4610 + ceil32(return_data.size) + (32 * mem[_4610 + mem[_4610]]) + 32
                    mem[_4610 + ceil32(return_data.size)] = _4642
                    require _4626 + (32 * _4642) + 32 <= return_data.size
                    idx = 0
                    s = _4610 + _4626 + 32
                    t = _4610 + ceil32(return_data.size) + 32
                    while idx < _4642:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6323 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_6323 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_6323]
                    mem[_6323 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_6323]
                    mem[_6323 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    require 2 < mem[_6323]
                    mem[_6323 + 96] = stor12
                    require mem[_6323] - 1 < mem[_6323]
                    require 0 < mem[_6323]
                    if mem[_6323 + 44 len 20] == mem[(32 * mem[_6323] - 1) + _6323 + 44 len 20]:
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_6323] - 1 < mem[_6323]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6323] - 1) + _6323 + 44 len 20], _2913, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.balance() with:
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
                        mem[_6323 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6323 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[_6323 + 164] = 64
                        mem[_6323 + 196] = mem[_6323]
                        idx = 0
                        s = _6323 + 32
                        t = _6323 + 228
                        while idx < mem[_6323]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6323 + (32 * mem[_6323]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8026 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8065 = mem[_8026]
                        require mem[_8026] <= test266151307()
                        require _8026 + mem[_8026] + 31 < _8026 + return_data.size
                        _8113 = mem[_8026 + mem[_8026]]
                        require mem[_8026 + mem[_8026]] <= test266151307()
                        require _8026 + ceil32(return_data.size) + (32 * mem[_8026 + mem[_8026]]) + 32 <= test266151307() and (32 * mem[_8026 + mem[_8026]]) + 32 >= 0
                        mem[64] = _8026 + ceil32(return_data.size) + (32 * mem[_8026 + mem[_8026]]) + 32
                        mem[_8026 + ceil32(return_data.size)] = _8113
                        require _8065 + (32 * _8113) + 32 <= return_data.size
                        idx = 0
                        s = _8026 + _8065 + 32
                        t = _8026 + ceil32(return_data.size) + 32
                        while idx < _8113:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _8113 - 1 < _8113
                        _8867 = mem[(32 * _8113 - 1) + _8026 + ceil32(return_data.size) + 32]
                        _8868 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _8867
                        mem[mem[64] + 68] = 160
                        _8889 = mem[_6323]
                        mem[mem[64] + 164] = mem[_6323]
                        idx = 0
                        s = _6323 + 32
                        t = mem[64] + 196
                        while idx < _8889:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8868 + 100] = this.address
                        mem[_8868 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8868 + (32 * _8889) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9553 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9561 = mem[_9553]
                        require mem[_9553] <= test266151307()
                        require _9553 + mem[_9553] + 31 < _9553 + return_data.size
                        _9569 = mem[_9553 + mem[_9553]]
                        require mem[_9553 + mem[_9553]] <= test266151307()
                        require _9553 + ceil32(return_data.size) + (32 * mem[_9553 + mem[_9553]]) + 32 <= test266151307() and (32 * mem[_9553 + mem[_9553]]) + 32 >= 0
                        mem[64] = _9553 + ceil32(return_data.size) + (32 * mem[_9553 + mem[_9553]]) + 32
                        mem[_9553 + ceil32(return_data.size)] = _9569
                        require _9561 + (32 * _9569) + 32 <= return_data.size
                        idx = 0
                        s = _9553 + _9561 + 32
                        t = _9553 + ceil32(return_data.size) + 32
                        while idx < _9569:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_6323] - 1 < mem[_6323]
                        _10247 = mem[(32 * mem[_6323] - 1) + _6323 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _2913
                        mem[mem[64] + 100] = _8867
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_10247), _2913, _8867, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10278 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_10278] == mem[_10278]
                        require mem[_10278 + 32] == mem[_10278 + 32]
                        _10302 = mem[_10278 + 64]
                        require mem[_10278 + 64] == mem[_10278 + 64]
                        if mem[_10278 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.balance() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10336 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10345 = mem[_10336]
                        require mem[_10336] == mem[_10336]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10378 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10378] == mem[_10378]
                        if not mem[_10378]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _10302
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _10302 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _10302
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _10302 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _10302
                        else:
                            if not _10302:
                                if _10345 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10345
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10302
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _10345 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _10345
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _10345) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _10345
                            else:
                                require _10302
                                if _10302 * mem[_10378] / _10302 != mem[_10378]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _10345 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10345
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10302
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10302 * mem[_10378] / _10345 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10302 * mem[_10378] / _10345
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_10302 * mem[_10378] / _10345) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10302 * mem[_10378] / _10345
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
                mem[(2 * ceil32(return_data.size)) + 480] = stor11
                if rewardTokenAddress == stor11:
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                        staticcall depositTokenAddress.balance() with:
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
                    mem[(2 * ceil32(return_data.size)) + 708] = 3
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = (2 * ceil32(return_data.size)) + 740
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 740 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 640
                    require return_data.size >= 32
                    _822 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                    _877 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672
                    mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                    require _822 + (32 * _877) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _822 + 672
                    t = (4 * ceil32(return_data.size)) + 672
                    while idx < _877:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _877 - 1 < _877
                    _2895 = mem[(32 * _877 - 1) + (4 * ceil32(return_data.size)) + 672]
                    _2896 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _2895
                    mem[mem[64] + 68] = 160
                    _2967 = mem[(2 * ceil32(return_data.size)) + 512]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = mem[64] + 196
                    while idx < _2967:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2896 + 100] = this.address
                    mem[_2896 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2896 + (32 * _2967) + -mem[64] + 192]
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
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[(2 * ceil32(return_data.size)) + 512] - 1 < mem[(2 * ceil32(return_data.size)) + 512]
                    _6332 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 512] - 1) + (2 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _2895
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_6332), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2895, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_6633] == mem[_6633]
                    require mem[_6633 + 32] == mem[_6633 + 32]
                    _6702 = mem[_6633 + 64]
                    require mem[_6633 + 64] == mem[_6633 + 64]
                    if mem[_6633 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.balance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6768 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6791 = mem[_6768]
                    require mem[_6768] == mem[_6768]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6875 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6875] == mem[_6875]
                    if not mem[_6875]:
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _6702
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _6702 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, _6702
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + _6702 < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += _6702
                    else:
                        if not _6702:
                            if _6791 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6791
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6702
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / _6791 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 0 / _6791
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (0 / _6791) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 0 / _6791
                        else:
                            require _6702
                            if _6702 * mem[_6875] / _6702 != mem[_6875]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _6791 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6791
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6702
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6702 * mem[_6875] / _6791 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6702 * mem[_6875] / _6791
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (_6702 * mem[_6875] / _6791) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6702 * mem[_6875] / _6791
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
                    _823 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                    _878 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require _823 + (32 * _878) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _823 + 544
                    t = (4 * ceil32(return_data.size)) + 544
                    while idx < _878:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _878 - 1 < _878
                    _2897 = mem[(32 * _878 - 1) + (4 * ceil32(return_data.size)) + 544]
                    _2898 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _878 - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 68] = 160
                    _2968 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _2968:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2898 + 100] = this.address
                    mem[_2898 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2898 + (32 * _2968) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4600 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4618 = mem[_4600]
                    require mem[_4600] <= test266151307()
                    require _4600 + mem[_4600] + 31 < _4600 + return_data.size
                    _4634 = mem[_4600 + mem[_4600]]
                    require mem[_4600 + mem[_4600]] <= test266151307()
                    require _4600 + ceil32(return_data.size) + (32 * mem[_4600 + mem[_4600]]) + 32 <= test266151307() and (32 * mem[_4600 + mem[_4600]]) + 32 >= 0
                    mem[64] = _4600 + ceil32(return_data.size) + (32 * mem[_4600 + mem[_4600]]) + 32
                    mem[_4600 + ceil32(return_data.size)] = _4634
                    require _4618 + (32 * _4634) + 32 <= return_data.size
                    idx = 0
                    s = _4600 + _4618 + 32
                    t = _4600 + ceil32(return_data.size) + 32
                    while idx < _4634:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _6307 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_6307 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_6307]
                    mem[_6307 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_6307]
                    mem[_6307 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    require 2 < mem[_6307]
                    mem[_6307 + 96] = stor12
                    require mem[_6307] - 1 < mem[_6307]
                    require 0 < mem[_6307]
                    if mem[_6307 + 44 len 20] == mem[(32 * mem[_6307] - 1) + _6307 + 44 len 20]:
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_6307] - 1 < mem[_6307]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6307] - 1) + _6307 + 44 len 20], _2897, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.balance() with:
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
                        mem[_6307 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6307 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[_6307 + 164] = 64
                        mem[_6307 + 196] = mem[_6307]
                        idx = 0
                        s = _6307 + 32
                        t = _6307 + 228
                        while idx < mem[_6307]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6307 + (32 * mem[_6307]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8018 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8044 = mem[_8018]
                        require mem[_8018] <= test266151307()
                        require _8018 + mem[_8018] + 31 < _8018 + return_data.size
                        _8108 = mem[_8018 + mem[_8018]]
                        require mem[_8018 + mem[_8018]] <= test266151307()
                        require _8018 + ceil32(return_data.size) + (32 * mem[_8018 + mem[_8018]]) + 32 <= test266151307() and (32 * mem[_8018 + mem[_8018]]) + 32 >= 0
                        mem[64] = _8018 + ceil32(return_data.size) + (32 * mem[_8018 + mem[_8018]]) + 32
                        mem[_8018 + ceil32(return_data.size)] = _8108
                        require _8044 + (32 * _8108) + 32 <= return_data.size
                        idx = 0
                        s = _8018 + _8044 + 32
                        t = _8018 + ceil32(return_data.size) + 32
                        while idx < _8108:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _8108 - 1 < _8108
                        _8859 = mem[(32 * _8108 - 1) + _8018 + ceil32(return_data.size) + 32]
                        _8860 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _8859
                        mem[mem[64] + 68] = 160
                        _8885 = mem[_6307]
                        mem[mem[64] + 164] = mem[_6307]
                        idx = 0
                        s = _6307 + 32
                        t = mem[64] + 196
                        while idx < _8885:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8860 + 100] = this.address
                        mem[_8860 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8860 + (32 * _8885) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9548 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9557 = mem[_9548]
                        require mem[_9548] <= test266151307()
                        require _9548 + mem[_9548] + 31 < _9548 + return_data.size
                        _9565 = mem[_9548 + mem[_9548]]
                        require mem[_9548 + mem[_9548]] <= test266151307()
                        require _9548 + ceil32(return_data.size) + (32 * mem[_9548 + mem[_9548]]) + 32 <= test266151307() and (32 * mem[_9548 + mem[_9548]]) + 32 >= 0
                        mem[64] = _9548 + ceil32(return_data.size) + (32 * mem[_9548 + mem[_9548]]) + 32
                        mem[_9548 + ceil32(return_data.size)] = _9565
                        require _9557 + (32 * _9565) + 32 <= return_data.size
                        idx = 0
                        s = _9548 + _9557 + 32
                        t = _9548 + ceil32(return_data.size) + 32
                        while idx < _9565:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_6307] - 1 < mem[_6307]
                        _10239 = mem[(32 * mem[_6307] - 1) + _6307 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _2897
                        mem[mem[64] + 100] = _8859
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_10239), _2897, _8859, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10274 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_10274] == mem[_10274]
                        require mem[_10274 + 32] == mem[_10274 + 32]
                        _10298 = mem[_10274 + 64]
                        require mem[_10274 + 64] == mem[_10274 + 64]
                        if mem[_10274 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.balance() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10332 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10341 = mem[_10332]
                        require mem[_10332] == mem[_10332]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10374 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10374] == mem[_10374]
                        if not mem[_10374]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _10298
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _10298 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _10298
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _10298 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _10298
                        else:
                            if not _10298:
                                if _10341 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10341
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10298
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _10341 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _10341
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _10341) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _10341
                            else:
                                require _10298
                                if _10298 * mem[_10374] / _10298 != mem[_10374]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _10341 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10341
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10298
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10298 * mem[_10374] / _10341 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10298 * mem[_10374] / _10341
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_10298 * mem[_10374] / _10341) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10298 * mem[_10374] / _10341
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
                    mem[(2 * ceil32(return_data.size)) + 480] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                        mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                            staticcall depositTokenAddress.balance() with:
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
                        mem[(2 * ceil32(return_data.size)) + 708] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = (2 * ceil32(return_data.size)) + 740
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 740 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 640
                        require return_data.size >= 32
                        _812 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                        _872 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                        mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require _812 + (32 * _872) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _812 + 672
                        t = (4 * ceil32(return_data.size)) + 672
                        while idx < _872:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _872 - 1 < _872
                        _2887 = mem[(32 * _872 - 1) + (4 * ceil32(return_data.size)) + 672]
                        _2888 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _2887
                        mem[mem[64] + 68] = 160
                        _2963 = mem[(2 * ceil32(return_data.size)) + 512]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = mem[64] + 196
                        while idx < _2963:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2888 + 100] = this.address
                        mem[_2888 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2888 + (32 * _2963) + -mem[64] + 192]
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
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[(2 * ceil32(return_data.size)) + 512] - 1 < mem[(2 * ceil32(return_data.size)) + 512]
                        _6328 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 512] - 1) + (2 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _2887
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_6328), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2887, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6631 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_6631] == mem[_6631]
                        require mem[_6631 + 32] == mem[_6631 + 32]
                        _6700 = mem[_6631 + 64]
                        require mem[_6631 + 64] == mem[_6631 + 64]
                        if mem[_6631 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.balance() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6764 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6789 = mem[_6764]
                        require mem[_6764] == mem[_6764]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6873 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6873] == mem[_6873]
                        if not mem[_6873]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6700
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6700 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6700
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _6700 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6700
                        else:
                            if not _6700:
                                if _6789 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _6789
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _6700
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _6789 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _6789
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _6789) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _6789
                            else:
                                require _6700
                                if _6700 * mem[_6873] / _6700 != mem[_6873]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _6789 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _6789
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _6700
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _6700 * mem[_6873] / _6789 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _6700 * mem[_6873] / _6789
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_6700 * mem[_6873] / _6789) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _6700 * mem[_6873] / _6789
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
                        _813 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                        _873 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require _813 + (32 * _873) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _813 + 544
                        t = (4 * ceil32(return_data.size)) + 544
                        while idx < _873:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _873 - 1 < _873
                        _2889 = mem[(32 * _873 - 1) + (4 * ceil32(return_data.size)) + 544]
                        _2890 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _2889
                        mem[mem[64] + 68] = 160
                        _2964 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _2964:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2890 + 100] = this.address
                        mem[_2890 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2890 + (32 * _2964) + -mem[64] + 192]
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
                        _6299 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_6299 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_6299]
                        mem[_6299 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_6299]
                        mem[_6299 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 2 < mem[_6299]
                        mem[_6299 + 96] = stor12
                        require mem[_6299] - 1 < mem[_6299]
                        require 0 < mem[_6299]
                        if mem[_6299 + 44 len 20] == mem[(32 * mem[_6299] - 1) + _6299 + 44 len 20]:
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[_6299] - 1 < mem[_6299]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6299] - 1) + _6299 + 44 len 20], _2889, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.balance() with:
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
                            mem[_6299 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_6299 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_6299 + 164] = 64
                            mem[_6299 + 196] = mem[_6299]
                            idx = 0
                            s = _6299 + 32
                            t = _6299 + 228
                            while idx < mem[_6299]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6299 + (32 * mem[_6299]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8016 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8034 = mem[_8016]
                            require mem[_8016] <= test266151307()
                            require _8016 + mem[_8016] + 31 < _8016 + return_data.size
                            _8106 = mem[_8016 + mem[_8016]]
                            require mem[_8016 + mem[_8016]] <= test266151307()
                            require _8016 + ceil32(return_data.size) + (32 * mem[_8016 + mem[_8016]]) + 32 <= test266151307() and (32 * mem[_8016 + mem[_8016]]) + 32 >= 0
                            mem[64] = _8016 + ceil32(return_data.size) + (32 * mem[_8016 + mem[_8016]]) + 32
                            mem[_8016 + ceil32(return_data.size)] = _8106
                            require _8034 + (32 * _8106) + 32 <= return_data.size
                            idx = 0
                            s = _8016 + _8034 + 32
                            t = _8016 + ceil32(return_data.size) + 32
                            while idx < _8106:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _8106 - 1 < _8106
                            _8855 = mem[(32 * _8106 - 1) + _8016 + ceil32(return_data.size) + 32]
                            _8856 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _8855
                            mem[mem[64] + 68] = 160
                            _8883 = mem[_6299]
                            mem[mem[64] + 164] = mem[_6299]
                            idx = 0
                            s = _6299 + 32
                            t = mem[64] + 196
                            while idx < _8883:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_8856 + 100] = this.address
                            mem[_8856 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _8856 + (32 * _8883) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9546 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _9555 = mem[_9546]
                            require mem[_9546] <= test266151307()
                            require _9546 + mem[_9546] + 31 < _9546 + return_data.size
                            _9563 = mem[_9546 + mem[_9546]]
                            require mem[_9546 + mem[_9546]] <= test266151307()
                            require _9546 + ceil32(return_data.size) + (32 * mem[_9546 + mem[_9546]]) + 32 <= test266151307() and (32 * mem[_9546 + mem[_9546]]) + 32 >= 0
                            mem[64] = _9546 + ceil32(return_data.size) + (32 * mem[_9546 + mem[_9546]]) + 32
                            mem[_9546 + ceil32(return_data.size)] = _9563
                            require _9555 + (32 * _9563) + 32 <= return_data.size
                            idx = 0
                            s = _9546 + _9555 + 32
                            t = _9546 + ceil32(return_data.size) + 32
                            while idx < _9563:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[_6299] - 1 < mem[_6299]
                            _10235 = mem[(32 * mem[_6299] - 1) + _6299 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _2889
                            mem[mem[64] + 100] = _8855
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_10235), _2889, _8855, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10272 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_10272] == mem[_10272]
                            require mem[_10272 + 32] == mem[_10272 + 32]
                            _10296 = mem[_10272 + 64]
                            require mem[_10272 + 64] == mem[_10272 + 64]
                            if mem[_10272 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.balance() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10330 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10339 = mem[_10330]
                            require mem[_10330] == mem[_10330]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10372 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10372] == mem[_10372]
                            if not mem[_10372]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10296
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10296 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10296
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + _10296 < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10296
                            else:
                                if not _10296:
                                    if _10339 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10339
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10296
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / _10339 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / _10339
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / _10339) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / _10339
                                else:
                                    require _10296
                                    if _10296 * mem[_10372] / _10296 != mem[_10372]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _10339 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10339
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10296
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _10296 * mem[_10372] / _10339 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, _10296 * mem[_10372] / _10339
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (_10296 * mem[_10372] / _10339) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += _10296 * mem[_10372] / _10339
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
                    mem[(4 * ceil32(return_data.size)) + 480] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(4 * ceil32(return_data.size)) + 512] = 3
                        mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                            staticcall depositTokenAddress.balance() with:
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
                        mem[(4 * ceil32(return_data.size)) + 708] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 544
                        t = (4 * ceil32(return_data.size)) + 740
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 740 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 640
                        require return_data.size >= 32
                        _817 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                        _875 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                        mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require _817 + (32 * _875) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _817 + 672
                        t = (6 * ceil32(return_data.size)) + 672
                        while idx < _875:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _875 - 1 < _875
                        _2891 = mem[(32 * _875 - 1) + (6 * ceil32(return_data.size)) + 672]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _2891
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 544
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2891, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
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
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[(4 * ceil32(return_data.size)) + 512] - 1 < mem[(4 * ceil32(return_data.size)) + 512]
                        _6330 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 512] - 1) + (4 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _2891
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_6330), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2891, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6632 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_6632] == mem[_6632]
                        require mem[_6632 + 32] == mem[_6632 + 32]
                        _6701 = mem[_6632 + 64]
                        require mem[_6632 + 64] == mem[_6632 + 64]
                        if mem[_6632 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.balance() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6766 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6790 = mem[_6766]
                        require mem[_6766] == mem[_6766]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6874 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6874] == mem[_6874]
                        if not mem[_6874]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6701
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6701 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6701
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _6701 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6701
                        else:
                            if not _6701:
                                if _6790 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _6790
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _6701
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _6790 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _6790
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _6790) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _6790
                            else:
                                require _6701
                                if _6701 * mem[_6874] / _6701 != mem[_6874]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _6790 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _6790
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _6701
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _6701 * mem[_6874] / _6790 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _6701 * mem[_6874] / _6790
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_6701 * mem[_6874] / _6790) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _6701 * mem[_6874] / _6790
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
                        _818 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                        _876 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(6 * ceil32(return_data.size)) + 512] = _876
                        require _818 + (32 * _876) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _818 + 544
                        t = (6 * ceil32(return_data.size)) + 544
                        while idx < _876:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _876 - 1 < _876
                        _2893 = mem[(32 * _876 - 1) + (6 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _2893
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2893, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
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
                        _6303 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_6303 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_6303]
                        mem[_6303 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_6303]
                        mem[_6303 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 2 < mem[_6303]
                        mem[_6303 + 96] = stor12
                        require mem[_6303] - 1 < mem[_6303]
                        require 0 < mem[_6303]
                        if mem[_6303 + 44 len 20] == mem[(32 * mem[_6303] - 1) + _6303 + 44 len 20]:
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_6303] - 1 < mem[_6303]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6303] - 1) + _6303 + 44 len 20], _2893, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.balance() with:
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
                            mem[_6303 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_6303 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_6303 + 164] = 64
                            mem[_6303 + 196] = mem[_6303]
                            idx = 0
                            s = _6303 + 32
                            t = _6303 + 228
                            while idx < mem[_6303]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6303 + (32 * mem[_6303]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8017 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8039 = mem[_8017]
                            require mem[_8017] <= test266151307()
                            require _8017 + mem[_8017] + 31 < _8017 + return_data.size
                            _8107 = mem[_8017 + mem[_8017]]
                            require mem[_8017 + mem[_8017]] <= test266151307()
                            require _8017 + ceil32(return_data.size) + (32 * mem[_8017 + mem[_8017]]) + 32 <= test266151307() and (32 * mem[_8017 + mem[_8017]]) + 32 >= 0
                            mem[64] = _8017 + ceil32(return_data.size) + (32 * mem[_8017 + mem[_8017]]) + 32
                            mem[_8017 + ceil32(return_data.size)] = _8107
                            require _8039 + (32 * _8107) + 32 <= return_data.size
                            idx = 0
                            s = _8017 + _8039 + 32
                            t = _8017 + ceil32(return_data.size) + 32
                            while idx < _8107:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _8107 - 1 < _8107
                            _8857 = mem[(32 * _8107 - 1) + _8017 + ceil32(return_data.size) + 32]
                            _8858 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _8857
                            mem[mem[64] + 68] = 160
                            _8884 = mem[_6303]
                            mem[mem[64] + 164] = mem[_6303]
                            idx = 0
                            s = _6303 + 32
                            t = mem[64] + 196
                            while idx < _8884:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_8858 + 100] = this.address
                            mem[_8858 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _8858 + (32 * _8884) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9547 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _9556 = mem[_9547]
                            require mem[_9547] <= test266151307()
                            require _9547 + mem[_9547] + 31 < _9547 + return_data.size
                            _9564 = mem[_9547 + mem[_9547]]
                            require mem[_9547 + mem[_9547]] <= test266151307()
                            require _9547 + ceil32(return_data.size) + (32 * mem[_9547 + mem[_9547]]) + 32 <= test266151307() and (32 * mem[_9547 + mem[_9547]]) + 32 >= 0
                            mem[64] = _9547 + ceil32(return_data.size) + (32 * mem[_9547 + mem[_9547]]) + 32
                            mem[_9547 + ceil32(return_data.size)] = _9564
                            require _9556 + (32 * _9564) + 32 <= return_data.size
                            idx = 0
                            s = _9547 + _9556 + 32
                            t = _9547 + ceil32(return_data.size) + 32
                            while idx < _9564:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_6303] - 1 < mem[_6303]
                            _10237 = mem[(32 * mem[_6303] - 1) + _6303 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _2893
                            mem[mem[64] + 100] = _8857
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_10237), _2893, _8857, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10273 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_10273] == mem[_10273]
                            require mem[_10273 + 32] == mem[_10273 + 32]
                            _10297 = mem[_10273 + 64]
                            require mem[_10273 + 64] == mem[_10273 + 64]
                            if mem[_10273 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.balance() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10331 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10340 = mem[_10331]
                            require mem[_10331] == mem[_10331]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10373 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10373] == mem[_10373]
                            if not mem[_10373]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10297
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10297 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10297
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + _10297 < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10297
                            else:
                                if not _10297:
                                    if _10340 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10340
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10297
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / _10340 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / _10340
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / _10340) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / _10340
                                else:
                                    require _10297
                                    if _10297 * mem[_10373] / _10297 != mem[_10373]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _10340 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10340
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10297
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _10297 * mem[_10373] / _10340 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, _10297 * mem[_10373] / _10340
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (_10297 * mem[_10373] / _10340) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += _10297 * mem[_10373] / _10340
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
                mem[(4 * ceil32(return_data.size)) + 480] = stor11
                if rewardTokenAddress == stor11:
                    mem[(4 * ceil32(return_data.size)) + 512] = 3
                    mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                        staticcall depositTokenAddress.balance() with:
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
                    mem[(4 * ceil32(return_data.size)) + 708] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 544
                    t = (4 * ceil32(return_data.size)) + 740
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 740 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 640
                    require return_data.size >= 32
                    _833 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                    _883 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                    require _833 + (32 * _883) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _833 + 672
                    t = (6 * ceil32(return_data.size)) + 672
                    while idx < _883:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _883 - 1 < _883
                    _2903 = mem[(32 * _883 - 1) + (6 * ceil32(return_data.size)) + 672]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _2903
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 3
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 544
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2903, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
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
                    require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                    require mem[(4 * ceil32(return_data.size)) + 512] - 1 < mem[(4 * ceil32(return_data.size)) + 512]
                    _6336 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 512] - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _2903
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_6336), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2903, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6635 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_6635] == mem[_6635]
                    require mem[_6635 + 32] == mem[_6635 + 32]
                    _6705 = mem[_6635 + 64]
                    require mem[_6635 + 64] == mem[_6635 + 64]
                    if mem[_6635 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.balance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6772 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6793 = mem[_6772]
                    require mem[_6772] == mem[_6772]
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6878 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6878] == mem[_6878]
                    if not mem[_6878]:
                        require ext_code.size(depositTokenAddress)
                        call depositTokenAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args _6705
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _6705 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, _6705
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + _6705 < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += _6705
                    else:
                        if not _6705:
                            if _6793 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6793
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6705
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / _6793 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, 0 / _6793
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (0 / _6793) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += 0 / _6793
                        else:
                            require _6705
                            if _6705 * mem[_6878] / _6705 != mem[_6878]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _6793 <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require _6793
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6705
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6705 * mem[_6878] / _6793 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6705 * mem[_6878] / _6793
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + (_6705 * mem[_6878] / _6793) < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6705 * mem[_6878] / _6793
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
                    _834 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                    _884 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(6 * ceil32(return_data.size)) + 512] = _884
                    require _834 + (32 * _884) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _834 + 544
                    t = (6 * ceil32(return_data.size)) + 544
                    while idx < _884:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _884 - 1 < _884
                    _2905 = mem[(32 * _884 - 1) + (6 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _2905
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2905, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
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
                    _6315 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_6315 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_6315]
                    mem[_6315 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_6315]
                    mem[_6315 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    require 2 < mem[_6315]
                    mem[_6315 + 96] = stor12
                    require mem[_6315] - 1 < mem[_6315]
                    require 0 < mem[_6315]
                    if mem[_6315 + 44 len 20] == mem[(32 * mem[_6315] - 1) + _6315 + 44 len 20]:
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_6315] - 1 < mem[_6315]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6315] - 1) + _6315 + 44 len 20], _2905, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.balance() with:
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
                        mem[_6315 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_6315 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[_6315 + 164] = 64
                        mem[_6315 + 196] = mem[_6315]
                        idx = 0
                        s = _6315 + 32
                        t = _6315 + 228
                        while idx < mem[_6315]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6315 + (32 * mem[_6315]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8024 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _8055 = mem[_8024]
                        require mem[_8024] <= test266151307()
                        require _8024 + mem[_8024] + 31 < _8024 + return_data.size
                        _8111 = mem[_8024 + mem[_8024]]
                        require mem[_8024 + mem[_8024]] <= test266151307()
                        require _8024 + ceil32(return_data.size) + (32 * mem[_8024 + mem[_8024]]) + 32 <= test266151307() and (32 * mem[_8024 + mem[_8024]]) + 32 >= 0
                        mem[64] = _8024 + ceil32(return_data.size) + (32 * mem[_8024 + mem[_8024]]) + 32
                        mem[_8024 + ceil32(return_data.size)] = _8111
                        require _8055 + (32 * _8111) + 32 <= return_data.size
                        idx = 0
                        s = _8024 + _8055 + 32
                        t = _8024 + ceil32(return_data.size) + 32
                        while idx < _8111:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _8111 - 1 < _8111
                        _8863 = mem[(32 * _8111 - 1) + _8024 + ceil32(return_data.size) + 32]
                        _8864 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _8863
                        mem[mem[64] + 68] = 160
                        _8887 = mem[_6315]
                        mem[mem[64] + 164] = mem[_6315]
                        idx = 0
                        s = _6315 + 32
                        t = mem[64] + 196
                        while idx < _8887:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8864 + 100] = this.address
                        mem[_8864 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8864 + (32 * _8887) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9551 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _9559 = mem[_9551]
                        require mem[_9551] <= test266151307()
                        require _9551 + mem[_9551] + 31 < _9551 + return_data.size
                        _9567 = mem[_9551 + mem[_9551]]
                        require mem[_9551 + mem[_9551]] <= test266151307()
                        require _9551 + ceil32(return_data.size) + (32 * mem[_9551 + mem[_9551]]) + 32 <= test266151307() and (32 * mem[_9551 + mem[_9551]]) + 32 >= 0
                        mem[64] = _9551 + ceil32(return_data.size) + (32 * mem[_9551 + mem[_9551]]) + 32
                        mem[_9551 + ceil32(return_data.size)] = _9567
                        require _9559 + (32 * _9567) + 32 <= return_data.size
                        idx = 0
                        s = _9551 + _9559 + 32
                        t = _9551 + ceil32(return_data.size) + 32
                        while idx < _9567:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_6315] - 1 < mem[_6315]
                        _10243 = mem[(32 * mem[_6315] - 1) + _6315 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _2905
                        mem[mem[64] + 100] = _8863
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_10243), _2905, _8863, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10276 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_10276] == mem[_10276]
                        require mem[_10276 + 32] == mem[_10276 + 32]
                        _10300 = mem[_10276 + 64]
                        require mem[_10276 + 64] == mem[_10276 + 64]
                        if mem[_10276 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.balance() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10334 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10343 = mem[_10334]
                        require mem[_10334] == mem[_10334]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10376 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10376] == mem[_10376]
                        if not mem[_10376]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _10300
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _10300 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _10300
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _10300 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _10300
                        else:
                            if not _10300:
                                if _10343 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10343
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10300
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _10343 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _10343
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _10343) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _10343
                            else:
                                require _10300
                                if _10300 * mem[_10376] / _10300 != mem[_10376]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _10343 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _10343
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10300
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10300 * mem[_10376] / _10343 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10300 * mem[_10376] / _10343
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_10300 * mem[_10376] / _10343) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10300 * mem[_10376] / _10343
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
                    mem[(4 * ceil32(return_data.size)) + 480] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(4 * ceil32(return_data.size)) + 512] = 3
                        mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                            staticcall depositTokenAddress.balance() with:
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
                        mem[(4 * ceil32(return_data.size)) + 708] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 544
                        t = (4 * ceil32(return_data.size)) + 740
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 740 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 640
                        require return_data.size >= 32
                        _826 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                        _879 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                        mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require _826 + (32 * _879) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _826 + 672
                        t = (6 * ceil32(return_data.size)) + 672
                        while idx < _879:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _879 - 1 < _879
                        _2899 = mem[(32 * _879 - 1) + (6 * ceil32(return_data.size)) + 672]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _2899
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 544
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2899, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4601 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4619 = mem[_4601]
                        require mem[_4601] <= test266151307()
                        require _4601 + mem[_4601] + 31 < _4601 + return_data.size
                        _4635 = mem[_4601 + mem[_4601]]
                        require mem[_4601 + mem[_4601]] <= test266151307()
                        require _4601 + ceil32(return_data.size) + (32 * mem[_4601 + mem[_4601]]) + 32 <= test266151307() and (32 * mem[_4601 + mem[_4601]]) + 32 >= 0
                        mem[64] = _4601 + ceil32(return_data.size) + (32 * mem[_4601 + mem[_4601]]) + 32
                        mem[_4601 + ceil32(return_data.size)] = _4635
                        require _4619 + (32 * _4635) + 32 <= return_data.size
                        idx = 0
                        s = _4601 + _4619 + 32
                        t = _4601 + ceil32(return_data.size) + 32
                        while idx < _4635:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[(4 * ceil32(return_data.size)) + 512] - 1 < mem[(4 * ceil32(return_data.size)) + 512]
                        _6334 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 512] - 1) + (4 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _2899
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_6334), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2899, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6634 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_6634] == mem[_6634]
                        require mem[_6634 + 32] == mem[_6634 + 32]
                        _6703 = mem[_6634 + 64]
                        require mem[_6634 + 64] == mem[_6634 + 64]
                        if mem[_6634 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.balance() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6770 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6792 = mem[_6770]
                        require mem[_6770] == mem[_6770]
                        require ext_code.size(depositTokenAddress)
                        staticcall depositTokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6876 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6876] == mem[_6876]
                        if not mem[_6876]:
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args _6703
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _6703 <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, _6703
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + _6703 < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += _6703
                        else:
                            if not _6703:
                                if _6792 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _6792
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _6703
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / _6792 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, 0 / _6792
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (0 / _6792) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += 0 / _6792
                            else:
                                require _6703
                                if _6703 * mem[_6876] / _6703 != mem[_6876]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _6792 <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require _6792
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _6703
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _6703 * mem[_6876] / _6792 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _6703 * mem[_6876] / _6792
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + (_6703 * mem[_6876] / _6792) < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _6703 * mem[_6876] / _6792
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
                        _827 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                        _880 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(6 * ceil32(return_data.size)) + 512] = _880
                        require _827 + (32 * _880) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _827 + 544
                        t = (6 * ceil32(return_data.size)) + 544
                        while idx < _880:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _880 - 1 < _880
                        _2901 = mem[(32 * _880 - 1) + (6 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _2901
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2901, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4602 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4620 = mem[_4602]
                        require mem[_4602] <= test266151307()
                        require _4602 + mem[_4602] + 31 < _4602 + return_data.size
                        _4636 = mem[_4602 + mem[_4602]]
                        require mem[_4602 + mem[_4602]] <= test266151307()
                        require _4602 + ceil32(return_data.size) + (32 * mem[_4602 + mem[_4602]]) + 32 <= test266151307() and (32 * mem[_4602 + mem[_4602]]) + 32 >= 0
                        mem[64] = _4602 + ceil32(return_data.size) + (32 * mem[_4602 + mem[_4602]]) + 32
                        mem[_4602 + ceil32(return_data.size)] = _4636
                        require _4620 + (32 * _4636) + 32 <= return_data.size
                        idx = 0
                        s = _4602 + _4620 + 32
                        t = _4602 + ceil32(return_data.size) + 32
                        while idx < _4636:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _6311 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_6311 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_6311]
                        mem[_6311 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_6311]
                        mem[_6311 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 2 < mem[_6311]
                        mem[_6311 + 96] = stor12
                        require mem[_6311] - 1 < mem[_6311]
                        require 0 < mem[_6311]
                        if mem[_6311 + 44 len 20] == mem[(32 * mem[_6311] - 1) + _6311 + 44 len 20]:
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_6311] - 1 < mem[_6311]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_6311] - 1) + _6311 + 44 len 20], _2901, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.balance() with:
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
                            mem[_6311 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_6311 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_6311 + 164] = 64
                            mem[_6311 + 196] = mem[_6311]
                            idx = 0
                            s = _6311 + 32
                            t = _6311 + 228
                            while idx < mem[_6311]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6311 + (32 * mem[_6311]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8019 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8049 = mem[_8019]
                            require mem[_8019] <= test266151307()
                            require _8019 + mem[_8019] + 31 < _8019 + return_data.size
                            _8109 = mem[_8019 + mem[_8019]]
                            require mem[_8019 + mem[_8019]] <= test266151307()
                            require _8019 + ceil32(return_data.size) + (32 * mem[_8019 + mem[_8019]]) + 32 <= test266151307() and (32 * mem[_8019 + mem[_8019]]) + 32 >= 0
                            mem[64] = _8019 + ceil32(return_data.size) + (32 * mem[_8019 + mem[_8019]]) + 32
                            mem[_8019 + ceil32(return_data.size)] = _8109
                            require _8049 + (32 * _8109) + 32 <= return_data.size
                            idx = 0
                            s = _8019 + _8049 + 32
                            t = _8019 + ceil32(return_data.size) + 32
                            while idx < _8109:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _8109 - 1 < _8109
                            _8861 = mem[(32 * _8109 - 1) + _8019 + ceil32(return_data.size) + 32]
                            _8862 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _8861
                            mem[mem[64] + 68] = 160
                            _8886 = mem[_6311]
                            mem[mem[64] + 164] = mem[_6311]
                            idx = 0
                            s = _6311 + 32
                            t = mem[64] + 196
                            while idx < _8886:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_8862 + 100] = this.address
                            mem[_8862 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _8862 + (32 * _8886) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9549 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _9558 = mem[_9549]
                            require mem[_9549] <= test266151307()
                            require _9549 + mem[_9549] + 31 < _9549 + return_data.size
                            _9566 = mem[_9549 + mem[_9549]]
                            require mem[_9549 + mem[_9549]] <= test266151307()
                            require _9549 + ceil32(return_data.size) + (32 * mem[_9549 + mem[_9549]]) + 32 <= test266151307() and (32 * mem[_9549 + mem[_9549]]) + 32 >= 0
                            mem[64] = _9549 + ceil32(return_data.size) + (32 * mem[_9549 + mem[_9549]]) + 32
                            mem[_9549 + ceil32(return_data.size)] = _9566
                            require _9558 + (32 * _9566) + 32 <= return_data.size
                            idx = 0
                            s = _9549 + _9558 + 32
                            t = _9549 + ceil32(return_data.size) + 32
                            while idx < _9566:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_6311] - 1 < mem[_6311]
                            _10241 = mem[(32 * mem[_6311] - 1) + _6311 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _2901
                            mem[mem[64] + 100] = _8861
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_10241), _2901, _8861, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10275 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_10275] == mem[_10275]
                            require mem[_10275 + 32] == mem[_10275 + 32]
                            _10299 = mem[_10275 + 64]
                            require mem[_10275 + 64] == mem[_10275 + 64]
                            if mem[_10275 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.balance() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10333 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10342 = mem[_10333]
                            require mem[_10333] == mem[_10333]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10375 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10375] == mem[_10375]
                            if not mem[_10375]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10299
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10299 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10299
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + _10299 < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10299
                            else:
                                if not _10299:
                                    if _10342 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10342
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10299
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / _10342 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / _10342
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / _10342) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / _10342
                                else:
                                    require _10299
                                    if _10299 * mem[_10375] / _10299 != mem[_10375]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _10342 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10342
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10299
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _10299 * mem[_10375] / _10342 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, _10299 * mem[_10375] / _10342
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (_10299 * mem[_10375] / _10342) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += _10299 * mem[_10375] / _10342
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
                    mem[(6 * ceil32(return_data.size)) + 480] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(6 * ceil32(return_data.size)) + 512] = 3
                        mem[(6 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(6 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                            staticcall depositTokenAddress.balance() with:
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
                            mem[(6 * ceil32(return_data.size)) + 708] = 3
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 544
                            t = (6 * ceil32(return_data.size)) + 740
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 740 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 640
                            require return_data.size >= 32
                            _2931 = mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (6 * ceil32(return_data.size)) + return_data.size + 640
                            _2959 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(7 * ceil32(return_data.size)) + 640] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require _2931 + (32 * _2959) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + _2931 + 672
                            t = (7 * ceil32(return_data.size)) + 672
                            while idx < _2959:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _2959 - 1 < _2959
                            _4575 = mem[(32 * _2959 - 1) + (7 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _4575
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 3
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 544
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4575, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6462 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6492 = mem[_6462]
                            require mem[_6462] <= test266151307()
                            require _6462 + mem[_6462] + 31 < _6462 + return_data.size
                            _6494 = mem[_6462 + mem[_6462]]
                            require mem[_6462 + mem[_6462]] <= test266151307()
                            require _6462 + ceil32(return_data.size) + (32 * mem[_6462 + mem[_6462]]) + 32 <= test266151307() and (32 * mem[_6462 + mem[_6462]]) + 32 >= 0
                            mem[64] = _6462 + ceil32(return_data.size) + (32 * mem[_6462 + mem[_6462]]) + 32
                            mem[_6462 + ceil32(return_data.size)] = _6494
                            require _6492 + (32 * _6494) + 32 <= return_data.size
                            idx = 0
                            s = _6462 + _6492 + 32
                            t = _6462 + ceil32(return_data.size) + 32
                            while idx < _6494:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require mem[(6 * ceil32(return_data.size)) + 512] - 1 < mem[(6 * ceil32(return_data.size)) + 512]
                            _8028 = mem[(32 * mem[(6 * ceil32(return_data.size)) + 512] - 1) + (6 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 4] = mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _4575
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_8028), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4575, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8209 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_8209] == mem[_8209]
                            require mem[_8209 + 32] == mem[_8209 + 32]
                            _8257 = mem[_8209 + 64]
                            require mem[_8209 + 64] == mem[_8209 + 64]
                            if mem[_8209 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.balance() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8324 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8327 = mem[_8324]
                            require mem[_8324] == mem[_8324]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8337 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8337] == mem[_8337]
                            if not mem[_8337]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _8257
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _8257 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _8257
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + _8257 < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _8257
                            else:
                                if not _8257:
                                    if _8327 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _8327
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _8257
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / _8327 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / _8327
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / _8327) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / _8327
                                else:
                                    require _8257
                                    if _8257 * mem[_8337] / _8257 != mem[_8337]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _8327 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _8327
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _8257
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _8257 * mem[_8337] / _8327 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, _8257 * mem[_8337] / _8327
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (_8257 * mem[_8337] / _8327) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += _8257 * mem[_8337] / _8327
                            emit Reinvest(totalDeposits, totalSupply);
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
                        _2932 = mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (6 * ceil32(return_data.size)) + return_data.size + 512
                        _2960 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(7 * ceil32(return_data.size)) + 512] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require _2932 + (32 * _2960) + 32 <= return_data.size
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + _2932 + 544
                        t = (7 * ceil32(return_data.size)) + 544
                        while idx < _2960:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _2960 - 1 < _2960
                        _4577 = mem[(32 * _2960 - 1) + (7 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _4577
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4577, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6463 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6493 = mem[_6463]
                        require mem[_6463] <= test266151307()
                        require _6463 + mem[_6463] + 31 < _6463 + return_data.size
                        _6495 = mem[_6463 + mem[_6463]]
                        require mem[_6463 + mem[_6463]] <= test266151307()
                        require _6463 + ceil32(return_data.size) + (32 * mem[_6463 + mem[_6463]]) + 32 <= test266151307() and (32 * mem[_6463 + mem[_6463]]) + 32 >= 0
                        mem[64] = _6463 + ceil32(return_data.size) + (32 * mem[_6463 + mem[_6463]]) + 32
                        mem[_6463 + ceil32(return_data.size)] = _6495
                        require _6493 + (32 * _6495) + 32 <= return_data.size
                        idx = 0
                        s = _6463 + _6493 + 32
                        t = _6463 + ceil32(return_data.size) + 32
                        while idx < _6495:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _8023 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_8023 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[(6 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_8023]
                        mem[_8023 + 32] = mem[(6 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_8023]
                        mem[_8023 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 2 < mem[_8023]
                        mem[_8023 + 96] = stor12
                        require mem[_8023] - 1 < mem[_8023]
                        require 0 < mem[_8023]
                        if mem[_8023 + 44 len 20] == mem[(32 * mem[_8023] - 1) + _8023 + 44 len 20]:
                            require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require mem[_8023] - 1 < mem[_8023]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_8023] - 1) + _8023 + 44 len 20], _4577, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.balance() with:
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
                            mem[_8023 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_8023 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_8023 + 164] = 64
                            mem[_8023 + 196] = mem[_8023]
                            idx = 0
                            s = _8023 + 32
                            t = _8023 + 228
                            while idx < mem[_8023]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8023 + (32 * mem[_8023]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8871 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8876 = mem[_8871]
                            require mem[_8871] <= test266151307()
                            require _8871 + mem[_8871] + 31 < _8871 + return_data.size
                            _8881 = mem[_8871 + mem[_8871]]
                            require mem[_8871 + mem[_8871]] <= test266151307()
                            require _8871 + ceil32(return_data.size) + (32 * mem[_8871 + mem[_8871]]) + 32 <= test266151307() and (32 * mem[_8871 + mem[_8871]]) + 32 >= 0
                            mem[64] = _8871 + ceil32(return_data.size) + (32 * mem[_8871 + mem[_8871]]) + 32
                            mem[_8871 + ceil32(return_data.size)] = _8881
                            require _8876 + (32 * _8881) + 32 <= return_data.size
                            idx = 0
                            s = _8871 + _8876 + 32
                            t = _8871 + ceil32(return_data.size) + 32
                            while idx < _8881:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _8881 - 1 < _8881
                            _9536 = mem[(32 * _8881 - 1) + _8871 + ceil32(return_data.size) + 32]
                            _9537 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _9536
                            mem[mem[64] + 68] = 160
                            _9550 = mem[_8023]
                            mem[mem[64] + 164] = mem[_8023]
                            idx = 0
                            s = _8023 + 32
                            t = mem[64] + 196
                            while idx < _9550:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_9537 + 100] = this.address
                            mem[_9537 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _9537 + (32 * _9550) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10252 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10253 = mem[_10252]
                            require mem[_10252] <= test266151307()
                            require _10252 + mem[_10252] + 31 < _10252 + return_data.size
                            _10254 = mem[_10252 + mem[_10252]]
                            require mem[_10252 + mem[_10252]] <= test266151307()
                            require _10252 + ceil32(return_data.size) + (32 * mem[_10252 + mem[_10252]]) + 32 <= test266151307() and (32 * mem[_10252 + mem[_10252]]) + 32 >= 0
                            mem[64] = _10252 + ceil32(return_data.size) + (32 * mem[_10252 + mem[_10252]]) + 32
                            mem[_10252 + ceil32(return_data.size)] = _10254
                            require _10253 + (32 * _10254) + 32 <= return_data.size
                            idx = 0
                            s = _10252 + _10253 + 32
                            t = _10252 + ceil32(return_data.size) + 32
                            while idx < _10254:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require mem[_8023] - 1 < mem[_8023]
                            _10817 = mem[(32 * mem[_8023] - 1) + _8023 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _4577
                            mem[mem[64] + 100] = _9536
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_10817), _4577, _9536, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10852 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_10852] == mem[_10852]
                            require mem[_10852 + 32] == mem[_10852 + 32]
                            _10855 = mem[_10852 + 64]
                            require mem[_10852 + 64] == mem[_10852 + 64]
                            if mem[_10852 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.balance() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10859 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10860 = mem[_10859]
                            require mem[_10859] == mem[_10859]
                            require ext_code.size(depositTokenAddress)
                            staticcall depositTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10864 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10864] == mem[_10864]
                            if not mem[_10864]:
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args _10855
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if _10855 <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, _10855
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + _10855 < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += _10855
                            else:
                                if not _10855:
                                    if _10860 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10860
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10855
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / _10860 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, 0 / _10860
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (0 / _10860) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += 0 / _10860
                                else:
                                    require _10855
                                    if _10855 * mem[_10864] / _10855 != mem[_10864]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _10860 <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require _10860
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args _10855
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if _10855 * mem[_10864] / _10860 <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, _10855 * mem[_10864] / _10860
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + (_10855 * mem[_10864] / _10860) < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += _10855 * mem[_10864] / _10860
                        emit Reinvest(totalDeposits, totalSupply);
}



}
