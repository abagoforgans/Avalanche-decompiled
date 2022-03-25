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
uint256 MIN_TOKENS_TO_REINVEST;
uint256 REINVEST_REWARD_BIPS;
uint256 ADMIN_FEE_BIPS;
uint8 REQUIRE_REINVEST_BEFORE_DEPOSIT;
uint256 stor17;
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
    uint256(stor17) = not bool(uint8(REQUIRE_REINVEST_BEFORE_DEPOSIT)) or Mask(248, 8, uint256(stor17))
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

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    totalDeposits = 0
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

function checkReward() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.earned(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
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

function estimateReinvestReward() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.earned(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < MIN_TOKENS_TO_REINVEST:
        return 0
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0]
    if ext_call.return_data[0] * REINVEST_REWARD_BIPS / ext_call.return_data[0] != REINVEST_REWARD_BIPS:
        revert with 0, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
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
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (0 / totalSupply)
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
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (arg1 * totalDeposits / totalSupply)
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
    mem[100] = this.address
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.earned(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < MIN_TOKENS_TO_REINVEST:
        revert with 0, 'MIN_TOKENS_TO_REINVEST'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 26
        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 160] = 26
            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 224] = 31
            mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction underflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction underflow', 0
            mem[ceil32(return_data.size) + 288] = 31
            mem[ceil32(return_data.size) + 320] = 'SafeMath: subtraction underflow'
            mem[ceil32(return_data.size) + 352] = 26
            mem[ceil32(return_data.size) + 384] = 'SafeMath: division by zero'
            if ext_call.return_data[0] / 2 <= 0:
                revert with 0, 'amount too low'
            mem[ceil32(return_data.size) + 416] = 2
            mem[ceil32(return_data.size) + 448] = rewardTokenAddress
            mem[ceil32(return_data.size) + 480] = stor10
            if rewardTokenAddress == stor10:
                mem[ceil32(return_data.size) + 512] = 2
                mem[ceil32(return_data.size) + 544] = rewardTokenAddress
                mem[ceil32(return_data.size) + 576] = stor11
                if rewardTokenAddress == stor11:
                    mem[ceil32(return_data.size) + 676] = ext_call.return_data[0] / 2
                    mem[ceil32(return_data.size) + 708] = ext_call.return_data[0] / 2
                    mem[ceil32(return_data.size) + 740] = 0
                    mem[ceil32(return_data.size) + 772] = 0
                    mem[ceil32(return_data.size) + 804] = this.address
                    mem[ceil32(return_data.size) + 836] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args stor10, stor11, Mask(255, 1, ext_call.return_data[0]), Mask(255, 1, ext_call.return_data[0]), 0, 0, address(this.address), block.timestamp
                    mem[ceil32(return_data.size) + 608 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    if ext_call.return_data[64] <= 0:
                        mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 612] = 32
                        mem[(2 * ceil32(return_data.size)) + 644] = 14
                        mem[(2 * ceil32(return_data.size)) + 676] = 'amount too low'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 612 len ceil32(return_data.size) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                            totalDeposits += ext_call.return_data[64]
                            mem[(2 * ceil32(return_data.size)) + 608] = totalDeposits
                            mem[(2 * ceil32(return_data.size)) + 640] = totalSupply
                            emit Reinvest(uint256 rg1, uint256 rg2):
                                          mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64],
                        mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 612] = 32
                        mem[(2 * ceil32(return_data.size)) + 644] = 27
                        mem[(2 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 608
                       len ceil32(return_data.size) + 100
                mem[ceil32(return_data.size) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 612] = ext_call.return_data[0] / 2
                mem[ceil32(return_data.size) + 644] = 64
                mem[ceil32(return_data.size) + 676] = 2
                idx = 0
                s = ceil32(return_data.size) + 544
                t = ceil32(return_data.size) + 708
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args Mask(255, 1, ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 708 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 608
                require return_data.size >= 32
                _1078 = mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 639 < ceil32(return_data.size) + return_data.size + 608
                _1116 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608]) + 32 >= 0
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608]) + 640
                mem[(2 * ceil32(return_data.size)) + 608] = _1116
                require _1078 + (32 * _1116) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _1078 + 640
                t = (2 * ceil32(return_data.size)) + 640
                while idx < _1116:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _1116 - 1 < _1116
                _2109 = mem[(32 * _1116 - 1) + (2 * ceil32(return_data.size)) + 640]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                mem[mem[64] + 36] = mem[(32 * _1116 - 1) + (2 * ceil32(return_data.size)) + 640]
                mem[mem[64] + 68] = 160
                _2129 = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 512]
                idx = 0
                s = ceil32(return_data.size) + 544
                t = mem[64] + 196
                while idx < _2129:
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
                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2129) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2975 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2993 = mem[_2975]
                require mem[_2975] <= test266151307()
                require _2975 + mem[_2975] + 31 < _2975 + return_data.size
                _3011 = mem[_2975 + mem[_2975]]
                require mem[_2975 + mem[_2975]] <= test266151307()
                require _2975 + ceil32(return_data.size) + (32 * mem[_2975 + mem[_2975]]) + 32 <= test266151307() and (32 * mem[_2975 + mem[_2975]]) + 32 >= 0
                mem[64] = _2975 + ceil32(return_data.size) + (32 * mem[_2975 + mem[_2975]]) + 32
                mem[_2975 + ceil32(return_data.size)] = _3011
                require _2993 + (32 * _3011) + 32 <= return_data.size
                idx = 0
                s = _2975 + _2993 + 32
                t = _2975 + ceil32(return_data.size) + 32
                while idx < _3011:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 1 < mem[ceil32(return_data.size) + 416]
                require 1 < mem[ceil32(return_data.size) + 512]
                _3803 = mem[ceil32(return_data.size) + 576]
                mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                mem[mem[64] + 68] = ext_call.return_data[0] / 2
                mem[mem[64] + 100] = _2109
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_3803), Mask(255, 1, ext_call.return_data[0]), _2109, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4056 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_4056] == mem[_4056]
                require mem[_4056 + 32] == mem[_4056 + 32]
                require mem[_4056 + 64] == mem[_4056 + 64]
                if mem[_4056 + 64] <= 0:
                    revert with 0, 'amount too low'
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_4056 + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalDeposits + mem[_4056 + 64] < totalDeposits:
                    revert with 0, 'SafeMath: addition overflow'
                totalDeposits += mem[_4056 + 64]
            else:
                mem[ceil32(return_data.size) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 516] = ext_call.return_data[0] / 2
                mem[ceil32(return_data.size) + 548] = 64
                mem[ceil32(return_data.size) + 580] = 2
                idx = 0
                s = ceil32(return_data.size) + 448
                t = ceil32(return_data.size) + 612
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(routerAddress)
                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args Mask(255, 1, ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 612 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 512
                require return_data.size >= 32
                _1079 = mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 543 < ceil32(return_data.size) + return_data.size + 512
                _1117 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512]) + 32 >= 0
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512]) + 544
                mem[(2 * ceil32(return_data.size)) + 512] = _1117
                require _1079 + (32 * _1117) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _1079 + 544
                t = (2 * ceil32(return_data.size)) + 544
                while idx < _1117:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _1117 - 1 < _1117
                _2111 = mem[(32 * _1117 - 1) + (2 * ceil32(return_data.size)) + 544]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                mem[mem[64] + 36] = mem[(32 * _1117 - 1) + (2 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 68] = 160
                _2130 = mem[ceil32(return_data.size) + 416]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 416]
                idx = 0
                s = ceil32(return_data.size) + 448
                t = mem[64] + 196
                while idx < _2130:
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
                    args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2130) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2976 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2994 = mem[_2976]
                require mem[_2976] <= test266151307()
                require _2976 + mem[_2976] + 31 < _2976 + return_data.size
                _3012 = mem[_2976 + mem[_2976]]
                require mem[_2976 + mem[_2976]] <= test266151307()
                require _2976 + ceil32(return_data.size) + (32 * mem[_2976 + mem[_2976]]) + 32 <= test266151307() and (32 * mem[_2976 + mem[_2976]]) + 32 >= 0
                mem[64] = _2976 + ceil32(return_data.size) + (32 * mem[_2976 + mem[_2976]]) + 32
                mem[_2976 + ceil32(return_data.size)] = _3012
                require _2994 + (32 * _3012) + 32 <= return_data.size
                idx = 0
                s = _2976 + _2994 + 32
                t = _2976 + ceil32(return_data.size) + 32
                while idx < _3012:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3786 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3786 + 32 len 64] = call.data[calldata.size len 64]
                require 0 < mem[ceil32(return_data.size) + 416]
                require 0 < mem[_3786]
                mem[_3786 + 32] = mem[ceil32(return_data.size) + 460 len 20]
                require 1 < mem[_3786]
                mem[_3786 + 64] = stor11
                require 1 < mem[_3786]
                require 0 < mem[_3786]
                if mem[_3786 + 44 len 20] == stor11:
                    require 1 < mem[ceil32(return_data.size) + 416]
                    require 1 < mem[_3786]
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(mem[ceil32(return_data.size) + 480]), stor11, _2111, Mask(255, 1, ext_call.return_data[0]), 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    if ext_call.return_data[64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += ext_call.return_data[64]
                else:
                    mem[_3786 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3786 + 100] = ext_call.return_data[0] / 2
                    mem[_3786 + 132] = 64
                    mem[_3786 + 164] = mem[_3786]
                    idx = 0
                    s = _3786 + 32
                    t = _3786 + 196
                    while idx < mem[_3786]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3786 + (32 * mem[_3786]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4533 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4542 = mem[_4533]
                    require mem[_4533] <= test266151307()
                    require _4533 + mem[_4533] + 31 < _4533 + return_data.size
                    _4551 = mem[_4533 + mem[_4533]]
                    require mem[_4533 + mem[_4533]] <= test266151307()
                    require _4533 + ceil32(return_data.size) + (32 * mem[_4533 + mem[_4533]]) + 32 <= test266151307() and (32 * mem[_4533 + mem[_4533]]) + 32 >= 0
                    mem[64] = _4533 + ceil32(return_data.size) + (32 * mem[_4533 + mem[_4533]]) + 32
                    mem[_4533 + ceil32(return_data.size)] = _4551
                    require _4542 + (32 * _4551) + 32 <= return_data.size
                    idx = 0
                    s = _4533 + _4542 + 32
                    t = _4533 + ceil32(return_data.size) + 32
                    while idx < _4551:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4551 - 1 < _4551
                    _4883 = mem[(32 * _4551 - 1) + _4533 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] / 2
                    mem[mem[64] + 36] = mem[(32 * _4551 - 1) + _4533 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 68] = 160
                    _4893 = mem[_3786]
                    mem[mem[64] + 164] = mem[_3786]
                    idx = 0
                    s = _3786 + 32
                    t = mem[64] + 196
                    while idx < _4893:
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
                        args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4893) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5145 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5154 = mem[_5145]
                    require mem[_5145] <= test266151307()
                    require _5145 + mem[_5145] + 31 < _5145 + return_data.size
                    _5163 = mem[_5145 + mem[_5145]]
                    require mem[_5145 + mem[_5145]] <= test266151307()
                    require _5145 + ceil32(return_data.size) + (32 * mem[_5145 + mem[_5145]]) + 32 <= test266151307() and (32 * mem[_5145 + mem[_5145]]) + 32 >= 0
                    mem[64] = _5145 + ceil32(return_data.size) + (32 * mem[_5145 + mem[_5145]]) + 32
                    mem[_5145 + ceil32(return_data.size)] = _5163
                    require _5154 + (32 * _5163) + 32 <= return_data.size
                    idx = 0
                    s = _5145 + _5154 + 32
                    t = _5145 + ceil32(return_data.size) + 32
                    while idx < _5163:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[ceil32(return_data.size) + 416]
                    require 1 < mem[_3786]
                    _5396 = mem[_3786 + 64]
                    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                    mem[mem[64] + 68] = _2111
                    mem[mem[64] + 100] = _4883
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_5396), _2111, _4883, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5415 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_5415] == mem[_5415]
                    require mem[_5415 + 32] == mem[_5415 + 32]
                    require mem[_5415 + 64] == mem[_5415 + 64]
                    if mem[_5415 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_5415 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_5415 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_5415 + 64]
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * REINVEST_REWARD_BIPS / ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 160] = 26
            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
            if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 <= 0:
                mem[ceil32(return_data.size) + 224] = 31
                mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction underflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[ceil32(return_data.size) + 288] = 31
                mem[ceil32(return_data.size) + 320] = 'SafeMath: subtraction underflow'
                if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[ceil32(return_data.size) + 352] = 26
                mem[ceil32(return_data.size) + 384] = 'SafeMath: division by zero'
                if ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2 <= 0:
                    revert with 0, 'amount too low'
                mem[ceil32(return_data.size) + 416] = 2
                mem[ceil32(return_data.size) + 448] = rewardTokenAddress
                mem[ceil32(return_data.size) + 480] = stor10
                if rewardTokenAddress == stor10:
                    mem[ceil32(return_data.size) + 512] = 2
                    mem[ceil32(return_data.size) + 544] = rewardTokenAddress
                    mem[ceil32(return_data.size) + 576] = stor11
                    if rewardTokenAddress == stor11:
                        mem[ceil32(return_data.size) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[ceil32(return_data.size) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = this.address
                        mem[ceil32(return_data.size) + 836] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                        mem[ceil32(return_data.size) + 608 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 612] = 32
                            mem[(2 * ceil32(return_data.size)) + 644] = 14
                            mem[(2 * ceil32(return_data.size)) + 676] = 'amount too low'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 612 len ceil32(return_data.size) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                totalDeposits += ext_call.return_data[64]
                                mem[(2 * ceil32(return_data.size)) + 608] = totalDeposits
                                mem[(2 * ceil32(return_data.size)) + 640] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64],
                            mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 612] = 32
                            mem[(2 * ceil32(return_data.size)) + 644] = 27
                            mem[(2 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                        revert with memory
                          from (2 * ceil32(return_data.size)) + 608
                           len ceil32(return_data.size) + 100
                    mem[ceil32(return_data.size) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[ceil32(return_data.size) + 644] = 64
                    mem[ceil32(return_data.size) + 676] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 544
                    t = ceil32(return_data.size) + 708
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[ceil32(return_data.size) + 708 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 608
                    require return_data.size >= 32
                    _1070 = mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                    require mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < ceil32(return_data.size) + return_data.size + 608
                    _1112 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                    mem[(2 * ceil32(return_data.size)) + 608] = _1112
                    require _1070 + (32 * _1112) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _1070 + 640
                    t = (2 * ceil32(return_data.size)) + 640
                    while idx < _1112:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1112 - 1 < _1112
                    _2101 = mem[(32 * _1112 - 1) + (2 * ceil32(return_data.size)) + 640]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _1112 - 1) + (2 * ceil32(return_data.size)) + 640]
                    mem[mem[64] + 68] = 160
                    _2125 = mem[ceil32(return_data.size) + 512]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 512]
                    idx = 0
                    s = ceil32(return_data.size) + 544
                    t = mem[64] + 196
                    while idx < _2125:
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
                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2125) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2971 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2989 = mem[_2971]
                    require mem[_2971] <= test266151307()
                    require _2971 + mem[_2971] + 31 < _2971 + return_data.size
                    _3007 = mem[_2971 + mem[_2971]]
                    require mem[_2971 + mem[_2971]] <= test266151307()
                    require _2971 + ceil32(return_data.size) + (32 * mem[_2971 + mem[_2971]]) + 32 <= test266151307() and (32 * mem[_2971 + mem[_2971]]) + 32 >= 0
                    mem[64] = _2971 + ceil32(return_data.size) + (32 * mem[_2971 + mem[_2971]]) + 32
                    mem[_2971 + ceil32(return_data.size)] = _3007
                    require _2989 + (32 * _3007) + 32 <= return_data.size
                    idx = 0
                    s = _2971 + _2989 + 32
                    t = _2971 + ceil32(return_data.size) + 32
                    while idx < _3007:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[ceil32(return_data.size) + 416]
                    require 1 < mem[ceil32(return_data.size) + 512]
                    _3799 = mem[ceil32(return_data.size) + 576]
                    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                    mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[mem[64] + 100] = _2101
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3799), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2101, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4054 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_4054] == mem[_4054]
                    require mem[_4054 + 32] == mem[_4054 + 32]
                    require mem[_4054 + 64] == mem[_4054 + 64]
                    if mem[_4054 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_4054 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_4054 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_4054 + 64]
                else:
                    mem[ceil32(return_data.size) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[ceil32(return_data.size) + 548] = 64
                    mem[ceil32(return_data.size) + 580] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 448
                    t = ceil32(return_data.size) + 612
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[ceil32(return_data.size) + 612 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _1071 = mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                    require mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < ceil32(return_data.size) + return_data.size + 512
                    _1113 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                    mem[(2 * ceil32(return_data.size)) + 512] = _1113
                    require _1071 + (32 * _1113) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _1071 + 544
                    t = (2 * ceil32(return_data.size)) + 544
                    while idx < _1113:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1113 - 1 < _1113
                    _2103 = mem[(32 * _1113 - 1) + (2 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[mem[64] + 36] = _2103
                    mem[mem[64] + 68] = 160
                    _2126 = mem[ceil32(return_data.size) + 416]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 416]
                    idx = 0
                    s = ceil32(return_data.size) + 448
                    t = mem[64] + 196
                    while idx < _2126:
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
                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2103, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2126) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2972 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2990 = mem[_2972]
                    require mem[_2972] <= test266151307()
                    require _2972 + mem[_2972] + 31 < _2972 + return_data.size
                    _3008 = mem[_2972 + mem[_2972]]
                    require mem[_2972 + mem[_2972]] <= test266151307()
                    require _2972 + ceil32(return_data.size) + (32 * mem[_2972 + mem[_2972]]) + 32 <= test266151307() and (32 * mem[_2972 + mem[_2972]]) + 32 >= 0
                    mem[64] = _2972 + ceil32(return_data.size) + (32 * mem[_2972 + mem[_2972]]) + 32
                    mem[_2972 + ceil32(return_data.size)] = _3008
                    require _2990 + (32 * _3008) + 32 <= return_data.size
                    idx = 0
                    s = _2972 + _2990 + 32
                    t = _2972 + ceil32(return_data.size) + 32
                    while idx < _3008:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3780 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3780 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[ceil32(return_data.size) + 416]
                    require 0 < mem[_3780]
                    mem[_3780 + 32] = mem[ceil32(return_data.size) + 460 len 20]
                    require 1 < mem[_3780]
                    mem[_3780 + 64] = stor11
                    require 1 < mem[_3780]
                    require 0 < mem[_3780]
                    if mem[_3780 + 44 len 20] == stor11:
                        require 1 < mem[ceil32(return_data.size) + 416]
                        require 1 < mem[_3780]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[ceil32(return_data.size) + 480]), stor11, _2103, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += ext_call.return_data[64]
                    else:
                        mem[_3780 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3780 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[_3780 + 132] = 64
                        mem[_3780 + 164] = mem[_3780]
                        idx = 0
                        s = _3780 + 32
                        t = _3780 + 196
                        while idx < mem[_3780]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3780 + (32 * mem[_3780]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4531 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4540 = mem[_4531]
                        require mem[_4531] <= test266151307()
                        require _4531 + mem[_4531] + 31 < _4531 + return_data.size
                        _4549 = mem[_4531 + mem[_4531]]
                        require mem[_4531 + mem[_4531]] <= test266151307()
                        require _4531 + ceil32(return_data.size) + (32 * mem[_4531 + mem[_4531]]) + 32 <= test266151307() and (32 * mem[_4531 + mem[_4531]]) + 32 >= 0
                        mem[64] = _4531 + ceil32(return_data.size) + (32 * mem[_4531 + mem[_4531]]) + 32
                        mem[_4531 + ceil32(return_data.size)] = _4549
                        require _4540 + (32 * _4549) + 32 <= return_data.size
                        idx = 0
                        s = _4531 + _4540 + 32
                        t = _4531 + ceil32(return_data.size) + 32
                        while idx < _4549:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4549 - 1 < _4549
                        _4879 = mem[(32 * _4549 - 1) + _4531 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _4879
                        mem[mem[64] + 68] = 160
                        _4891 = mem[_3780]
                        mem[mem[64] + 164] = mem[_3780]
                        idx = 0
                        s = _3780 + 32
                        t = mem[64] + 196
                        while idx < _4891:
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _4879, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4891) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5143 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5152 = mem[_5143]
                        require mem[_5143] <= test266151307()
                        require _5143 + mem[_5143] + 31 < _5143 + return_data.size
                        _5161 = mem[_5143 + mem[_5143]]
                        require mem[_5143 + mem[_5143]] <= test266151307()
                        require _5143 + ceil32(return_data.size) + (32 * mem[_5143 + mem[_5143]]) + 32 <= test266151307() and (32 * mem[_5143 + mem[_5143]]) + 32 >= 0
                        mem[64] = _5143 + ceil32(return_data.size) + (32 * mem[_5143 + mem[_5143]]) + 32
                        mem[_5143 + ceil32(return_data.size)] = _5161
                        require _5152 + (32 * _5161) + 32 <= return_data.size
                        idx = 0
                        s = _5143 + _5152 + 32
                        t = _5143 + ceil32(return_data.size) + 32
                        while idx < _5161:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[ceil32(return_data.size) + 416]
                        require 1 < mem[_3780]
                        _5392 = mem[_3780 + 64]
                        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                        mem[mem[64] + 68] = _2103
                        mem[mem[64] + 100] = _4879
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5392), _2103, _4879, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5413 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5413] == mem[_5413]
                        require mem[_5413 + 32] == mem[_5413 + 32]
                        require mem[_5413 + 64] == mem[_5413 + 64]
                        if mem[_5413 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_5413 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5413 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5413 + 64]
            else:
                mem[ceil32(return_data.size) + 228] = msg.sender
                mem[ceil32(return_data.size) + 260] = ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'reinvest fee transfer failed'
                mem[(2 * ceil32(return_data.size)) + 224] = 31
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[(2 * ceil32(return_data.size)) + 288] = 31
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[(2 * ceil32(return_data.size)) + 352] = 26
                mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                if ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2 <= 0:
                    revert with 0, 'amount too low'
                mem[(2 * ceil32(return_data.size)) + 416] = 2
                mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                mem[(2 * ceil32(return_data.size)) + 480] = stor10
                if rewardTokenAddress == stor10:
                    mem[(2 * ceil32(return_data.size)) + 512] = 2
                    mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 576] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(2 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 740] = 0
                        mem[(2 * ceil32(return_data.size)) + 772] = 0
                        mem[(2 * ceil32(return_data.size)) + 804] = this.address
                        mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[(4 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 32]
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
                    mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                           args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 608
                    require return_data.size >= 32
                    _1074 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                    _1114 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                    mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                    require _1074 + (32 * _1114) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1074 + 640
                    t = (4 * ceil32(return_data.size)) + 640
                    while idx < _1114:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1114 - 1 < _1114
                    _2105 = mem[(32 * _1114 - 1) + (4 * ceil32(return_data.size)) + 640]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _1114 - 1) + (4 * ceil32(return_data.size)) + 640]
                    mem[mem[64] + 68] = 160
                    _2127 = mem[(2 * ceil32(return_data.size)) + 512]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = mem[64] + 196
                    while idx < _2127:
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
                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2127) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2973 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2991 = mem[_2973]
                    require mem[_2973] <= test266151307()
                    require _2973 + mem[_2973] + 31 < _2973 + return_data.size
                    _3009 = mem[_2973 + mem[_2973]]
                    require mem[_2973 + mem[_2973]] <= test266151307()
                    require _2973 + ceil32(return_data.size) + (32 * mem[_2973 + mem[_2973]]) + 32 <= test266151307() and (32 * mem[_2973 + mem[_2973]]) + 32 >= 0
                    mem[64] = _2973 + ceil32(return_data.size) + (32 * mem[_2973 + mem[_2973]]) + 32
                    mem[_2973 + ceil32(return_data.size)] = _3009
                    require _2991 + (32 * _3009) + 32 <= return_data.size
                    idx = 0
                    s = _2973 + _2991 + 32
                    t = _2973 + ceil32(return_data.size) + 32
                    while idx < _3009:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                    _3801 = mem[(2 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                    mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[mem[64] + 100] = _2105
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3801), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2105, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4055 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_4055] == mem[_4055]
                    require mem[_4055 + 32] == mem[_4055 + 32]
                    require mem[_4055 + 64] == mem[_4055 + 64]
                    if mem[_4055 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_4055 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_4055 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_4055 + 64]
                else:
                    mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                           args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _1075 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                    _1115 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                    mem[(4 * ceil32(return_data.size)) + 512] = _1115
                    require _1075 + (32 * _1115) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1075 + 544
                    t = (4 * ceil32(return_data.size)) + 544
                    while idx < _1115:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1115 - 1 < _1115
                    _2107 = mem[(32 * _1115 - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _1115 - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 68] = 160
                    _2128 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _2128:
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
                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2128) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2974 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2992 = mem[_2974]
                    require mem[_2974] <= test266151307()
                    require _2974 + mem[_2974] + 31 < _2974 + return_data.size
                    _3010 = mem[_2974 + mem[_2974]]
                    require mem[_2974 + mem[_2974]] <= test266151307()
                    require _2974 + ceil32(return_data.size) + (32 * mem[_2974 + mem[_2974]]) + 32 <= test266151307() and (32 * mem[_2974 + mem[_2974]]) + 32 >= 0
                    mem[64] = _2974 + ceil32(return_data.size) + (32 * mem[_2974 + mem[_2974]]) + 32
                    mem[_2974 + ceil32(return_data.size)] = _3010
                    require _2992 + (32 * _3010) + 32 <= return_data.size
                    idx = 0
                    s = _2974 + _2992 + 32
                    t = _2974 + ceil32(return_data.size) + 32
                    while idx < _3010:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3783 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3783 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3783]
                    mem[_3783 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3783]
                    mem[_3783 + 64] = stor11
                    require 1 < mem[_3783]
                    require 0 < mem[_3783]
                    if mem[_3783 + 44 len 20] == stor11:
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3783]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2107, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += ext_call.return_data[64]
                    else:
                        mem[_3783 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3783 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[_3783 + 132] = 64
                        mem[_3783 + 164] = mem[_3783]
                        idx = 0
                        s = _3783 + 32
                        t = _3783 + 196
                        while idx < mem[_3783]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3783 + (32 * mem[_3783]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4532 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4541 = mem[_4532]
                        require mem[_4532] <= test266151307()
                        require _4532 + mem[_4532] + 31 < _4532 + return_data.size
                        _4550 = mem[_4532 + mem[_4532]]
                        require mem[_4532 + mem[_4532]] <= test266151307()
                        require _4532 + ceil32(return_data.size) + (32 * mem[_4532 + mem[_4532]]) + 32 <= test266151307() and (32 * mem[_4532 + mem[_4532]]) + 32 >= 0
                        mem[64] = _4532 + ceil32(return_data.size) + (32 * mem[_4532 + mem[_4532]]) + 32
                        mem[_4532 + ceil32(return_data.size)] = _4550
                        require _4541 + (32 * _4550) + 32 <= return_data.size
                        idx = 0
                        s = _4532 + _4541 + 32
                        t = _4532 + ceil32(return_data.size) + 32
                        while idx < _4550:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4550 - 1 < _4550
                        _4881 = mem[(32 * _4550 - 1) + _4532 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _4550 - 1) + _4532 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 68] = 160
                        _4892 = mem[_3783]
                        mem[mem[64] + 164] = mem[_3783]
                        idx = 0
                        s = _3783 + 32
                        t = mem[64] + 196
                        while idx < _4892:
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4892) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5144 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5153 = mem[_5144]
                        require mem[_5144] <= test266151307()
                        require _5144 + mem[_5144] + 31 < _5144 + return_data.size
                        _5162 = mem[_5144 + mem[_5144]]
                        require mem[_5144 + mem[_5144]] <= test266151307()
                        require _5144 + ceil32(return_data.size) + (32 * mem[_5144 + mem[_5144]]) + 32 <= test266151307() and (32 * mem[_5144 + mem[_5144]]) + 32 >= 0
                        mem[64] = _5144 + ceil32(return_data.size) + (32 * mem[_5144 + mem[_5144]]) + 32
                        mem[_5144 + ceil32(return_data.size)] = _5162
                        require _5153 + (32 * _5162) + 32 <= return_data.size
                        idx = 0
                        s = _5144 + _5153 + 32
                        t = _5144 + ceil32(return_data.size) + 32
                        while idx < _5162:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3783]
                        _5394 = mem[_3783 + 64]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = _2107
                        mem[mem[64] + 100] = _4881
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5394), _2107, _4881, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5414 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5414] == mem[_5414]
                        require mem[_5414 + 32] == mem[_5414 + 32]
                        require mem[_5414 + 64] == mem[_5414 + 64]
                        if mem[_5414 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_5414 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5414 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5414 + 64]
        emit Reinvest(totalDeposits, totalSupply);
    else:
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ADMIN_FEE_BIPS / ext_call.return_data[0] != ADMIN_FEE_BIPS:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[ceil32(return_data.size) + 96] = 26
        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
        if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 <= 0:
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 160] = 26
                mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 224] = 31
                mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction underflow'
                if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[ceil32(return_data.size) + 288] = 31
                mem[ceil32(return_data.size) + 320] = 'SafeMath: subtraction underflow'
                if 0 > ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000):
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[ceil32(return_data.size) + 352] = 26
                mem[ceil32(return_data.size) + 384] = 'SafeMath: division by zero'
                if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2 <= 0:
                    revert with 0, 'amount too low'
                mem[ceil32(return_data.size) + 416] = 2
                mem[ceil32(return_data.size) + 448] = rewardTokenAddress
                mem[ceil32(return_data.size) + 480] = stor10
                if rewardTokenAddress == stor10:
                    mem[ceil32(return_data.size) + 512] = 2
                    mem[ceil32(return_data.size) + 544] = rewardTokenAddress
                    mem[ceil32(return_data.size) + 576] = stor11
                    if rewardTokenAddress == stor11:
                        mem[ceil32(return_data.size) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                        mem[ceil32(return_data.size) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                        mem[ceil32(return_data.size) + 740] = 0
                        mem[ceil32(return_data.size) + 772] = 0
                        mem[ceil32(return_data.size) + 804] = this.address
                        mem[ceil32(return_data.size) + 836] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                        mem[ceil32(return_data.size) + 608 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 612] = 32
                            mem[(2 * ceil32(return_data.size)) + 644] = 14
                            mem[(2 * ceil32(return_data.size)) + 676] = 'amount too low'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 612 len ceil32(return_data.size) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                totalDeposits += ext_call.return_data[64]
                                mem[(2 * ceil32(return_data.size)) + 608] = totalDeposits
                                mem[(2 * ceil32(return_data.size)) + 640] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64],
                            mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 612] = 32
                            mem[(2 * ceil32(return_data.size)) + 644] = 27
                            mem[(2 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                        revert with memory
                          from (2 * ceil32(return_data.size)) + 608
                           len ceil32(return_data.size) + 100
                    mem[ceil32(return_data.size) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[ceil32(return_data.size) + 644] = 64
                    mem[ceil32(return_data.size) + 676] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 544
                    t = ceil32(return_data.size) + 708
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), Array(len=2, data=mem[ceil32(return_data.size) + 708 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 608
                    require return_data.size >= 32
                    _1053 = mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32
                    require mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 639 < ceil32(return_data.size) + return_data.size + 608
                    _1104 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 640
                    mem[(2 * ceil32(return_data.size)) + 608] = _1104
                    require _1053 + (32 * _1104) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _1053 + 640
                    t = (2 * ceil32(return_data.size)) + 640
                    while idx < _1104:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1104 - 1 < _1104
                    _2085 = mem[(32 * _1104 - 1) + (2 * ceil32(return_data.size)) + 640]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _1104 - 1) + (2 * ceil32(return_data.size)) + 640]
                    mem[mem[64] + 68] = 160
                    _2117 = mem[ceil32(return_data.size) + 512]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 512]
                    idx = 0
                    s = ceil32(return_data.size) + 544
                    t = mem[64] + 196
                    while idx < _2117:
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
                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2117) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2963 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2981 = mem[_2963]
                    require mem[_2963] <= test266151307()
                    require _2963 + mem[_2963] + 31 < _2963 + return_data.size
                    _2999 = mem[_2963 + mem[_2963]]
                    require mem[_2963 + mem[_2963]] <= test266151307()
                    require _2963 + ceil32(return_data.size) + (32 * mem[_2963 + mem[_2963]]) + 32 <= test266151307() and (32 * mem[_2963 + mem[_2963]]) + 32 >= 0
                    mem[64] = _2963 + ceil32(return_data.size) + (32 * mem[_2963 + mem[_2963]]) + 32
                    mem[_2963 + ceil32(return_data.size)] = _2999
                    require _2981 + (32 * _2999) + 32 <= return_data.size
                    idx = 0
                    s = _2963 + _2981 + 32
                    t = _2963 + ceil32(return_data.size) + 32
                    while idx < _2999:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[ceil32(return_data.size) + 416]
                    require 1 < mem[ceil32(return_data.size) + 512]
                    _3791 = mem[ceil32(return_data.size) + 576]
                    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                    mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[mem[64] + 100] = _2085
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3791), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), _2085, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4050 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_4050] == mem[_4050]
                    require mem[_4050 + 32] == mem[_4050 + 32]
                    require mem[_4050 + 64] == mem[_4050 + 64]
                    if mem[_4050 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_4050 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_4050 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_4050 + 64]
                else:
                    mem[ceil32(return_data.size) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[ceil32(return_data.size) + 548] = 64
                    mem[ceil32(return_data.size) + 580] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 448
                    t = ceil32(return_data.size) + 612
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), Array(len=2, data=mem[ceil32(return_data.size) + 612 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _1054 = mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32
                    require mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 543 < ceil32(return_data.size) + return_data.size + 512
                    _1105 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 544
                    mem[(2 * ceil32(return_data.size)) + 512] = _1105
                    require _1054 + (32 * _1105) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _1054 + 544
                    t = (2 * ceil32(return_data.size)) + 544
                    while idx < _1105:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1105 - 1 < _1105
                    _2087 = mem[(32 * _1105 - 1) + (2 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _1105 - 1) + (2 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 68] = 160
                    _2118 = mem[ceil32(return_data.size) + 416]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 416]
                    idx = 0
                    s = ceil32(return_data.size) + 448
                    t = mem[64] + 196
                    while idx < _2118:
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
                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2118) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2964 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2982 = mem[_2964]
                    require mem[_2964] <= test266151307()
                    require _2964 + mem[_2964] + 31 < _2964 + return_data.size
                    _3000 = mem[_2964 + mem[_2964]]
                    require mem[_2964 + mem[_2964]] <= test266151307()
                    require _2964 + ceil32(return_data.size) + (32 * mem[_2964 + mem[_2964]]) + 32 <= test266151307() and (32 * mem[_2964 + mem[_2964]]) + 32 >= 0
                    mem[64] = _2964 + ceil32(return_data.size) + (32 * mem[_2964 + mem[_2964]]) + 32
                    mem[_2964 + ceil32(return_data.size)] = _3000
                    require _2982 + (32 * _3000) + 32 <= return_data.size
                    idx = 0
                    s = _2964 + _2982 + 32
                    t = _2964 + ceil32(return_data.size) + 32
                    while idx < _3000:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3768 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3768 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[ceil32(return_data.size) + 416]
                    require 0 < mem[_3768]
                    mem[_3768 + 32] = mem[ceil32(return_data.size) + 460 len 20]
                    require 1 < mem[_3768]
                    mem[_3768 + 64] = stor11
                    require 1 < mem[_3768]
                    require 0 < mem[_3768]
                    if mem[_3768 + 44 len 20] == stor11:
                        require 1 < mem[ceil32(return_data.size) + 416]
                        require 1 < mem[_3768]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[ceil32(return_data.size) + 480]), stor11, _2087, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += ext_call.return_data[64]
                    else:
                        mem[_3768 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3768 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                        mem[_3768 + 132] = 64
                        mem[_3768 + 164] = mem[_3768]
                        idx = 0
                        s = _3768 + 32
                        t = _3768 + 196
                        while idx < mem[_3768]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3768 + (32 * mem[_3768]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4527 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4536 = mem[_4527]
                        require mem[_4527] <= test266151307()
                        require _4527 + mem[_4527] + 31 < _4527 + return_data.size
                        _4545 = mem[_4527 + mem[_4527]]
                        require mem[_4527 + mem[_4527]] <= test266151307()
                        require _4527 + ceil32(return_data.size) + (32 * mem[_4527 + mem[_4527]]) + 32 <= test266151307() and (32 * mem[_4527 + mem[_4527]]) + 32 >= 0
                        mem[64] = _4527 + ceil32(return_data.size) + (32 * mem[_4527 + mem[_4527]]) + 32
                        mem[_4527 + ceil32(return_data.size)] = _4545
                        require _4536 + (32 * _4545) + 32 <= return_data.size
                        idx = 0
                        s = _4527 + _4536 + 32
                        t = _4527 + ceil32(return_data.size) + 32
                        while idx < _4545:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4545 - 1 < _4545
                        _4871 = mem[(32 * _4545 - 1) + _4527 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _4545 - 1) + _4527 + ceil32(return_data.size) + 32]
                        mem[mem[64] + 68] = 160
                        _4887 = mem[_3768]
                        mem[mem[64] + 164] = mem[_3768]
                        idx = 0
                        s = _3768 + 32
                        t = mem[64] + 196
                        while idx < _4887:
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4887) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5139 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5148 = mem[_5139]
                        require mem[_5139] <= test266151307()
                        require _5139 + mem[_5139] + 31 < _5139 + return_data.size
                        _5157 = mem[_5139 + mem[_5139]]
                        require mem[_5139 + mem[_5139]] <= test266151307()
                        require _5139 + ceil32(return_data.size) + (32 * mem[_5139 + mem[_5139]]) + 32 <= test266151307() and (32 * mem[_5139 + mem[_5139]]) + 32 >= 0
                        mem[64] = _5139 + ceil32(return_data.size) + (32 * mem[_5139 + mem[_5139]]) + 32
                        mem[_5139 + ceil32(return_data.size)] = _5157
                        require _5148 + (32 * _5157) + 32 <= return_data.size
                        idx = 0
                        s = _5139 + _5148 + 32
                        t = _5139 + ceil32(return_data.size) + 32
                        while idx < _5157:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[ceil32(return_data.size) + 416]
                        require 1 < mem[_3768]
                        _5384 = mem[_3768 + 64]
                        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                        mem[mem[64] + 68] = _2087
                        mem[mem[64] + 100] = _4871
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5384), _2087, _4871, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5409 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5409] == mem[_5409]
                        require mem[_5409 + 32] == mem[_5409 + 32]
                        require mem[_5409 + 64] == mem[_5409 + 64]
                        if mem[_5409 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_5409 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5409 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5409 + 64]
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * REINVEST_REWARD_BIPS / ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 160] = 26
                mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 <= 0:
                    mem[ceil32(return_data.size) + 224] = 31
                    mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction underflow'
                    if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[ceil32(return_data.size) + 288] = 31
                    mem[ceil32(return_data.size) + 320] = 'SafeMath: subtraction underflow'
                    if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 > ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000):
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[ceil32(return_data.size) + 352] = 26
                    mem[ceil32(return_data.size) + 384] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2 <= 0:
                        revert with 0, 'amount too low'
                    mem[ceil32(return_data.size) + 416] = 2
                    mem[ceil32(return_data.size) + 448] = rewardTokenAddress
                    mem[ceil32(return_data.size) + 480] = stor10
                    if rewardTokenAddress == stor10:
                        mem[ceil32(return_data.size) + 512] = 2
                        mem[ceil32(return_data.size) + 544] = rewardTokenAddress
                        mem[ceil32(return_data.size) + 576] = stor11
                        if rewardTokenAddress == stor11:
                            mem[ceil32(return_data.size) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[ceil32(return_data.size) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[ceil32(return_data.size) + 740] = 0
                            mem[ceil32(return_data.size) + 772] = 0
                            mem[ceil32(return_data.size) + 804] = this.address
                            mem[ceil32(return_data.size) + 836] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                            mem[ceil32(return_data.size) + 608 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 612] = 32
                                mem[(2 * ceil32(return_data.size)) + 644] = 14
                                mem[(2 * ceil32(return_data.size)) + 676] = 'amount too low'
                            else:
                                mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 612 len ceil32(return_data.size) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] >= totalDeposits:
                                    totalDeposits += ext_call.return_data[64]
                                    mem[(2 * ceil32(return_data.size)) + 608] = totalDeposits
                                    mem[(2 * ceil32(return_data.size)) + 640] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64],
                                mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 612] = 32
                                mem[(2 * ceil32(return_data.size)) + 644] = 27
                                mem[(2 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 608
                               len ceil32(return_data.size) + 100
                        mem[ceil32(return_data.size) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[ceil32(return_data.size) + 644] = 64
                        mem[ceil32(return_data.size) + 676] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 544
                        t = ceil32(return_data.size) + 708
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[ceil32(return_data.size) + 708 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 608
                        require return_data.size >= 32
                        _1045 = mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < ceil32(return_data.size) + return_data.size + 608
                        _1100 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                        mem[(2 * ceil32(return_data.size)) + 608] = _1100
                        require _1045 + (32 * _1100) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1045 + 640
                        t = (2 * ceil32(return_data.size)) + 640
                        while idx < _1100:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1100 - 1 < _1100
                        _2077 = mem[(32 * _1100 - 1) + (2 * ceil32(return_data.size)) + 640]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _1100 - 1) + (2 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 68] = 160
                        _2113 = mem[ceil32(return_data.size) + 512]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 512]
                        idx = 0
                        s = ceil32(return_data.size) + 544
                        t = mem[64] + 196
                        while idx < _2113:
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2113) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2959 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2977 = mem[_2959]
                        require mem[_2959] <= test266151307()
                        require _2959 + mem[_2959] + 31 < _2959 + return_data.size
                        _2995 = mem[_2959 + mem[_2959]]
                        require mem[_2959 + mem[_2959]] <= test266151307()
                        require _2959 + ceil32(return_data.size) + (32 * mem[_2959 + mem[_2959]]) + 32 <= test266151307() and (32 * mem[_2959 + mem[_2959]]) + 32 >= 0
                        mem[64] = _2959 + ceil32(return_data.size) + (32 * mem[_2959 + mem[_2959]]) + 32
                        mem[_2959 + ceil32(return_data.size)] = _2995
                        require _2977 + (32 * _2995) + 32 <= return_data.size
                        idx = 0
                        s = _2959 + _2977 + 32
                        t = _2959 + ceil32(return_data.size) + 32
                        while idx < _2995:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[ceil32(return_data.size) + 416]
                        require 1 < mem[ceil32(return_data.size) + 512]
                        _3787 = mem[ceil32(return_data.size) + 576]
                        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                        mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 100] = _2077
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3787), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2077, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_4048] == mem[_4048]
                        require mem[_4048 + 32] == mem[_4048 + 32]
                        require mem[_4048 + 64] == mem[_4048 + 64]
                        if mem[_4048 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_4048 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_4048 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_4048 + 64]
                    else:
                        mem[ceil32(return_data.size) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[ceil32(return_data.size) + 548] = 64
                        mem[ceil32(return_data.size) + 580] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 448
                        t = ceil32(return_data.size) + 612
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _1046 = mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < ceil32(return_data.size) + return_data.size + 512
                        _1101 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                        mem[(2 * ceil32(return_data.size)) + 512] = _1101
                        require _1046 + (32 * _1101) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1046 + 544
                        t = (2 * ceil32(return_data.size)) + 544
                        while idx < _1101:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1101 - 1 < _1101
                        _2079 = mem[(32 * _1101 - 1) + (2 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _1101 - 1) + (2 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 68] = 160
                        _2114 = mem[ceil32(return_data.size) + 416]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 416]
                        idx = 0
                        s = ceil32(return_data.size) + 448
                        t = mem[64] + 196
                        while idx < _2114:
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2114) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2960 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2978 = mem[_2960]
                        require mem[_2960] <= test266151307()
                        require _2960 + mem[_2960] + 31 < _2960 + return_data.size
                        _2996 = mem[_2960 + mem[_2960]]
                        require mem[_2960 + mem[_2960]] <= test266151307()
                        require _2960 + ceil32(return_data.size) + (32 * mem[_2960 + mem[_2960]]) + 32 <= test266151307() and (32 * mem[_2960 + mem[_2960]]) + 32 >= 0
                        mem[64] = _2960 + ceil32(return_data.size) + (32 * mem[_2960 + mem[_2960]]) + 32
                        mem[_2960 + ceil32(return_data.size)] = _2996
                        require _2978 + (32 * _2996) + 32 <= return_data.size
                        idx = 0
                        s = _2960 + _2978 + 32
                        t = _2960 + ceil32(return_data.size) + 32
                        while idx < _2996:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3762 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3762 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[ceil32(return_data.size) + 416]
                        require 0 < mem[_3762]
                        mem[_3762 + 32] = mem[ceil32(return_data.size) + 460 len 20]
                        require 1 < mem[_3762]
                        mem[_3762 + 64] = stor11
                        require 1 < mem[_3762]
                        require 0 < mem[_3762]
                        if mem[_3762 + 44 len 20] == stor11:
                            require 1 < mem[ceil32(return_data.size) + 416]
                            require 1 < mem[_3762]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[ceil32(return_data.size) + 480]), stor11, _2079, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += ext_call.return_data[64]
                        else:
                            mem[_3762 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3762 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[_3762 + 132] = 64
                            mem[_3762 + 164] = mem[_3762]
                            idx = 0
                            s = _3762 + 32
                            t = _3762 + 196
                            while idx < mem[_3762]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3762 + (32 * mem[_3762]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4525 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4534 = mem[_4525]
                            require mem[_4525] <= test266151307()
                            require _4525 + mem[_4525] + 31 < _4525 + return_data.size
                            _4543 = mem[_4525 + mem[_4525]]
                            require mem[_4525 + mem[_4525]] <= test266151307()
                            require _4525 + ceil32(return_data.size) + (32 * mem[_4525 + mem[_4525]]) + 32 <= test266151307() and (32 * mem[_4525 + mem[_4525]]) + 32 >= 0
                            mem[64] = _4525 + ceil32(return_data.size) + (32 * mem[_4525 + mem[_4525]]) + 32
                            mem[_4525 + ceil32(return_data.size)] = _4543
                            require _4534 + (32 * _4543) + 32 <= return_data.size
                            idx = 0
                            s = _4525 + _4534 + 32
                            t = _4525 + ceil32(return_data.size) + 32
                            while idx < _4543:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4543 - 1 < _4543
                            _4867 = mem[(32 * _4543 - 1) + _4525 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _4543 - 1) + _4525 + ceil32(return_data.size) + 32]
                            mem[mem[64] + 68] = 160
                            _4885 = mem[_3762]
                            mem[mem[64] + 164] = mem[_3762]
                            idx = 0
                            s = _3762 + 32
                            t = mem[64] + 196
                            while idx < _4885:
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4885) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5137 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5146 = mem[_5137]
                            require mem[_5137] <= test266151307()
                            require _5137 + mem[_5137] + 31 < _5137 + return_data.size
                            _5155 = mem[_5137 + mem[_5137]]
                            require mem[_5137 + mem[_5137]] <= test266151307()
                            require _5137 + ceil32(return_data.size) + (32 * mem[_5137 + mem[_5137]]) + 32 <= test266151307() and (32 * mem[_5137 + mem[_5137]]) + 32 >= 0
                            mem[64] = _5137 + ceil32(return_data.size) + (32 * mem[_5137 + mem[_5137]]) + 32
                            mem[_5137 + ceil32(return_data.size)] = _5155
                            require _5146 + (32 * _5155) + 32 <= return_data.size
                            idx = 0
                            s = _5137 + _5146 + 32
                            t = _5137 + ceil32(return_data.size) + 32
                            while idx < _5155:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[ceil32(return_data.size) + 416]
                            require 1 < mem[_3762]
                            _5380 = mem[_3762 + 64]
                            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                            mem[mem[64] + 68] = _2079
                            mem[mem[64] + 100] = _4867
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5380), _2079, _4867, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5407] == mem[_5407]
                            require mem[_5407 + 32] == mem[_5407 + 32]
                            require mem[_5407 + 64] == mem[_5407 + 64]
                            if mem[_5407 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5407 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5407 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5407 + 64]
                else:
                    mem[ceil32(return_data.size) + 228] = msg.sender
                    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'reinvest fee transfer failed'
                    mem[(2 * ceil32(return_data.size)) + 224] = 31
                    mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                    if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(2 * ceil32(return_data.size)) + 288] = 31
                    mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                    if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 > ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000):
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(2 * ceil32(return_data.size)) + 352] = 26
                    mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2 <= 0:
                        revert with 0, 'amount too low'
                    mem[(2 * ceil32(return_data.size)) + 416] = 2
                    mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 480] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(2 * ceil32(return_data.size)) + 512] = 2
                        mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 576] = stor11
                        if rewardTokenAddress == stor11:
                            mem[(2 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 740] = 0
                            mem[(2 * ceil32(return_data.size)) + 772] = 0
                            mem[(2 * ceil32(return_data.size)) + 804] = this.address
                            mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                                mem[(4 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 32]
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
                        mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                               args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 608
                        require return_data.size >= 32
                        _1049 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                        _1102 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                        mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                        require _1049 + (32 * _1102) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _1049 + 640
                        t = (4 * ceil32(return_data.size)) + 640
                        while idx < _1102:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1102 - 1 < _1102
                        _2081 = mem[(32 * _1102 - 1) + (4 * ceil32(return_data.size)) + 640]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _1102 - 1) + (4 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 68] = 160
                        _2115 = mem[(2 * ceil32(return_data.size)) + 512]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = mem[64] + 196
                        while idx < _2115:
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2115) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2961 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2979 = mem[_2961]
                        require mem[_2961] <= test266151307()
                        require _2961 + mem[_2961] + 31 < _2961 + return_data.size
                        _2997 = mem[_2961 + mem[_2961]]
                        require mem[_2961 + mem[_2961]] <= test266151307()
                        require _2961 + ceil32(return_data.size) + (32 * mem[_2961 + mem[_2961]]) + 32 <= test266151307() and (32 * mem[_2961 + mem[_2961]]) + 32 >= 0
                        mem[64] = _2961 + ceil32(return_data.size) + (32 * mem[_2961 + mem[_2961]]) + 32
                        mem[_2961 + ceil32(return_data.size)] = _2997
                        require _2979 + (32 * _2997) + 32 <= return_data.size
                        idx = 0
                        s = _2961 + _2979 + 32
                        t = _2961 + ceil32(return_data.size) + 32
                        while idx < _2997:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                        _3789 = mem[(2 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 100] = _2081
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3789), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2081, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4049 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_4049] == mem[_4049]
                        require mem[_4049 + 32] == mem[_4049 + 32]
                        require mem[_4049 + 64] == mem[_4049 + 64]
                        if mem[_4049 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_4049 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_4049 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_4049 + 64]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                               args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _1050 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                        _1103 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                        mem[(4 * ceil32(return_data.size)) + 512] = _1103
                        require _1050 + (32 * _1103) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _1050 + 544
                        t = (4 * ceil32(return_data.size)) + 544
                        while idx < _1103:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1103 - 1 < _1103
                        _2083 = mem[(32 * _1103 - 1) + (4 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _1103 - 1) + (4 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 68] = 160
                        _2116 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _2116:
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2116) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2962 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2980 = mem[_2962]
                        require mem[_2962] <= test266151307()
                        require _2962 + mem[_2962] + 31 < _2962 + return_data.size
                        _2998 = mem[_2962 + mem[_2962]]
                        require mem[_2962 + mem[_2962]] <= test266151307()
                        require _2962 + ceil32(return_data.size) + (32 * mem[_2962 + mem[_2962]]) + 32 <= test266151307() and (32 * mem[_2962 + mem[_2962]]) + 32 >= 0
                        mem[64] = _2962 + ceil32(return_data.size) + (32 * mem[_2962 + mem[_2962]]) + 32
                        mem[_2962 + ceil32(return_data.size)] = _2998
                        require _2980 + (32 * _2998) + 32 <= return_data.size
                        idx = 0
                        s = _2962 + _2980 + 32
                        t = _2962 + ceil32(return_data.size) + 32
                        while idx < _2998:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3765 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3765 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3765]
                        mem[_3765 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3765]
                        mem[_3765 + 64] = stor11
                        require 1 < mem[_3765]
                        require 0 < mem[_3765]
                        if mem[_3765 + 44 len 20] == stor11:
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3765]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2083, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += ext_call.return_data[64]
                        else:
                            mem[_3765 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3765 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[_3765 + 132] = 64
                            mem[_3765 + 164] = mem[_3765]
                            idx = 0
                            s = _3765 + 32
                            t = _3765 + 196
                            while idx < mem[_3765]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3765 + (32 * mem[_3765]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4526 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4535 = mem[_4526]
                            require mem[_4526] <= test266151307()
                            require _4526 + mem[_4526] + 31 < _4526 + return_data.size
                            _4544 = mem[_4526 + mem[_4526]]
                            require mem[_4526 + mem[_4526]] <= test266151307()
                            require _4526 + ceil32(return_data.size) + (32 * mem[_4526 + mem[_4526]]) + 32 <= test266151307() and (32 * mem[_4526 + mem[_4526]]) + 32 >= 0
                            mem[64] = _4526 + ceil32(return_data.size) + (32 * mem[_4526 + mem[_4526]]) + 32
                            mem[_4526 + ceil32(return_data.size)] = _4544
                            require _4535 + (32 * _4544) + 32 <= return_data.size
                            idx = 0
                            s = _4526 + _4535 + 32
                            t = _4526 + ceil32(return_data.size) + 32
                            while idx < _4544:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4544 - 1 < _4544
                            _4869 = mem[(32 * _4544 - 1) + _4526 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _4544 - 1) + _4526 + ceil32(return_data.size) + 32]
                            mem[mem[64] + 68] = 160
                            _4886 = mem[_3765]
                            mem[mem[64] + 164] = mem[_3765]
                            idx = 0
                            s = _3765 + 32
                            t = mem[64] + 196
                            while idx < _4886:
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4886) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5138 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5147 = mem[_5138]
                            require mem[_5138] <= test266151307()
                            require _5138 + mem[_5138] + 31 < _5138 + return_data.size
                            _5156 = mem[_5138 + mem[_5138]]
                            require mem[_5138 + mem[_5138]] <= test266151307()
                            require _5138 + ceil32(return_data.size) + (32 * mem[_5138 + mem[_5138]]) + 32 <= test266151307() and (32 * mem[_5138 + mem[_5138]]) + 32 >= 0
                            mem[64] = _5138 + ceil32(return_data.size) + (32 * mem[_5138 + mem[_5138]]) + 32
                            mem[_5138 + ceil32(return_data.size)] = _5156
                            require _5147 + (32 * _5156) + 32 <= return_data.size
                            idx = 0
                            s = _5138 + _5147 + 32
                            t = _5138 + ceil32(return_data.size) + 32
                            while idx < _5156:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3765]
                            _5382 = mem[_3765 + 64]
                            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _2083
                            mem[mem[64] + 100] = _4869
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5382), _2083, _4869, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5408 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5408] == mem[_5408]
                            require mem[_5408 + 32] == mem[_5408 + 32]
                            require mem[_5408 + 64] == mem[_5408 + 64]
                            if mem[_5408 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5408 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5408 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5408 + 64]
            emit Reinvest(totalDeposits, totalSupply);
        else:
            mem[ceil32(return_data.size) + 164] = owner
            mem[ceil32(return_data.size) + 196] = ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'admin fee transfer failed'
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 160] = 26
                mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 224] = 31
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[(2 * ceil32(return_data.size)) + 288] = 31
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                if 0 > ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000):
                    revert with 0, 'SafeMath: subtraction underflow', 0
                mem[(2 * ceil32(return_data.size)) + 352] = 26
                mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2 <= 0:
                    revert with 0, 'amount too low'
                mem[(2 * ceil32(return_data.size)) + 416] = 2
                mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                mem[(2 * ceil32(return_data.size)) + 480] = stor10
                if rewardTokenAddress == stor10:
                    mem[(2 * ceil32(return_data.size)) + 512] = 2
                    mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 576] = stor11
                    if rewardTokenAddress == stor11:
                        mem[(2 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                        mem[(2 * ceil32(return_data.size)) + 740] = 0
                        mem[(2 * ceil32(return_data.size)) + 772] = 0
                        mem[(2 * ceil32(return_data.size)) + 804] = this.address
                        mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[(4 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 32]
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
                    mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
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
                           args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 608
                    require return_data.size >= 32
                    _1066 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                    _1110 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 640
                    mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]
                    require _1066 + (32 * _1110) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1066 + 640
                    t = (4 * ceil32(return_data.size)) + 640
                    while idx < _1110:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1110 - 1 < _1110
                    _2097 = mem[(32 * _1110 - 1) + (4 * ceil32(return_data.size)) + 640]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _1110 - 1) + (4 * ceil32(return_data.size)) + 640]
                    mem[mem[64] + 68] = 160
                    _2123 = mem[(2 * ceil32(return_data.size)) + 512]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = mem[64] + 196
                    while idx < _2123:
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
                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2123) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2969 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2987 = mem[_2969]
                    require mem[_2969] <= test266151307()
                    require _2969 + mem[_2969] + 31 < _2969 + return_data.size
                    _3005 = mem[_2969 + mem[_2969]]
                    require mem[_2969 + mem[_2969]] <= test266151307()
                    require _2969 + ceil32(return_data.size) + (32 * mem[_2969 + mem[_2969]]) + 32 <= test266151307() and (32 * mem[_2969 + mem[_2969]]) + 32 >= 0
                    mem[64] = _2969 + ceil32(return_data.size) + (32 * mem[_2969 + mem[_2969]]) + 32
                    mem[_2969 + ceil32(return_data.size)] = _3005
                    require _2987 + (32 * _3005) + 32 <= return_data.size
                    idx = 0
                    s = _2969 + _2987 + 32
                    t = _2969 + ceil32(return_data.size) + 32
                    while idx < _3005:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                    _3797 = mem[(2 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                    mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[mem[64] + 100] = _2097
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3797), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), _2097, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4053 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_4053] == mem[_4053]
                    require mem[_4053 + 32] == mem[_4053 + 32]
                    require mem[_4053 + 64] == mem[_4053 + 64]
                    if mem[_4053 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_4053 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_4053 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_4053 + 64]
                else:
                    mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
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
                           args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _1067 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                    _1111 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 544
                    mem[(4 * ceil32(return_data.size)) + 512] = _1111
                    require _1067 + (32 * _1111) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1067 + 544
                    t = (4 * ceil32(return_data.size)) + 544
                    while idx < _1111:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1111 - 1 < _1111
                    _2099 = mem[(32 * _1111 - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _1111 - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 68] = 160
                    _2124 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _2124:
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
                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2124) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2970 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2988 = mem[_2970]
                    require mem[_2970] <= test266151307()
                    require _2970 + mem[_2970] + 31 < _2970 + return_data.size
                    _3006 = mem[_2970 + mem[_2970]]
                    require mem[_2970 + mem[_2970]] <= test266151307()
                    require _2970 + ceil32(return_data.size) + (32 * mem[_2970 + mem[_2970]]) + 32 <= test266151307() and (32 * mem[_2970 + mem[_2970]]) + 32 >= 0
                    mem[64] = _2970 + ceil32(return_data.size) + (32 * mem[_2970 + mem[_2970]]) + 32
                    mem[_2970 + ceil32(return_data.size)] = _3006
                    require _2988 + (32 * _3006) + 32 <= return_data.size
                    idx = 0
                    s = _2970 + _2988 + 32
                    t = _2970 + ceil32(return_data.size) + 32
                    while idx < _3006:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3777 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3777 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3777]
                    mem[_3777 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3777]
                    mem[_3777 + 64] = stor11
                    require 1 < mem[_3777]
                    require 0 < mem[_3777]
                    if mem[_3777 + 44 len 20] == stor11:
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3777]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2099, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        if ext_call.return_data[64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + ext_call.return_data[64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += ext_call.return_data[64]
                    else:
                        mem[_3777 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3777 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                        mem[_3777 + 132] = 64
                        mem[_3777 + 164] = mem[_3777]
                        idx = 0
                        s = _3777 + 32
                        t = _3777 + 196
                        while idx < mem[_3777]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3777 + (32 * mem[_3777]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4530 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4539 = mem[_4530]
                        require mem[_4530] <= test266151307()
                        require _4530 + mem[_4530] + 31 < _4530 + return_data.size
                        _4548 = mem[_4530 + mem[_4530]]
                        require mem[_4530 + mem[_4530]] <= test266151307()
                        require _4530 + ceil32(return_data.size) + (32 * mem[_4530 + mem[_4530]]) + 32 <= test266151307() and (32 * mem[_4530 + mem[_4530]]) + 32 >= 0
                        mem[64] = _4530 + ceil32(return_data.size) + (32 * mem[_4530 + mem[_4530]]) + 32
                        mem[_4530 + ceil32(return_data.size)] = _4548
                        require _4539 + (32 * _4548) + 32 <= return_data.size
                        idx = 0
                        s = _4530 + _4539 + 32
                        t = _4530 + ceil32(return_data.size) + 32
                        while idx < _4548:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4548 - 1 < _4548
                        _4877 = mem[(32 * _4548 - 1) + _4530 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _4877
                        mem[mem[64] + 68] = 160
                        _4890 = mem[_3777]
                        mem[mem[64] + 164] = mem[_3777]
                        idx = 0
                        s = _3777 + 32
                        t = mem[64] + 196
                        while idx < _4890:
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), _4877, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4890) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5142 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5151 = mem[_5142]
                        require mem[_5142] <= test266151307()
                        require _5142 + mem[_5142] + 31 < _5142 + return_data.size
                        _5160 = mem[_5142 + mem[_5142]]
                        require mem[_5142 + mem[_5142]] <= test266151307()
                        require _5142 + ceil32(return_data.size) + (32 * mem[_5142 + mem[_5142]]) + 32 <= test266151307() and (32 * mem[_5142 + mem[_5142]]) + 32 >= 0
                        mem[64] = _5142 + ceil32(return_data.size) + (32 * mem[_5142 + mem[_5142]]) + 32
                        mem[_5142 + ceil32(return_data.size)] = _5160
                        require _5151 + (32 * _5160) + 32 <= return_data.size
                        idx = 0
                        s = _5142 + _5151 + 32
                        t = _5142 + ceil32(return_data.size) + 32
                        while idx < _5160:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3777]
                        _5390 = mem[_3777 + 64]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = _2099
                        mem[mem[64] + 100] = _4877
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5390), _2099, _4877, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5412 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5412] == mem[_5412]
                        require mem[_5412 + 32] == mem[_5412 + 32]
                        require mem[_5412 + 64] == mem[_5412 + 64]
                        if mem[_5412 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_5412 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5412 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5412 + 64]
                emit Reinvest(totalDeposits, totalSupply);
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * REINVEST_REWARD_BIPS / ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 160] = 26
                mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 <= 0:
                    mem[(2 * ceil32(return_data.size)) + 224] = 31
                    mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                    if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(2 * ceil32(return_data.size)) + 288] = 31
                    mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                    if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 > ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000):
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(2 * ceil32(return_data.size)) + 352] = 26
                    mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2 <= 0:
                        revert with 0, 'amount too low'
                    mem[(2 * ceil32(return_data.size)) + 416] = 2
                    mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 480] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(2 * ceil32(return_data.size)) + 512] = 2
                        mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 576] = stor11
                        if rewardTokenAddress == stor11:
                            mem[(2 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[(2 * ceil32(return_data.size)) + 740] = 0
                            mem[(2 * ceil32(return_data.size)) + 772] = 0
                            mem[(2 * ceil32(return_data.size)) + 804] = this.address
                            mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                                mem[(4 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 32]
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
                        mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                               args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 608
                        require return_data.size >= 32
                        _1057 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                        _1106 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                        mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                        require _1057 + (32 * _1106) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _1057 + 640
                        t = (4 * ceil32(return_data.size)) + 640
                        while idx < _1106:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1106 - 1 < _1106
                        _2089 = mem[(32 * _1106 - 1) + (4 * ceil32(return_data.size)) + 640]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _1106 - 1) + (4 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 68] = 160
                        _2119 = mem[(2 * ceil32(return_data.size)) + 512]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = mem[64] + 196
                        while idx < _2119:
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2119) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2965 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2983 = mem[_2965]
                        require mem[_2965] <= test266151307()
                        require _2965 + mem[_2965] + 31 < _2965 + return_data.size
                        _3001 = mem[_2965 + mem[_2965]]
                        require mem[_2965 + mem[_2965]] <= test266151307()
                        require _2965 + ceil32(return_data.size) + (32 * mem[_2965 + mem[_2965]]) + 32 <= test266151307() and (32 * mem[_2965 + mem[_2965]]) + 32 >= 0
                        mem[64] = _2965 + ceil32(return_data.size) + (32 * mem[_2965 + mem[_2965]]) + 32
                        mem[_2965 + ceil32(return_data.size)] = _3001
                        require _2983 + (32 * _3001) + 32 <= return_data.size
                        idx = 0
                        s = _2965 + _2983 + 32
                        t = _2965 + ceil32(return_data.size) + 32
                        while idx < _3001:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                        _3793 = mem[(2 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 100] = _2089
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3793), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2089, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4051 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_4051] == mem[_4051]
                        require mem[_4051 + 32] == mem[_4051 + 32]
                        require mem[_4051 + 64] == mem[_4051 + 64]
                        if mem[_4051 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_4051 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_4051 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_4051 + 64]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                               args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _1058 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                        _1107 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                        mem[(4 * ceil32(return_data.size)) + 512] = _1107
                        require _1058 + (32 * _1107) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _1058 + 544
                        t = (4 * ceil32(return_data.size)) + 544
                        while idx < _1107:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1107 - 1 < _1107
                        _2091 = mem[(32 * _1107 - 1) + (4 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _1107 - 1) + (4 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 68] = 160
                        _2120 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _2120:
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2120) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2966 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2984 = mem[_2966]
                        require mem[_2966] <= test266151307()
                        require _2966 + mem[_2966] + 31 < _2966 + return_data.size
                        _3002 = mem[_2966 + mem[_2966]]
                        require mem[_2966 + mem[_2966]] <= test266151307()
                        require _2966 + ceil32(return_data.size) + (32 * mem[_2966 + mem[_2966]]) + 32 <= test266151307() and (32 * mem[_2966 + mem[_2966]]) + 32 >= 0
                        mem[64] = _2966 + ceil32(return_data.size) + (32 * mem[_2966 + mem[_2966]]) + 32
                        mem[_2966 + ceil32(return_data.size)] = _3002
                        require _2984 + (32 * _3002) + 32 <= return_data.size
                        idx = 0
                        s = _2966 + _2984 + 32
                        t = _2966 + ceil32(return_data.size) + 32
                        while idx < _3002:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3771 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3771 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3771]
                        mem[_3771 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3771]
                        mem[_3771 + 64] = stor11
                        require 1 < mem[_3771]
                        require 0 < mem[_3771]
                        if mem[_3771 + 44 len 20] == stor11:
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3771]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2091, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += ext_call.return_data[64]
                        else:
                            mem[_3771 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3771 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[_3771 + 132] = 64
                            mem[_3771 + 164] = mem[_3771]
                            idx = 0
                            s = _3771 + 32
                            t = _3771 + 196
                            while idx < mem[_3771]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3771 + (32 * mem[_3771]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4528 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4537 = mem[_4528]
                            require mem[_4528] <= test266151307()
                            require _4528 + mem[_4528] + 31 < _4528 + return_data.size
                            _4546 = mem[_4528 + mem[_4528]]
                            require mem[_4528 + mem[_4528]] <= test266151307()
                            require _4528 + ceil32(return_data.size) + (32 * mem[_4528 + mem[_4528]]) + 32 <= test266151307() and (32 * mem[_4528 + mem[_4528]]) + 32 >= 0
                            mem[64] = _4528 + ceil32(return_data.size) + (32 * mem[_4528 + mem[_4528]]) + 32
                            mem[_4528 + ceil32(return_data.size)] = _4546
                            require _4537 + (32 * _4546) + 32 <= return_data.size
                            idx = 0
                            s = _4528 + _4537 + 32
                            t = _4528 + ceil32(return_data.size) + 32
                            while idx < _4546:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4546 - 1 < _4546
                            _4873 = mem[(32 * _4546 - 1) + _4528 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _4546 - 1) + _4528 + ceil32(return_data.size) + 32]
                            mem[mem[64] + 68] = 160
                            _4888 = mem[_3771]
                            mem[mem[64] + 164] = mem[_3771]
                            idx = 0
                            s = _3771 + 32
                            t = mem[64] + 196
                            while idx < _4888:
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4888) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5140 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5149 = mem[_5140]
                            require mem[_5140] <= test266151307()
                            require _5140 + mem[_5140] + 31 < _5140 + return_data.size
                            _5158 = mem[_5140 + mem[_5140]]
                            require mem[_5140 + mem[_5140]] <= test266151307()
                            require _5140 + ceil32(return_data.size) + (32 * mem[_5140 + mem[_5140]]) + 32 <= test266151307() and (32 * mem[_5140 + mem[_5140]]) + 32 >= 0
                            mem[64] = _5140 + ceil32(return_data.size) + (32 * mem[_5140 + mem[_5140]]) + 32
                            mem[_5140 + ceil32(return_data.size)] = _5158
                            require _5149 + (32 * _5158) + 32 <= return_data.size
                            idx = 0
                            s = _5140 + _5149 + 32
                            t = _5140 + ceil32(return_data.size) + 32
                            while idx < _5158:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3771]
                            _5386 = mem[_3771 + 64]
                            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _2091
                            mem[mem[64] + 100] = _4873
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5386), _2091, _4873, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5410 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5410] == mem[_5410]
                            require mem[_5410 + 32] == mem[_5410 + 32]
                            require mem[_5410 + 64] == mem[_5410 + 64]
                            if mem[_5410 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5410 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5410 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5410 + 64]
                    emit Reinvest(totalDeposits, totalSupply);
                else:
                    mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'reinvest fee transfer failed'
                    mem[(4 * ceil32(return_data.size)) + 224] = 31
                    mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                    if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(4 * ceil32(return_data.size)) + 288] = 31
                    mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                    if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 > ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000):
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[(4 * ceil32(return_data.size)) + 352] = 26
                    mem[(4 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2 <= 0:
                        revert with 0, 'amount too low'
                    mem[(4 * ceil32(return_data.size)) + 416] = 2
                    mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 480] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(4 * ceil32(return_data.size)) + 512] = 2
                        mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 576] = stor11
                        if rewardTokenAddress == stor11:
                            mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[(4 * ceil32(return_data.size)) + 740] = 0
                            mem[(4 * ceil32(return_data.size)) + 772] = 0
                            mem[(4 * ceil32(return_data.size)) + 804] = this.address
                            mem[(4 * ceil32(return_data.size)) + 836] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                            mem[(4 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 644 len 9 * ceil32(return_data.size)]
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
                            mem[(4 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                                   args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 708 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 608
                            require return_data.size >= 32
                            _1061 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                            _1108 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                            mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                            require _1061 + (32 * _1108) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _1061 + 640
                            t = (6 * ceil32(return_data.size)) + 640
                            while idx < _1108:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1108 - 1 < _1108
                            _2093 = mem[(32 * _1108 - 1) + (6 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _1108 - 1) + (6 * ceil32(return_data.size)) + 640]
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[(32 * _1108 - 1) + (6 * ceil32(return_data.size)) + 640], Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2967 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2985 = mem[_2967]
                            require mem[_2967] <= test266151307()
                            require _2967 + mem[_2967] + 31 < _2967 + return_data.size
                            _3003 = mem[_2967 + mem[_2967]]
                            require mem[_2967 + mem[_2967]] <= test266151307()
                            require _2967 + ceil32(return_data.size) + (32 * mem[_2967 + mem[_2967]]) + 32 <= test266151307() and (32 * mem[_2967 + mem[_2967]]) + 32 >= 0
                            mem[64] = _2967 + ceil32(return_data.size) + (32 * mem[_2967 + mem[_2967]]) + 32
                            mem[_2967 + ceil32(return_data.size)] = _3003
                            require _2985 + (32 * _3003) + 32 <= return_data.size
                            idx = 0
                            s = _2967 + _2985 + 32
                            t = _2967 + ceil32(return_data.size) + 32
                            while idx < _3003:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                            _3795 = mem[(4 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 100] = _2093
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_3795), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2093, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4052 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_4052] == mem[_4052]
                            require mem[_4052 + 32] == mem[_4052 + 32]
                            require mem[_4052 + 64] == mem[_4052 + 64]
                            if mem[_4052 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_4052 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_4052 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_4052 + 64]
                            emit Reinvest(totalDeposits, totalSupply);
                    else:
                        mem[(4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                               args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _1062 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                        _1109 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                        mem[(6 * ceil32(return_data.size)) + 512] = _1109
                        require _1062 + (32 * _1109) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _1062 + 544
                        t = (6 * ceil32(return_data.size)) + 544
                        while idx < _1109:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1109 - 1 < _1109
                        _2095 = mem[(32 * _1109 - 1) + (6 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _1109 - 1) + (6 * ceil32(return_data.size)) + 544]
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[(32 * _1109 - 1) + (6 * ceil32(return_data.size)) + 544], Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2968 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2986 = mem[_2968]
                        require mem[_2968] <= test266151307()
                        require _2968 + mem[_2968] + 31 < _2968 + return_data.size
                        _3004 = mem[_2968 + mem[_2968]]
                        require mem[_2968 + mem[_2968]] <= test266151307()
                        require _2968 + ceil32(return_data.size) + (32 * mem[_2968 + mem[_2968]]) + 32 <= test266151307() and (32 * mem[_2968 + mem[_2968]]) + 32 >= 0
                        mem[64] = _2968 + ceil32(return_data.size) + (32 * mem[_2968 + mem[_2968]]) + 32
                        mem[_2968 + ceil32(return_data.size)] = _3004
                        require _2986 + (32 * _3004) + 32 <= return_data.size
                        idx = 0
                        s = _2968 + _2986 + 32
                        t = _2968 + ceil32(return_data.size) + 32
                        while idx < _3004:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3774 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3774 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3774]
                        mem[_3774 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3774]
                        mem[_3774 + 64] = stor11
                        require 1 < mem[_3774]
                        require 0 < mem[_3774]
                        if mem[_3774 + 44 len 20] == stor11:
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3774]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _2095, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += ext_call.return_data[64]
                        else:
                            mem[_3774 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3774 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[_3774 + 132] = 64
                            mem[_3774 + 164] = mem[_3774]
                            idx = 0
                            s = _3774 + 32
                            t = _3774 + 196
                            while idx < mem[_3774]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3774 + (32 * mem[_3774]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4529 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4538 = mem[_4529]
                            require mem[_4529] <= test266151307()
                            require _4529 + mem[_4529] + 31 < _4529 + return_data.size
                            _4547 = mem[_4529 + mem[_4529]]
                            require mem[_4529 + mem[_4529]] <= test266151307()
                            require _4529 + ceil32(return_data.size) + (32 * mem[_4529 + mem[_4529]]) + 32 <= test266151307() and (32 * mem[_4529 + mem[_4529]]) + 32 >= 0
                            mem[64] = _4529 + ceil32(return_data.size) + (32 * mem[_4529 + mem[_4529]]) + 32
                            mem[_4529 + ceil32(return_data.size)] = _4547
                            require _4538 + (32 * _4547) + 32 <= return_data.size
                            idx = 0
                            s = _4529 + _4538 + 32
                            t = _4529 + ceil32(return_data.size) + 32
                            while idx < _4547:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4547 - 1 < _4547
                            _4875 = mem[(32 * _4547 - 1) + _4529 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _4547 - 1) + _4529 + ceil32(return_data.size) + 32]
                            mem[mem[64] + 68] = 160
                            _4889 = mem[_3774]
                            mem[mem[64] + 164] = mem[_3774]
                            idx = 0
                            s = _3774 + 32
                            t = mem[64] + 196
                            while idx < _4889:
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4889) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5141 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5150 = mem[_5141]
                            require mem[_5141] <= test266151307()
                            require _5141 + mem[_5141] + 31 < _5141 + return_data.size
                            _5159 = mem[_5141 + mem[_5141]]
                            require mem[_5141 + mem[_5141]] <= test266151307()
                            require _5141 + ceil32(return_data.size) + (32 * mem[_5141 + mem[_5141]]) + 32 <= test266151307() and (32 * mem[_5141 + mem[_5141]]) + 32 >= 0
                            mem[64] = _5141 + ceil32(return_data.size) + (32 * mem[_5141 + mem[_5141]]) + 32
                            mem[_5141 + ceil32(return_data.size)] = _5159
                            require _5150 + (32 * _5159) + 32 <= return_data.size
                            idx = 0
                            s = _5141 + _5150 + 32
                            t = _5141 + ceil32(return_data.size) + 32
                            while idx < _5159:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3774]
                            _5388 = mem[_3774 + 64]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _2095
                            mem[mem[64] + 100] = _4875
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5388), _2095, _4875, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5411] == mem[_5411]
                            require mem[_5411 + 32] == mem[_5411 + 32]
                            require mem[_5411 + 64] == mem[_5411 + 64]
                            if mem[_5411 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5411 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5411 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5411 + 64]
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
    else:
        mem[100] = this.address
        require ext_code.size(stakingContractAddress)
        staticcall stakingContractAddress.earned(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < MIN_TOKENS_TO_REINVEST_BEFORE_DEPOSIT:
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
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.getReward() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 224] = 31
                    mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction underflow'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    mem[ceil32(return_data.size) + 288] = 31
                    mem[ceil32(return_data.size) + 320] = 'SafeMath: subtraction underflow'
                    mem[ceil32(return_data.size) + 352] = 26
                    mem[ceil32(return_data.size) + 384] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] / 2 <= 0:
                        revert with 0, 'amount too low'
                    mem[ceil32(return_data.size) + 416] = 2
                    mem[ceil32(return_data.size) + 448] = rewardTokenAddress
                    mem[ceil32(return_data.size) + 480] = stor10
                    if rewardTokenAddress == stor10:
                        mem[ceil32(return_data.size) + 512] = 2
                        mem[ceil32(return_data.size) + 544] = rewardTokenAddress
                        mem[ceil32(return_data.size) + 576] = stor11
                        if rewardTokenAddress == stor11:
                            mem[ceil32(return_data.size) + 676] = ext_call.return_data[0] / 2
                            mem[ceil32(return_data.size) + 708] = ext_call.return_data[0] / 2
                            mem[ceil32(return_data.size) + 740] = 0
                            mem[ceil32(return_data.size) + 772] = 0
                            mem[ceil32(return_data.size) + 804] = this.address
                            mem[ceil32(return_data.size) + 836] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args stor10, stor11, Mask(255, 1, ext_call.return_data[0]), Mask(255, 1, ext_call.return_data[0]), 0, 0, address(this.address), block.timestamp
                            mem[ceil32(return_data.size) + 608 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 612] = 32
                                mem[(2 * ceil32(return_data.size)) + 644] = 14
                                mem[(2 * ceil32(return_data.size)) + 676] = 'amount too low'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 608
                                   len ceil32(return_data.size) + 100
                            mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 612 len ceil32(return_data.size) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 612] = 32
                                mem[(2 * ceil32(return_data.size)) + 644] = 27
                                mem[(2 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 608
                                   len ceil32(return_data.size) + 100
                            totalDeposits += ext_call.return_data[64]
                            mem[(2 * ceil32(return_data.size)) + 608] = totalDeposits
                            mem[(2 * ceil32(return_data.size)) + 640] = totalSupply
                            emit Reinvest(uint256 rg1, uint256 rg2):
                                          mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64],
                            mem[(2 * ceil32(return_data.size)) + 612] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 644] = this.address
                            mem[(2 * ceil32(return_data.size)) + 676] = arg1
                            require ext_code.size(depositTokenAddress)
                            call depositTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 612 len ceil32(return_data.size) + 96]
                            mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
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
                                   len (5 * ceil32(return_data.size)) + 100
                            if arg1 <= 0:
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 14
                                mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 608
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 612] = arg1
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalSupply:
                                if totalSupply + arg1 >= totalSupply:
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += arg1
                                        mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                        emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                        if totalDeposits + arg1 >= totalDeposits:
                                            totalDeposits += arg1
                                            mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                            emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 27
                                mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 608
                                   len (5 * ceil32(return_data.size)) + 100
                            require totalSupply
                            if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 33
                                mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 708] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 608
                                   len (5 * ceil32(return_data.size)) + 132
                            if not totalSupply * totalDeposits:
                                if totalSupply + arg1 >= totalSupply:
                                    totalSupply += arg1
                                    if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += arg1
                                        mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                        emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                        if totalDeposits + arg1 >= totalDeposits:
                                            totalDeposits += arg1
                                            mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                            emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 612] = 32
                                mem[(4 * ceil32(return_data.size)) + 644] = 27
                                mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 608
                                   len (5 * ceil32(return_data.size)) + 100
                            if not arg1:
                                if totalDeposits <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require totalDeposits
                                if totalSupply + (0 / totalDeposits) >= totalSupply:
                                    totalSupply += 0 / totalDeposits
                                    if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += 0 / totalDeposits
                                        mem[(4 * ceil32(return_data.size)) + 672] = 0 / totalDeposits
                                        emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                        if totalDeposits + arg1 >= totalDeposits:
                                            totalDeposits += arg1
                                            mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                            emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], msg.sender);
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
                                       len (5 * ceil32(return_data.size)) + 132
                                if totalDeposits <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                require totalDeposits
                                if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                    totalSupply += arg1 * totalSupply / totalDeposits
                                    if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                        mem[(4 * ceil32(return_data.size)) + 672] = arg1 * totalSupply / totalDeposits
                                        emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                        if totalDeposits + arg1 >= totalDeposits:
                                            totalDeposits += arg1
                                            mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                            emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], msg.sender);
                            mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 676] = 32
                            mem[(4 * ceil32(return_data.size)) + 708] = 27
                            mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 672
                               len (5 * ceil32(return_data.size)) + 100
                        mem[ceil32(return_data.size) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 612] = ext_call.return_data[0] / 2
                        mem[ceil32(return_data.size) + 644] = 64
                        mem[ceil32(return_data.size) + 676] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 544
                        t = ceil32(return_data.size) + 708
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 708 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 608
                        require return_data.size >= 32
                        _1152 = mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 639 < ceil32(return_data.size) + return_data.size + 608
                        _1199 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608] <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608]) + 640
                        mem[(2 * ceil32(return_data.size)) + 608] = _1199
                        require _1152 + (32 * _1199) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1152 + 640
                        t = (2 * ceil32(return_data.size)) + 640
                        while idx < _1199:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1199 - 1 < _1199
                        _2931 = mem[(32 * _1199 - 1) + (2 * ceil32(return_data.size)) + 640]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] / 2
                        mem[mem[64] + 36] = mem[(32 * _1199 - 1) + (2 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 68] = 160
                        _2987 = mem[ceil32(return_data.size) + 512]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 512]
                        idx = 0
                        s = ceil32(return_data.size) + 544
                        t = mem[64] + 196
                        while idx < _2987:
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
                            args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2987) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3986 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4004 = mem[_3986]
                        require mem[_3986] <= test266151307()
                        require _3986 + mem[_3986] + 31 < _3986 + return_data.size
                        _4022 = mem[_3986 + mem[_3986]]
                        require mem[_3986 + mem[_3986]] <= test266151307()
                        require _3986 + ceil32(return_data.size) + (32 * mem[_3986 + mem[_3986]]) + 32 <= test266151307() and (32 * mem[_3986 + mem[_3986]]) + 32 >= 0
                        mem[64] = _3986 + ceil32(return_data.size) + (32 * mem[_3986 + mem[_3986]]) + 32
                        mem[_3986 + ceil32(return_data.size)] = _4022
                        require _4004 + (32 * _4022) + 32 <= return_data.size
                        idx = 0
                        s = _3986 + _4004 + 32
                        t = _3986 + ceil32(return_data.size) + 32
                        while idx < _4022:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[ceil32(return_data.size) + 416]
                        require 1 < mem[ceil32(return_data.size) + 512]
                        _5255 = mem[ceil32(return_data.size) + 576]
                        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                        mem[mem[64] + 68] = ext_call.return_data[0] / 2
                        mem[mem[64] + 100] = _2931
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5255), Mask(255, 1, ext_call.return_data[0]), _2931, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5508 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5508] == mem[_5508]
                        require mem[_5508 + 32] == mem[_5508 + 32]
                        require mem[_5508 + 64] == mem[_5508 + 64]
                        if mem[_5508 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_5508 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5508 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5508 + 64]
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
                        _5877 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5877] == bool(mem[_5877])
                        if not mem[_5877]:
                            revert with 0, 'transferFrom failed'
                    else:
                        mem[ceil32(return_data.size) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 516] = ext_call.return_data[0] / 2
                        mem[ceil32(return_data.size) + 548] = 64
                        mem[ceil32(return_data.size) + 580] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 448
                        t = ceil32(return_data.size) + 612
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args Mask(255, 1, ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _1153 = mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                        require mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 543 < ceil32(return_data.size) + return_data.size + 512
                        _1200 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512] <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512]) + 544
                        mem[(2 * ceil32(return_data.size)) + 512] = _1200
                        require _1153 + (32 * _1200) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1153 + 544
                        t = (2 * ceil32(return_data.size)) + 544
                        while idx < _1200:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1200 - 1 < _1200
                        _2933 = mem[(32 * _1200 - 1) + (2 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] / 2
                        mem[mem[64] + 36] = _2933
                        mem[mem[64] + 68] = 160
                        _2988 = mem[ceil32(return_data.size) + 416]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 416]
                        idx = 0
                        s = ceil32(return_data.size) + 448
                        t = mem[64] + 196
                        while idx < _2988:
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
                            args Mask(255, 1, ext_call.return_data[0]), _2933, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2988) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3987 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4005 = mem[_3987]
                        require mem[_3987] <= test266151307()
                        require _3987 + mem[_3987] + 31 < _3987 + return_data.size
                        _4023 = mem[_3987 + mem[_3987]]
                        require mem[_3987 + mem[_3987]] <= test266151307()
                        require _3987 + ceil32(return_data.size) + (32 * mem[_3987 + mem[_3987]]) + 32 <= test266151307() and (32 * mem[_3987 + mem[_3987]]) + 32 >= 0
                        mem[64] = _3987 + ceil32(return_data.size) + (32 * mem[_3987 + mem[_3987]]) + 32
                        mem[_3987 + ceil32(return_data.size)] = _4023
                        require _4005 + (32 * _4023) + 32 <= return_data.size
                        idx = 0
                        s = _3987 + _4005 + 32
                        t = _3987 + ceil32(return_data.size) + 32
                        while idx < _4023:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _5238 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_5238 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[ceil32(return_data.size) + 416]
                        require 0 < mem[_5238]
                        mem[_5238 + 32] = mem[ceil32(return_data.size) + 460 len 20]
                        require 1 < mem[_5238]
                        mem[_5238 + 64] = stor11
                        require 1 < mem[_5238]
                        require 0 < mem[_5238]
                        if mem[_5238 + 44 len 20] == stor11:
                            require 1 < mem[ceil32(return_data.size) + 416]
                            require 1 < mem[_5238]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[ceil32(return_data.size) + 480]), stor11, _2933, Mask(255, 1, ext_call.return_data[0]), 0, 0, address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            if ext_call.return_data[64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[64]
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
                            mem[_5238 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_5238 + 100] = ext_call.return_data[0] / 2
                            mem[_5238 + 132] = 64
                            mem[_5238 + 164] = mem[_5238]
                            idx = 0
                            s = _5238 + 32
                            t = _5238 + 196
                            while idx < mem[_5238]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5238 + (32 * mem[_5238]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7362 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7407 = mem[_7362]
                            require mem[_7362] <= test266151307()
                            require _7362 + mem[_7362] + 31 < _7362 + return_data.size
                            _7452 = mem[_7362 + mem[_7362]]
                            require mem[_7362 + mem[_7362]] <= test266151307()
                            require _7362 + ceil32(return_data.size) + (32 * mem[_7362 + mem[_7362]]) + 32 <= test266151307() and (32 * mem[_7362 + mem[_7362]]) + 32 >= 0
                            mem[64] = _7362 + ceil32(return_data.size) + (32 * mem[_7362 + mem[_7362]]) + 32
                            mem[_7362 + ceil32(return_data.size)] = _7452
                            require _7407 + (32 * _7452) + 32 <= return_data.size
                            idx = 0
                            s = _7362 + _7407 + 32
                            t = _7362 + ceil32(return_data.size) + 32
                            while idx < _7452:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _7452 - 1 < _7452
                            _7820 = mem[(32 * _7452 - 1) + _7362 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] / 2
                            mem[mem[64] + 36] = mem[(32 * _7452 - 1) + _7362 + ceil32(return_data.size) + 32]
                            mem[mem[64] + 68] = 160
                            _7830 = mem[_5238]
                            mem[mem[64] + 164] = mem[_5238]
                            idx = 0
                            s = _5238 + 32
                            t = mem[64] + 196
                            while idx < _7830:
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
                                args Mask(255, 1, ext_call.return_data[0]), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7830) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8172 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8181 = mem[_8172]
                            require mem[_8172] <= test266151307()
                            require _8172 + mem[_8172] + 31 < _8172 + return_data.size
                            _8190 = mem[_8172 + mem[_8172]]
                            require mem[_8172 + mem[_8172]] <= test266151307()
                            require _8172 + ceil32(return_data.size) + (32 * mem[_8172 + mem[_8172]]) + 32 <= test266151307() and (32 * mem[_8172 + mem[_8172]]) + 32 >= 0
                            mem[64] = _8172 + ceil32(return_data.size) + (32 * mem[_8172 + mem[_8172]]) + 32
                            mem[_8172 + ceil32(return_data.size)] = _8190
                            require _8181 + (32 * _8190) + 32 <= return_data.size
                            idx = 0
                            s = _8172 + _8181 + 32
                            t = _8172 + ceil32(return_data.size) + 32
                            while idx < _8190:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[ceil32(return_data.size) + 416]
                            require 1 < mem[_5238]
                            _8729 = mem[_5238 + 64]
                            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                            mem[mem[64] + 68] = _2933
                            mem[mem[64] + 100] = _7820
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_8729), _2933, _7820, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8748 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_8748] == mem[_8748]
                            require mem[_8748 + 32] == mem[_8748 + 32]
                            require mem[_8748 + 64] == mem[_8748 + 64]
                            if mem[_8748 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_8748 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_8748 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_8748 + 64]
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
                            _8874 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8874] == bool(mem[_8874])
                            if not mem[_8874]:
                                revert with 0, 'transferFrom failed'
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * REINVEST_REWARD_BIPS / ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 <= 0:
                        mem[ceil32(return_data.size) + 224] = 31
                        mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction underflow'
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[ceil32(return_data.size) + 288] = 31
                        mem[ceil32(return_data.size) + 320] = 'SafeMath: subtraction underflow'
                        if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[ceil32(return_data.size) + 352] = 26
                        mem[ceil32(return_data.size) + 384] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2 <= 0:
                            revert with 0, 'amount too low'
                        mem[ceil32(return_data.size) + 416] = 2
                        mem[ceil32(return_data.size) + 448] = rewardTokenAddress
                        mem[ceil32(return_data.size) + 480] = stor10
                        if rewardTokenAddress == stor10:
                            mem[ceil32(return_data.size) + 512] = 2
                            mem[ceil32(return_data.size) + 544] = rewardTokenAddress
                            mem[ceil32(return_data.size) + 576] = stor11
                            if rewardTokenAddress == stor11:
                                mem[ceil32(return_data.size) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[ceil32(return_data.size) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[ceil32(return_data.size) + 740] = 0
                                mem[ceil32(return_data.size) + 772] = 0
                                mem[ceil32(return_data.size) + 804] = this.address
                                mem[ceil32(return_data.size) + 836] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                                mem[ceil32(return_data.size) + 608 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 612] = 32
                                    mem[(2 * ceil32(return_data.size)) + 644] = 14
                                    mem[(2 * ceil32(return_data.size)) + 676] = 'amount too low'
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 608
                                       len ceil32(return_data.size) + 100
                                mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 612 len ceil32(return_data.size) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 612] = 32
                                    mem[(2 * ceil32(return_data.size)) + 644] = 27
                                    mem[(2 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 608
                                       len ceil32(return_data.size) + 100
                                totalDeposits += ext_call.return_data[64]
                                mem[(2 * ceil32(return_data.size)) + 608] = totalDeposits
                                mem[(2 * ceil32(return_data.size)) + 640] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64],
                                mem[(2 * ceil32(return_data.size)) + 612] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 644] = this.address
                                mem[(2 * ceil32(return_data.size)) + 676] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 612 len ceil32(return_data.size) + 96]
                                mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
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
                                       len (5 * ceil32(return_data.size)) + 100
                                if arg1 <= 0:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 14
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 612] = arg1
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 27
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (5 * ceil32(return_data.size)) + 100
                                require totalSupply
                                if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 33
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (5 * ceil32(return_data.size)) + 132
                                if not totalSupply * totalDeposits:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 27
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (5 * ceil32(return_data.size)) + 100
                                if not arg1:
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (0 / totalDeposits) >= totalSupply:
                                        totalSupply += 0 / totalDeposits
                                        if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += 0 / totalDeposits
                                            mem[(4 * ceil32(return_data.size)) + 672] = 0 / totalDeposits
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], msg.sender);
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
                                           len (5 * ceil32(return_data.size)) + 132
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                        totalSupply += arg1 * totalSupply / totalDeposits
                                        if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                            mem[(4 * ceil32(return_data.size)) + 672] = arg1 * totalSupply / totalDeposits
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 676] = 32
                                mem[(4 * ceil32(return_data.size)) + 708] = 27
                                mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 672
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[ceil32(return_data.size) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[ceil32(return_data.size) + 644] = 64
                            mem[ceil32(return_data.size) + 676] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 544
                            t = ceil32(return_data.size) + 708
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[ceil32(return_data.size) + 708 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 608
                            require return_data.size >= 32
                            _1144 = mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                            require mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < ceil32(return_data.size) + return_data.size + 608
                            _1193 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                            require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                            mem[(2 * ceil32(return_data.size)) + 608] = _1193
                            require _1144 + (32 * _1193) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1144 + 640
                            t = (2 * ceil32(return_data.size)) + 640
                            while idx < _1193:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1193 - 1 < _1193
                            _2923 = mem[(32 * _1193 - 1) + (2 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _1193 - 1) + (2 * ceil32(return_data.size)) + 640]
                            mem[mem[64] + 68] = 160
                            _2983 = mem[ceil32(return_data.size) + 512]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 512]
                            idx = 0
                            s = ceil32(return_data.size) + 544
                            t = mem[64] + 196
                            while idx < _2983:
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2983) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3982 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4000 = mem[_3982]
                            require mem[_3982] <= test266151307()
                            require _3982 + mem[_3982] + 31 < _3982 + return_data.size
                            _4018 = mem[_3982 + mem[_3982]]
                            require mem[_3982 + mem[_3982]] <= test266151307()
                            require _3982 + ceil32(return_data.size) + (32 * mem[_3982 + mem[_3982]]) + 32 <= test266151307() and (32 * mem[_3982 + mem[_3982]]) + 32 >= 0
                            mem[64] = _3982 + ceil32(return_data.size) + (32 * mem[_3982 + mem[_3982]]) + 32
                            mem[_3982 + ceil32(return_data.size)] = _4018
                            require _4000 + (32 * _4018) + 32 <= return_data.size
                            idx = 0
                            s = _3982 + _4000 + 32
                            t = _3982 + ceil32(return_data.size) + 32
                            while idx < _4018:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[ceil32(return_data.size) + 416]
                            require 1 < mem[ceil32(return_data.size) + 512]
                            _5251 = mem[ceil32(return_data.size) + 576]
                            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                            mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 100] = _2923
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5251), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2923, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5506 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5506] == mem[_5506]
                            require mem[_5506 + 32] == mem[_5506 + 32]
                            require mem[_5506 + 64] == mem[_5506 + 64]
                            if mem[_5506 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5506 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5506 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5506 + 64]
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
                            _5875 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5875] == bool(mem[_5875])
                            if not mem[_5875]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[ceil32(return_data.size) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[ceil32(return_data.size) + 548] = 64
                            mem[ceil32(return_data.size) + 580] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 448
                            t = ceil32(return_data.size) + 612
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _1145 = mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                            require mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < ceil32(return_data.size) + return_data.size + 512
                            _1194 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                            require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                            mem[(2 * ceil32(return_data.size)) + 512] = _1194
                            require _1145 + (32 * _1194) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1145 + 544
                            t = (2 * ceil32(return_data.size)) + 544
                            while idx < _1194:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1194 - 1 < _1194
                            _2925 = mem[(32 * _1194 - 1) + (2 * ceil32(return_data.size)) + 544]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _1194 - 1) + (2 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 68] = 160
                            _2984 = mem[ceil32(return_data.size) + 416]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 416]
                            idx = 0
                            s = ceil32(return_data.size) + 448
                            t = mem[64] + 196
                            while idx < _2984:
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2984) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3983 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4001 = mem[_3983]
                            require mem[_3983] <= test266151307()
                            require _3983 + mem[_3983] + 31 < _3983 + return_data.size
                            _4019 = mem[_3983 + mem[_3983]]
                            require mem[_3983 + mem[_3983]] <= test266151307()
                            require _3983 + ceil32(return_data.size) + (32 * mem[_3983 + mem[_3983]]) + 32 <= test266151307() and (32 * mem[_3983 + mem[_3983]]) + 32 >= 0
                            mem[64] = _3983 + ceil32(return_data.size) + (32 * mem[_3983 + mem[_3983]]) + 32
                            mem[_3983 + ceil32(return_data.size)] = _4019
                            require _4001 + (32 * _4019) + 32 <= return_data.size
                            idx = 0
                            s = _3983 + _4001 + 32
                            t = _3983 + ceil32(return_data.size) + 32
                            while idx < _4019:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _5232 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_5232 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[ceil32(return_data.size) + 416]
                            require 0 < mem[_5232]
                            mem[_5232 + 32] = mem[ceil32(return_data.size) + 460 len 20]
                            require 1 < mem[_5232]
                            mem[_5232 + 64] = stor11
                            require 1 < mem[_5232]
                            require 0 < mem[_5232]
                            if mem[_5232 + 44 len 20] == stor11:
                                require 1 < mem[ceil32(return_data.size) + 416]
                                require 1 < mem[_5232]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[ceil32(return_data.size) + 480]), stor11, _2925, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
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
                                mem[_5232 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5232 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[_5232 + 132] = 64
                                mem[_5232 + 164] = mem[_5232]
                                idx = 0
                                s = _5232 + 32
                                t = _5232 + 196
                                while idx < mem[_5232]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _5232 + (32 * mem[_5232]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7360 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7397 = mem[_7360]
                                require mem[_7360] <= test266151307()
                                require _7360 + mem[_7360] + 31 < _7360 + return_data.size
                                _7450 = mem[_7360 + mem[_7360]]
                                require mem[_7360 + mem[_7360]] <= test266151307()
                                require _7360 + ceil32(return_data.size) + (32 * mem[_7360 + mem[_7360]]) + 32 <= test266151307() and (32 * mem[_7360 + mem[_7360]]) + 32 >= 0
                                mem[64] = _7360 + ceil32(return_data.size) + (32 * mem[_7360 + mem[_7360]]) + 32
                                mem[_7360 + ceil32(return_data.size)] = _7450
                                require _7397 + (32 * _7450) + 32 <= return_data.size
                                idx = 0
                                s = _7360 + _7397 + 32
                                t = _7360 + ceil32(return_data.size) + 32
                                while idx < _7450:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _7450 - 1 < _7450
                                _7816 = mem[(32 * _7450 - 1) + _7360 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _7450 - 1) + _7360 + ceil32(return_data.size) + 32]
                                mem[mem[64] + 68] = 160
                                _7828 = mem[_5232]
                                mem[mem[64] + 164] = mem[_5232]
                                idx = 0
                                s = _5232 + 32
                                t = mem[64] + 196
                                while idx < _7828:
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
                                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7828) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8170 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8179 = mem[_8170]
                                require mem[_8170] <= test266151307()
                                require _8170 + mem[_8170] + 31 < _8170 + return_data.size
                                _8188 = mem[_8170 + mem[_8170]]
                                require mem[_8170 + mem[_8170]] <= test266151307()
                                require _8170 + ceil32(return_data.size) + (32 * mem[_8170 + mem[_8170]]) + 32 <= test266151307() and (32 * mem[_8170 + mem[_8170]]) + 32 >= 0
                                mem[64] = _8170 + ceil32(return_data.size) + (32 * mem[_8170 + mem[_8170]]) + 32
                                mem[_8170 + ceil32(return_data.size)] = _8188
                                require _8179 + (32 * _8188) + 32 <= return_data.size
                                idx = 0
                                s = _8170 + _8179 + 32
                                t = _8170 + ceil32(return_data.size) + 32
                                while idx < _8188:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[ceil32(return_data.size) + 416]
                                require 1 < mem[_5232]
                                _8725 = mem[_5232 + 64]
                                mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                                mem[mem[64] + 68] = _2925
                                mem[mem[64] + 100] = _7816
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8725), _2925, _7816, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8746 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8746] == mem[_8746]
                                require mem[_8746 + 32] == mem[_8746 + 32]
                                require mem[_8746 + 64] == mem[_8746 + 64]
                                if mem[_8746 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_8746 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8746 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8746 + 64]
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
                                _8872 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8872] == bool(mem[_8872])
                                if not mem[_8872]:
                                    revert with 0, 'transferFrom failed'
                    else:
                        mem[ceil32(return_data.size) + 228] = msg.sender
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'reinvest fee transfer failed'
                        mem[(2 * ceil32(return_data.size)) + 224] = 31
                        mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[(2 * ceil32(return_data.size)) + 288] = 31
                        mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                        if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[(2 * ceil32(return_data.size)) + 352] = 26
                        mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2 <= 0:
                            revert with 0, 'amount too low'
                        mem[(2 * ceil32(return_data.size)) + 416] = 2
                        mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 480] = stor10
                        if rewardTokenAddress == stor10:
                            mem[(2 * ceil32(return_data.size)) + 512] = 2
                            mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                            mem[(2 * ceil32(return_data.size)) + 576] = stor11
                            if rewardTokenAddress == stor11:
                                mem[(2 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 740] = 0
                                mem[(2 * ceil32(return_data.size)) + 772] = 0
                                mem[(2 * ceil32(return_data.size)) + 804] = this.address
                                mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                                mem[(4 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 32]
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
                                mem[(4 * ceil32(return_data.size)) + 612] = arg1
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (7 * ceil32(return_data.size)) + 32]
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
                            mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                                   args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 608
                            require return_data.size >= 32
                            _1148 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                            _1197 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                            mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                            require _1148 + (32 * _1197) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _1148 + 640
                            t = (4 * ceil32(return_data.size)) + 640
                            while idx < _1197:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1197 - 1 < _1197
                            _2927 = mem[(32 * _1197 - 1) + (4 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _1197 - 1) + (4 * ceil32(return_data.size)) + 640]
                            mem[mem[64] + 68] = 160
                            _2985 = mem[(2 * ceil32(return_data.size)) + 512]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 544
                            t = mem[64] + 196
                            while idx < _2985:
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2985) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3984 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4002 = mem[_3984]
                            require mem[_3984] <= test266151307()
                            require _3984 + mem[_3984] + 31 < _3984 + return_data.size
                            _4020 = mem[_3984 + mem[_3984]]
                            require mem[_3984 + mem[_3984]] <= test266151307()
                            require _3984 + ceil32(return_data.size) + (32 * mem[_3984 + mem[_3984]]) + 32 <= test266151307() and (32 * mem[_3984 + mem[_3984]]) + 32 >= 0
                            mem[64] = _3984 + ceil32(return_data.size) + (32 * mem[_3984 + mem[_3984]]) + 32
                            mem[_3984 + ceil32(return_data.size)] = _4020
                            require _4002 + (32 * _4020) + 32 <= return_data.size
                            idx = 0
                            s = _3984 + _4002 + 32
                            t = _3984 + ceil32(return_data.size) + 32
                            while idx < _4020:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                            _5253 = mem[(2 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 100] = _2927
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5253), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2927, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5507 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5507] == mem[_5507]
                            require mem[_5507 + 32] == mem[_5507 + 32]
                            require mem[_5507 + 64] == mem[_5507 + 64]
                            if mem[_5507 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5507 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5507 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5507 + 64]
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
                            _5876 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5876] == bool(mem[_5876])
                            if not mem[_5876]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                                   args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _1149 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                            _1198 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                            mem[(4 * ceil32(return_data.size)) + 512] = _1198
                            require _1149 + (32 * _1198) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _1149 + 544
                            t = (4 * ceil32(return_data.size)) + 544
                            while idx < _1198:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1198 - 1 < _1198
                            _2929 = mem[(32 * _1198 - 1) + (4 * ceil32(return_data.size)) + 544]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = _2929
                            mem[mem[64] + 68] = 160
                            _2986 = mem[(2 * ceil32(return_data.size)) + 416]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 448
                            t = mem[64] + 196
                            while idx < _2986:
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2929, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2986) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3985 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4003 = mem[_3985]
                            require mem[_3985] <= test266151307()
                            require _3985 + mem[_3985] + 31 < _3985 + return_data.size
                            _4021 = mem[_3985 + mem[_3985]]
                            require mem[_3985 + mem[_3985]] <= test266151307()
                            require _3985 + ceil32(return_data.size) + (32 * mem[_3985 + mem[_3985]]) + 32 <= test266151307() and (32 * mem[_3985 + mem[_3985]]) + 32 >= 0
                            mem[64] = _3985 + ceil32(return_data.size) + (32 * mem[_3985 + mem[_3985]]) + 32
                            mem[_3985 + ceil32(return_data.size)] = _4021
                            require _4003 + (32 * _4021) + 32 <= return_data.size
                            idx = 0
                            s = _3985 + _4003 + 32
                            t = _3985 + ceil32(return_data.size) + 32
                            while idx < _4021:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _5235 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_5235 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_5235]
                            mem[_5235 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_5235]
                            mem[_5235 + 64] = stor11
                            require 1 < mem[_5235]
                            require 0 < mem[_5235]
                            if mem[_5235 + 44 len 20] == stor11:
                                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 1 < mem[_5235]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2929, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
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
                                mem[_5235 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5235 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[_5235 + 132] = 64
                                mem[_5235 + 164] = mem[_5235]
                                idx = 0
                                s = _5235 + 32
                                t = _5235 + 196
                                while idx < mem[_5235]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _5235 + (32 * mem[_5235]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7361 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7402 = mem[_7361]
                                require mem[_7361] <= test266151307()
                                require _7361 + mem[_7361] + 31 < _7361 + return_data.size
                                _7451 = mem[_7361 + mem[_7361]]
                                require mem[_7361 + mem[_7361]] <= test266151307()
                                require _7361 + ceil32(return_data.size) + (32 * mem[_7361 + mem[_7361]]) + 32 <= test266151307() and (32 * mem[_7361 + mem[_7361]]) + 32 >= 0
                                mem[64] = _7361 + ceil32(return_data.size) + (32 * mem[_7361 + mem[_7361]]) + 32
                                mem[_7361 + ceil32(return_data.size)] = _7451
                                require _7402 + (32 * _7451) + 32 <= return_data.size
                                idx = 0
                                s = _7361 + _7402 + 32
                                t = _7361 + ceil32(return_data.size) + 32
                                while idx < _7451:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _7451 - 1 < _7451
                                _7818 = mem[(32 * _7451 - 1) + _7361 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _7451 - 1) + _7361 + ceil32(return_data.size) + 32]
                                mem[mem[64] + 68] = 160
                                _7829 = mem[_5235]
                                mem[mem[64] + 164] = mem[_5235]
                                idx = 0
                                s = _5235 + 32
                                t = mem[64] + 196
                                while idx < _7829:
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
                                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7829) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8171 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8180 = mem[_8171]
                                require mem[_8171] <= test266151307()
                                require _8171 + mem[_8171] + 31 < _8171 + return_data.size
                                _8189 = mem[_8171 + mem[_8171]]
                                require mem[_8171 + mem[_8171]] <= test266151307()
                                require _8171 + ceil32(return_data.size) + (32 * mem[_8171 + mem[_8171]]) + 32 <= test266151307() and (32 * mem[_8171 + mem[_8171]]) + 32 >= 0
                                mem[64] = _8171 + ceil32(return_data.size) + (32 * mem[_8171 + mem[_8171]]) + 32
                                mem[_8171 + ceil32(return_data.size)] = _8189
                                require _8180 + (32 * _8189) + 32 <= return_data.size
                                idx = 0
                                s = _8171 + _8180 + 32
                                t = _8171 + ceil32(return_data.size) + 32
                                while idx < _8189:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 1 < mem[_5235]
                                _8727 = mem[_5235 + 64]
                                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                                mem[mem[64] + 68] = _2929
                                mem[mem[64] + 100] = _7818
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8727), _2929, _7818, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8747 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8747] == mem[_8747]
                                require mem[_8747 + 32] == mem[_8747 + 32]
                                require mem[_8747 + 64] == mem[_8747 + 64]
                                if mem[_8747 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_8747 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8747 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8747 + 64]
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
                                _8873 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8873] == bool(mem[_8873])
                                if not mem[_8873]:
                                    revert with 0, 'transferFrom failed'
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * ADMIN_FEE_BIPS / ext_call.return_data[0] != ADMIN_FEE_BIPS:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 <= 0:
                    if not ext_call.return_data[0]:
                        mem[ceil32(return_data.size) + 160] = 26
                        mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 224] = 31
                        mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction underflow'
                        if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[ceil32(return_data.size) + 288] = 31
                        mem[ceil32(return_data.size) + 320] = 'SafeMath: subtraction underflow'
                        if 0 > ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000):
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[ceil32(return_data.size) + 352] = 26
                        mem[ceil32(return_data.size) + 384] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2 <= 0:
                            revert with 0, 'amount too low'
                        mem[ceil32(return_data.size) + 416] = 2
                        mem[ceil32(return_data.size) + 448] = rewardTokenAddress
                        mem[ceil32(return_data.size) + 480] = stor10
                        if rewardTokenAddress == stor10:
                            mem[ceil32(return_data.size) + 512] = 2
                            mem[ceil32(return_data.size) + 544] = rewardTokenAddress
                            mem[ceil32(return_data.size) + 576] = stor11
                            if rewardTokenAddress == stor11:
                                mem[ceil32(return_data.size) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                                mem[ceil32(return_data.size) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                                mem[ceil32(return_data.size) + 740] = 0
                                mem[ceil32(return_data.size) + 772] = 0
                                mem[ceil32(return_data.size) + 804] = this.address
                                mem[ceil32(return_data.size) + 836] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                                mem[ceil32(return_data.size) + 608 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 612] = 32
                                    mem[(2 * ceil32(return_data.size)) + 644] = 14
                                    mem[(2 * ceil32(return_data.size)) + 676] = 'amount too low'
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 608
                                       len ceil32(return_data.size) + 100
                                mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 612 len ceil32(return_data.size) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                    mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 612] = 32
                                    mem[(2 * ceil32(return_data.size)) + 644] = 27
                                    mem[(2 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 608
                                       len ceil32(return_data.size) + 100
                                totalDeposits += ext_call.return_data[64]
                                mem[(2 * ceil32(return_data.size)) + 608] = totalDeposits
                                mem[(2 * ceil32(return_data.size)) + 640] = totalSupply
                                emit Reinvest(uint256 rg1, uint256 rg2):
                                              mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64],
                                mem[(2 * ceil32(return_data.size)) + 612] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 644] = this.address
                                mem[(2 * ceil32(return_data.size)) + 676] = arg1
                                require ext_code.size(depositTokenAddress)
                                call depositTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 612 len ceil32(return_data.size) + 96]
                                mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
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
                                       len (5 * ceil32(return_data.size)) + 100
                                if arg1 <= 0:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 14
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 612] = arg1
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalSupply:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 27
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (5 * ceil32(return_data.size)) + 100
                                require totalSupply
                                if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 33
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 708] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (5 * ceil32(return_data.size)) + 132
                                if not totalSupply * totalDeposits:
                                    if totalSupply + arg1 >= totalSupply:
                                        totalSupply += arg1
                                        if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1
                                            mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 612] = 32
                                    mem[(4 * ceil32(return_data.size)) + 644] = 27
                                    mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 608
                                       len (5 * ceil32(return_data.size)) + 100
                                if not arg1:
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (0 / totalDeposits) >= totalSupply:
                                        totalSupply += 0 / totalDeposits
                                        if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += 0 / totalDeposits
                                            mem[(4 * ceil32(return_data.size)) + 672] = 0 / totalDeposits
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], msg.sender);
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
                                           len (5 * ceil32(return_data.size)) + 132
                                    if totalDeposits <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    require totalDeposits
                                    if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                        totalSupply += arg1 * totalSupply / totalDeposits
                                        if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                            mem[(4 * ceil32(return_data.size)) + 672] = arg1 * totalSupply / totalDeposits
                                            emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                            if totalDeposits + arg1 >= totalDeposits:
                                                totalDeposits += arg1
                                                mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                                emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], msg.sender);
                                mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 676] = 32
                                mem[(4 * ceil32(return_data.size)) + 708] = 27
                                mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 672
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[ceil32(return_data.size) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                            mem[ceil32(return_data.size) + 644] = 64
                            mem[ceil32(return_data.size) + 676] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 544
                            t = ceil32(return_data.size) + 708
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), Array(len=2, data=mem[ceil32(return_data.size) + 708 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 608
                            require return_data.size >= 32
                            _1127 = mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32
                            require mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 639 < ceil32(return_data.size) + return_data.size + 608
                            _1182 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608] <= test266151307()
                            require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 640
                            mem[(2 * ceil32(return_data.size)) + 608] = _1182
                            require _1127 + (32 * _1182) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1127 + 640
                            t = (2 * ceil32(return_data.size)) + 640
                            while idx < _1182:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1182 - 1 < _1182
                            _2907 = mem[(32 * _1182 - 1) + (2 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _1182 - 1) + (2 * ceil32(return_data.size)) + 640]
                            mem[mem[64] + 68] = 160
                            _2975 = mem[ceil32(return_data.size) + 512]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 512]
                            idx = 0
                            s = ceil32(return_data.size) + 544
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2975) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3974 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3992 = mem[_3974]
                            require mem[_3974] <= test266151307()
                            require _3974 + mem[_3974] + 31 < _3974 + return_data.size
                            _4010 = mem[_3974 + mem[_3974]]
                            require mem[_3974 + mem[_3974]] <= test266151307()
                            require _3974 + ceil32(return_data.size) + (32 * mem[_3974 + mem[_3974]]) + 32 <= test266151307() and (32 * mem[_3974 + mem[_3974]]) + 32 >= 0
                            mem[64] = _3974 + ceil32(return_data.size) + (32 * mem[_3974 + mem[_3974]]) + 32
                            mem[_3974 + ceil32(return_data.size)] = _4010
                            require _3992 + (32 * _4010) + 32 <= return_data.size
                            idx = 0
                            s = _3974 + _3992 + 32
                            t = _3974 + ceil32(return_data.size) + 32
                            while idx < _4010:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[ceil32(return_data.size) + 416]
                            require 1 < mem[ceil32(return_data.size) + 512]
                            _5243 = mem[ceil32(return_data.size) + 576]
                            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                            mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                            mem[mem[64] + 100] = _2907
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5243), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), _2907, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5502 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5502] == mem[_5502]
                            require mem[_5502 + 32] == mem[_5502 + 32]
                            require mem[_5502 + 64] == mem[_5502 + 64]
                            if mem[_5502 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5502 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5502 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5502 + 64]
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
                            _5871 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5871] == bool(mem[_5871])
                            if not mem[_5871]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[ceil32(return_data.size) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                            mem[ceil32(return_data.size) + 548] = 64
                            mem[ceil32(return_data.size) + 580] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 448
                            t = ceil32(return_data.size) + 612
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), Array(len=2, data=mem[ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _1128 = mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32
                            require mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 543 < ceil32(return_data.size) + return_data.size + 512
                            _1183 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]
                            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512] <= test266151307()
                            require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 544
                            mem[(2 * ceil32(return_data.size)) + 512] = _1183
                            require _1128 + (32 * _1183) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1128 + 544
                            t = (2 * ceil32(return_data.size)) + 544
                            while idx < _1183:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1183 - 1 < _1183
                            _2909 = mem[(32 * _1183 - 1) + (2 * ceil32(return_data.size)) + 544]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _1183 - 1) + (2 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 68] = 160
                            _2976 = mem[ceil32(return_data.size) + 416]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 416]
                            idx = 0
                            s = ceil32(return_data.size) + 448
                            t = mem[64] + 196
                            while idx < _2976:
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2976) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3975 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3993 = mem[_3975]
                            require mem[_3975] <= test266151307()
                            require _3975 + mem[_3975] + 31 < _3975 + return_data.size
                            _4011 = mem[_3975 + mem[_3975]]
                            require mem[_3975 + mem[_3975]] <= test266151307()
                            require _3975 + ceil32(return_data.size) + (32 * mem[_3975 + mem[_3975]]) + 32 <= test266151307() and (32 * mem[_3975 + mem[_3975]]) + 32 >= 0
                            mem[64] = _3975 + ceil32(return_data.size) + (32 * mem[_3975 + mem[_3975]]) + 32
                            mem[_3975 + ceil32(return_data.size)] = _4011
                            require _3993 + (32 * _4011) + 32 <= return_data.size
                            idx = 0
                            s = _3975 + _3993 + 32
                            t = _3975 + ceil32(return_data.size) + 32
                            while idx < _4011:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _5220 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_5220 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[ceil32(return_data.size) + 416]
                            require 0 < mem[_5220]
                            mem[_5220 + 32] = mem[ceil32(return_data.size) + 460 len 20]
                            require 1 < mem[_5220]
                            mem[_5220 + 64] = stor11
                            require 1 < mem[_5220]
                            require 0 < mem[_5220]
                            if mem[_5220 + 44 len 20] == stor11:
                                require 1 < mem[ceil32(return_data.size) + 416]
                                require 1 < mem[_5220]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[ceil32(return_data.size) + 480]), stor11, _2909, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
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
                                mem[_5220 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5220 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                                mem[_5220 + 132] = 64
                                mem[_5220 + 164] = mem[_5220]
                                idx = 0
                                s = _5220 + 32
                                t = _5220 + 196
                                while idx < mem[_5220]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _5220 + (32 * mem[_5220]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7356 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7377 = mem[_7356]
                                require mem[_7356] <= test266151307()
                                require _7356 + mem[_7356] + 31 < _7356 + return_data.size
                                _7446 = mem[_7356 + mem[_7356]]
                                require mem[_7356 + mem[_7356]] <= test266151307()
                                require _7356 + ceil32(return_data.size) + (32 * mem[_7356 + mem[_7356]]) + 32 <= test266151307() and (32 * mem[_7356 + mem[_7356]]) + 32 >= 0
                                mem[64] = _7356 + ceil32(return_data.size) + (32 * mem[_7356 + mem[_7356]]) + 32
                                mem[_7356 + ceil32(return_data.size)] = _7446
                                require _7377 + (32 * _7446) + 32 <= return_data.size
                                idx = 0
                                s = _7356 + _7377 + 32
                                t = _7356 + ceil32(return_data.size) + 32
                                while idx < _7446:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _7446 - 1 < _7446
                                _7808 = mem[(32 * _7446 - 1) + _7356 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                                mem[mem[64] + 36] = _7808
                                mem[mem[64] + 68] = 160
                                _7824 = mem[_5220]
                                mem[mem[64] + 164] = mem[_5220]
                                idx = 0
                                s = _5220 + 32
                                t = mem[64] + 196
                                while idx < _7824:
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
                                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), _7808, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7824) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8166 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8175 = mem[_8166]
                                require mem[_8166] <= test266151307()
                                require _8166 + mem[_8166] + 31 < _8166 + return_data.size
                                _8184 = mem[_8166 + mem[_8166]]
                                require mem[_8166 + mem[_8166]] <= test266151307()
                                require _8166 + ceil32(return_data.size) + (32 * mem[_8166 + mem[_8166]]) + 32 <= test266151307() and (32 * mem[_8166 + mem[_8166]]) + 32 >= 0
                                mem[64] = _8166 + ceil32(return_data.size) + (32 * mem[_8166 + mem[_8166]]) + 32
                                mem[_8166 + ceil32(return_data.size)] = _8184
                                require _8175 + (32 * _8184) + 32 <= return_data.size
                                idx = 0
                                s = _8166 + _8175 + 32
                                t = _8166 + ceil32(return_data.size) + 32
                                while idx < _8184:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[ceil32(return_data.size) + 416]
                                require 1 < mem[_5220]
                                _8717 = mem[_5220 + 64]
                                mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                                mem[mem[64] + 68] = _2909
                                mem[mem[64] + 100] = _7808
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8717), _2909, _7808, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8742 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8742] == mem[_8742]
                                require mem[_8742 + 32] == mem[_8742 + 32]
                                require mem[_8742 + 64] == mem[_8742 + 64]
                                if mem[_8742 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_8742 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8742 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8742 + 64]
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
                                _8868 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8868] == bool(mem[_8868])
                                if not mem[_8868]:
                                    revert with 0, 'transferFrom failed'
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * REINVEST_REWARD_BIPS / ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[ceil32(return_data.size) + 160] = 26
                        mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 <= 0:
                            mem[ceil32(return_data.size) + 224] = 31
                            mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction underflow'
                            if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[ceil32(return_data.size) + 288] = 31
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: subtraction underflow'
                            if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 > ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000):
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[ceil32(return_data.size) + 352] = 26
                            mem[ceil32(return_data.size) + 384] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2 <= 0:
                                revert with 0, 'amount too low'
                            mem[ceil32(return_data.size) + 416] = 2
                            mem[ceil32(return_data.size) + 448] = rewardTokenAddress
                            mem[ceil32(return_data.size) + 480] = stor10
                            if rewardTokenAddress == stor10:
                                mem[ceil32(return_data.size) + 512] = 2
                                mem[ceil32(return_data.size) + 544] = rewardTokenAddress
                                mem[ceil32(return_data.size) + 576] = stor11
                                if rewardTokenAddress == stor11:
                                    mem[ceil32(return_data.size) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[ceil32(return_data.size) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[ceil32(return_data.size) + 740] = 0
                                    mem[ceil32(return_data.size) + 772] = 0
                                    mem[ceil32(return_data.size) + 804] = this.address
                                    mem[ceil32(return_data.size) + 836] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                                    mem[ceil32(return_data.size) + 608 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 612] = 32
                                        mem[(2 * ceil32(return_data.size)) + 644] = 14
                                        mem[(2 * ceil32(return_data.size)) + 676] = 'amount too low'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 608
                                           len ceil32(return_data.size) + 100
                                    mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 612 len ceil32(return_data.size) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + ext_call.return_data[64] < totalDeposits:
                                        mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 612] = 32
                                        mem[(2 * ceil32(return_data.size)) + 644] = 27
                                        mem[(2 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 608
                                           len ceil32(return_data.size) + 100
                                    totalDeposits += ext_call.return_data[64]
                                    mem[(2 * ceil32(return_data.size)) + 608] = totalDeposits
                                    mem[(2 * ceil32(return_data.size)) + 640] = totalSupply
                                    emit Reinvest(uint256 rg1, uint256 rg2):
                                                  mem[(2 * ceil32(return_data.size)) + 608 len ceil32(return_data.size) + 64],
                                    mem[(2 * ceil32(return_data.size)) + 612] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 644] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 676] = arg1
                                    require ext_code.size(depositTokenAddress)
                                    call depositTokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 612 len ceil32(return_data.size) + 96]
                                    mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
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
                                           len (5 * ceil32(return_data.size)) + 100
                                    if arg1 <= 0:
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 14
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'amount too low'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (5 * ceil32(return_data.size)) + 100
                                    mem[(4 * ceil32(return_data.size)) + 612] = arg1
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalSupply:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                    emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 27
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (5 * ceil32(return_data.size)) + 100
                                    require totalSupply
                                    if totalSupply * totalDeposits / totalSupply != totalDeposits:
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 33
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: multiplication overflo'
                                        mem[(4 * ceil32(return_data.size)) + 708] = 'w'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (5 * ceil32(return_data.size)) + 132
                                    if not totalSupply * totalDeposits:
                                        if totalSupply + arg1 >= totalSupply:
                                            totalSupply += arg1
                                            if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1
                                                mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                emit Transfer(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(4 * ceil32(return_data.size)) + 608] = arg1
                                                    emit Deposit(mem[(4 * ceil32(return_data.size)) + 608 len (5 * ceil32(return_data.size)) + 32], msg.sender);
                                        mem[(4 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 612] = 32
                                        mem[(4 * ceil32(return_data.size)) + 644] = 27
                                        mem[(4 * ceil32(return_data.size)) + 676] = 'SafeMath: addition overflow'
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 608
                                           len (5 * ceil32(return_data.size)) + 100
                                    if not arg1:
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (0 / totalDeposits) >= totalSupply:
                                            totalSupply += 0 / totalDeposits
                                            if balanceOf[address(msg.sender)] + (0 / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += 0 / totalDeposits
                                                mem[(4 * ceil32(return_data.size)) + 672] = 0 / totalDeposits
                                                emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                                    emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], msg.sender);
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
                                               len (5 * ceil32(return_data.size)) + 132
                                        if totalDeposits <= 0:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        require totalDeposits
                                        if totalSupply + (arg1 * totalSupply / totalDeposits) >= totalSupply:
                                            totalSupply += arg1 * totalSupply / totalDeposits
                                            if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) >= balanceOf[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                                                mem[(4 * ceil32(return_data.size)) + 672] = arg1 * totalSupply / totalDeposits
                                                emit Transfer(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], 0, msg.sender);
                                                if totalDeposits + arg1 >= totalDeposits:
                                                    totalDeposits += arg1
                                                    mem[(4 * ceil32(return_data.size)) + 672] = arg1
                                                    emit Deposit(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], msg.sender);
                                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                                    mem[(4 * ceil32(return_data.size)) + 708] = 27
                                    mem[(4 * ceil32(return_data.size)) + 740] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 672
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[ceil32(return_data.size) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[ceil32(return_data.size) + 644] = 64
                                mem[ceil32(return_data.size) + 676] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 544
                                t = ceil32(return_data.size) + 708
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[ceil32(return_data.size) + 708 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 608
                                require return_data.size >= 32
                                _1119 = mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                                require mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < ceil32(return_data.size) + return_data.size + 608
                                _1178 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                                require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                                mem[(2 * ceil32(return_data.size)) + 608] = _1178
                                require _1119 + (32 * _1178) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1119 + 640
                                t = (2 * ceil32(return_data.size)) + 640
                                while idx < _1178:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _1178 - 1 < _1178
                                _2899 = mem[(32 * _1178 - 1) + (2 * ceil32(return_data.size)) + 640]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _1178 - 1) + (2 * ceil32(return_data.size)) + 640]
                                mem[mem[64] + 68] = 160
                                _2971 = mem[ceil32(return_data.size) + 512]
                                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 512]
                                idx = 0
                                s = ceil32(return_data.size) + 544
                                t = mem[64] + 196
                                while idx < _2971:
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
                                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2971) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3970 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3988 = mem[_3970]
                                require mem[_3970] <= test266151307()
                                require _3970 + mem[_3970] + 31 < _3970 + return_data.size
                                _4006 = mem[_3970 + mem[_3970]]
                                require mem[_3970 + mem[_3970]] <= test266151307()
                                require _3970 + ceil32(return_data.size) + (32 * mem[_3970 + mem[_3970]]) + 32 <= test266151307() and (32 * mem[_3970 + mem[_3970]]) + 32 >= 0
                                mem[64] = _3970 + ceil32(return_data.size) + (32 * mem[_3970 + mem[_3970]]) + 32
                                mem[_3970 + ceil32(return_data.size)] = _4006
                                require _3988 + (32 * _4006) + 32 <= return_data.size
                                idx = 0
                                s = _3970 + _3988 + 32
                                t = _3970 + ceil32(return_data.size) + 32
                                while idx < _4006:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[ceil32(return_data.size) + 416]
                                require 1 < mem[ceil32(return_data.size) + 512]
                                _5239 = mem[ceil32(return_data.size) + 576]
                                mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                                mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 100] = _2899
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_5239), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2899, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5500 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5500] == mem[_5500]
                                require mem[_5500 + 32] == mem[_5500 + 32]
                                require mem[_5500 + 64] == mem[_5500 + 64]
                                if mem[_5500 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_5500 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5500 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5500 + 64]
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
                                _5869 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5869] == bool(mem[_5869])
                                if not mem[_5869]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[ceil32(return_data.size) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[ceil32(return_data.size) + 548] = 64
                                mem[ceil32(return_data.size) + 580] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 448
                                t = ceil32(return_data.size) + 612
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[ceil32(return_data.size) + 612 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 512
                                require return_data.size >= 32
                                _1120 = mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                                require mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < ceil32(return_data.size) + return_data.size + 512
                                _1179 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                                require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                                mem[(2 * ceil32(return_data.size)) + 512] = _1179
                                require _1120 + (32 * _1179) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1120 + 544
                                t = (2 * ceil32(return_data.size)) + 544
                                while idx < _1179:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _1179 - 1 < _1179
                                _2901 = mem[(32 * _1179 - 1) + (2 * ceil32(return_data.size)) + 544]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _1179 - 1) + (2 * ceil32(return_data.size)) + 544]
                                mem[mem[64] + 68] = 160
                                _2972 = mem[ceil32(return_data.size) + 416]
                                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 416]
                                idx = 0
                                s = ceil32(return_data.size) + 448
                                t = mem[64] + 196
                                while idx < _2972:
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
                                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2972) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3971 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3989 = mem[_3971]
                                require mem[_3971] <= test266151307()
                                require _3971 + mem[_3971] + 31 < _3971 + return_data.size
                                _4007 = mem[_3971 + mem[_3971]]
                                require mem[_3971 + mem[_3971]] <= test266151307()
                                require _3971 + ceil32(return_data.size) + (32 * mem[_3971 + mem[_3971]]) + 32 <= test266151307() and (32 * mem[_3971 + mem[_3971]]) + 32 >= 0
                                mem[64] = _3971 + ceil32(return_data.size) + (32 * mem[_3971 + mem[_3971]]) + 32
                                mem[_3971 + ceil32(return_data.size)] = _4007
                                require _3989 + (32 * _4007) + 32 <= return_data.size
                                idx = 0
                                s = _3971 + _3989 + 32
                                t = _3971 + ceil32(return_data.size) + 32
                                while idx < _4007:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _5214 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_5214 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[ceil32(return_data.size) + 416]
                                require 0 < mem[_5214]
                                mem[_5214 + 32] = mem[ceil32(return_data.size) + 460 len 20]
                                require 1 < mem[_5214]
                                mem[_5214 + 64] = stor11
                                require 1 < mem[_5214]
                                require 0 < mem[_5214]
                                if mem[_5214 + 44 len 20] == stor11:
                                    require 1 < mem[ceil32(return_data.size) + 416]
                                    require 1 < mem[_5214]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[ceil32(return_data.size) + 480]), stor11, _2901, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64]
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
                                    mem[_5214 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_5214 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[_5214 + 132] = 64
                                    mem[_5214 + 164] = mem[_5214]
                                    idx = 0
                                    s = _5214 + 32
                                    t = _5214 + 196
                                    while idx < mem[_5214]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _5214 + (32 * mem[_5214]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7354 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7367 = mem[_7354]
                                    require mem[_7354] <= test266151307()
                                    require _7354 + mem[_7354] + 31 < _7354 + return_data.size
                                    _7444 = mem[_7354 + mem[_7354]]
                                    require mem[_7354 + mem[_7354]] <= test266151307()
                                    require _7354 + ceil32(return_data.size) + (32 * mem[_7354 + mem[_7354]]) + 32 <= test266151307() and (32 * mem[_7354 + mem[_7354]]) + 32 >= 0
                                    mem[64] = _7354 + ceil32(return_data.size) + (32 * mem[_7354 + mem[_7354]]) + 32
                                    mem[_7354 + ceil32(return_data.size)] = _7444
                                    require _7367 + (32 * _7444) + 32 <= return_data.size
                                    idx = 0
                                    s = _7354 + _7367 + 32
                                    t = _7354 + ceil32(return_data.size) + 32
                                    while idx < _7444:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7444 - 1 < _7444
                                    _7804 = mem[(32 * _7444 - 1) + _7354 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[mem[64] + 36] = mem[(32 * _7444 - 1) + _7354 + ceil32(return_data.size) + 32]
                                    mem[mem[64] + 68] = 160
                                    _7822 = mem[_5214]
                                    mem[mem[64] + 164] = mem[_5214]
                                    idx = 0
                                    s = _5214 + 32
                                    t = mem[64] + 196
                                    while idx < _7822:
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
                                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7822) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8164 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8173 = mem[_8164]
                                    require mem[_8164] <= test266151307()
                                    require _8164 + mem[_8164] + 31 < _8164 + return_data.size
                                    _8182 = mem[_8164 + mem[_8164]]
                                    require mem[_8164 + mem[_8164]] <= test266151307()
                                    require _8164 + ceil32(return_data.size) + (32 * mem[_8164 + mem[_8164]]) + 32 <= test266151307() and (32 * mem[_8164 + mem[_8164]]) + 32 >= 0
                                    mem[64] = _8164 + ceil32(return_data.size) + (32 * mem[_8164 + mem[_8164]]) + 32
                                    mem[_8164 + ceil32(return_data.size)] = _8182
                                    require _8173 + (32 * _8182) + 32 <= return_data.size
                                    idx = 0
                                    s = _8164 + _8173 + 32
                                    t = _8164 + ceil32(return_data.size) + 32
                                    while idx < _8182:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require 1 < mem[ceil32(return_data.size) + 416]
                                    require 1 < mem[_5214]
                                    _8713 = mem[_5214 + 64]
                                    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                                    mem[mem[64] + 68] = _2901
                                    mem[mem[64] + 100] = _7804
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8713), _2901, _7804, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8740 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8740] == mem[_8740]
                                    require mem[_8740 + 32] == mem[_8740 + 32]
                                    require mem[_8740 + 64] == mem[_8740 + 64]
                                    if mem[_8740 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_8740 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8740 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8740 + 64]
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
                                    _8866 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8866] == bool(mem[_8866])
                                    if not mem[_8866]:
                                        revert with 0, 'transferFrom failed'
                        else:
                            mem[ceil32(return_data.size) + 228] = msg.sender
                            mem[ceil32(return_data.size) + 260] = ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'reinvest fee transfer failed'
                            mem[(2 * ceil32(return_data.size)) + 224] = 31
                            mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                            if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(2 * ceil32(return_data.size)) + 288] = 31
                            mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                            if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 > ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000):
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(2 * ceil32(return_data.size)) + 352] = 26
                            mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2 <= 0:
                                revert with 0, 'amount too low'
                            mem[(2 * ceil32(return_data.size)) + 416] = 2
                            mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                            mem[(2 * ceil32(return_data.size)) + 480] = stor10
                            if rewardTokenAddress == stor10:
                                mem[(2 * ceil32(return_data.size)) + 512] = 2
                                mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                                mem[(2 * ceil32(return_data.size)) + 576] = stor11
                                if rewardTokenAddress == stor11:
                                    mem[(2 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[(2 * ceil32(return_data.size)) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[(2 * ceil32(return_data.size)) + 740] = 0
                                    mem[(2 * ceil32(return_data.size)) + 772] = 0
                                    mem[(2 * ceil32(return_data.size)) + 804] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                                    mem[(4 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 32]
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
                                    mem[(4 * ceil32(return_data.size)) + 612] = arg1
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 612 len (7 * ceil32(return_data.size)) + 32]
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
                                mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                                       args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 608
                                require return_data.size >= 32
                                _1123 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                                _1180 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                                mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                                require _1123 + (32 * _1180) + 32 <= return_data.size
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + _1123 + 640
                                t = (4 * ceil32(return_data.size)) + 640
                                while idx < _1180:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _1180 - 1 < _1180
                                _2903 = mem[(32 * _1180 - 1) + (4 * ceil32(return_data.size)) + 640]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _1180 - 1) + (4 * ceil32(return_data.size)) + 640]
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
                                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2973) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3972 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3990 = mem[_3972]
                                require mem[_3972] <= test266151307()
                                require _3972 + mem[_3972] + 31 < _3972 + return_data.size
                                _4008 = mem[_3972 + mem[_3972]]
                                require mem[_3972 + mem[_3972]] <= test266151307()
                                require _3972 + ceil32(return_data.size) + (32 * mem[_3972 + mem[_3972]]) + 32 <= test266151307() and (32 * mem[_3972 + mem[_3972]]) + 32 >= 0
                                mem[64] = _3972 + ceil32(return_data.size) + (32 * mem[_3972 + mem[_3972]]) + 32
                                mem[_3972 + ceil32(return_data.size)] = _4008
                                require _3990 + (32 * _4008) + 32 <= return_data.size
                                idx = 0
                                s = _3972 + _3990 + 32
                                t = _3972 + ceil32(return_data.size) + 32
                                while idx < _4008:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                                _5241 = mem[(2 * ceil32(return_data.size)) + 576]
                                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                                mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 100] = _2903
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_5241), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2903, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5501 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5501] == mem[_5501]
                                require mem[_5501 + 32] == mem[_5501 + 32]
                                require mem[_5501 + 64] == mem[_5501 + 64]
                                if mem[_5501 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_5501 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5501 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5501 + 64]
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
                                _5870 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5870] == bool(mem[_5870])
                                if not mem[_5870]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                                       args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 512
                                require return_data.size >= 32
                                _1124 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                                _1181 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                                mem[(4 * ceil32(return_data.size)) + 512] = _1181
                                require _1124 + (32 * _1181) + 32 <= return_data.size
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + _1124 + 544
                                t = (4 * ceil32(return_data.size)) + 544
                                while idx < _1181:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _1181 - 1 < _1181
                                _2905 = mem[(32 * _1181 - 1) + (4 * ceil32(return_data.size)) + 544]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _1181 - 1) + (4 * ceil32(return_data.size)) + 544]
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
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2974) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3973 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3991 = mem[_3973]
                                require mem[_3973] <= test266151307()
                                require _3973 + mem[_3973] + 31 < _3973 + return_data.size
                                _4009 = mem[_3973 + mem[_3973]]
                                require mem[_3973 + mem[_3973]] <= test266151307()
                                require _3973 + ceil32(return_data.size) + (32 * mem[_3973 + mem[_3973]]) + 32 <= test266151307() and (32 * mem[_3973 + mem[_3973]]) + 32 >= 0
                                mem[64] = _3973 + ceil32(return_data.size) + (32 * mem[_3973 + mem[_3973]]) + 32
                                mem[_3973 + ceil32(return_data.size)] = _4009
                                require _3991 + (32 * _4009) + 32 <= return_data.size
                                idx = 0
                                s = _3973 + _3991 + 32
                                t = _3973 + ceil32(return_data.size) + 32
                                while idx < _4009:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _5217 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_5217 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_5217]
                                mem[_5217 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_5217]
                                mem[_5217 + 64] = stor11
                                require 1 < mem[_5217]
                                require 0 < mem[_5217]
                                if mem[_5217 + 44 len 20] == stor11:
                                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_5217]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2905, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64]
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
                                    mem[_5217 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_5217 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[_5217 + 132] = 64
                                    mem[_5217 + 164] = mem[_5217]
                                    idx = 0
                                    s = _5217 + 32
                                    t = _5217 + 196
                                    while idx < mem[_5217]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _5217 + (32 * mem[_5217]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7355 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7372 = mem[_7355]
                                    require mem[_7355] <= test266151307()
                                    require _7355 + mem[_7355] + 31 < _7355 + return_data.size
                                    _7445 = mem[_7355 + mem[_7355]]
                                    require mem[_7355 + mem[_7355]] <= test266151307()
                                    require _7355 + ceil32(return_data.size) + (32 * mem[_7355 + mem[_7355]]) + 32 <= test266151307() and (32 * mem[_7355 + mem[_7355]]) + 32 >= 0
                                    mem[64] = _7355 + ceil32(return_data.size) + (32 * mem[_7355 + mem[_7355]]) + 32
                                    mem[_7355 + ceil32(return_data.size)] = _7445
                                    require _7372 + (32 * _7445) + 32 <= return_data.size
                                    idx = 0
                                    s = _7355 + _7372 + 32
                                    t = _7355 + ceil32(return_data.size) + 32
                                    while idx < _7445:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7445 - 1 < _7445
                                    _7806 = mem[(32 * _7445 - 1) + _7355 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[mem[64] + 36] = mem[(32 * _7445 - 1) + _7355 + ceil32(return_data.size) + 32]
                                    mem[mem[64] + 68] = 160
                                    _7823 = mem[_5217]
                                    mem[mem[64] + 164] = mem[_5217]
                                    idx = 0
                                    s = _5217 + 32
                                    t = mem[64] + 196
                                    while idx < _7823:
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
                                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7823) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8165 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8174 = mem[_8165]
                                    require mem[_8165] <= test266151307()
                                    require _8165 + mem[_8165] + 31 < _8165 + return_data.size
                                    _8183 = mem[_8165 + mem[_8165]]
                                    require mem[_8165 + mem[_8165]] <= test266151307()
                                    require _8165 + ceil32(return_data.size) + (32 * mem[_8165 + mem[_8165]]) + 32 <= test266151307() and (32 * mem[_8165 + mem[_8165]]) + 32 >= 0
                                    mem[64] = _8165 + ceil32(return_data.size) + (32 * mem[_8165 + mem[_8165]]) + 32
                                    mem[_8165 + ceil32(return_data.size)] = _8183
                                    require _8174 + (32 * _8183) + 32 <= return_data.size
                                    idx = 0
                                    s = _8165 + _8174 + 32
                                    t = _8165 + ceil32(return_data.size) + 32
                                    while idx < _8183:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_5217]
                                    _8715 = mem[_5217 + 64]
                                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                                    mem[mem[64] + 68] = _2905
                                    mem[mem[64] + 100] = _7806
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8715), _2905, _7806, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8741 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8741] == mem[_8741]
                                    require mem[_8741 + 32] == mem[_8741 + 32]
                                    require mem[_8741 + 64] == mem[_8741 + 64]
                                    if mem[_8741 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_8741 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8741 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8741 + 64]
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
                                    _8867 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8867] == bool(mem[_8867])
                                    if not mem[_8867]:
                                        revert with 0, 'transferFrom failed'
                else:
                    mem[ceil32(return_data.size) + 164] = owner
                    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000
                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'admin fee transfer failed'
                    if not ext_call.return_data[0]:
                        mem[(2 * ceil32(return_data.size)) + 160] = 26
                        mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                        mem[(2 * ceil32(return_data.size)) + 224] = 31
                        mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                        if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[(2 * ceil32(return_data.size)) + 288] = 31
                        mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                        if 0 > ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000):
                            revert with 0, 'SafeMath: subtraction underflow', 0
                        mem[(2 * ceil32(return_data.size)) + 352] = 26
                        mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2 <= 0:
                            revert with 0, 'amount too low'
                        mem[(2 * ceil32(return_data.size)) + 416] = 2
                        mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 480] = stor10
                        if rewardTokenAddress == stor10:
                            mem[(2 * ceil32(return_data.size)) + 512] = 2
                            mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                            mem[(2 * ceil32(return_data.size)) + 576] = stor11
                            if rewardTokenAddress == stor11:
                                mem[(2 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                                mem[(2 * ceil32(return_data.size)) + 740] = 0
                                mem[(2 * ceil32(return_data.size)) + 772] = 0
                                mem[(2 * ceil32(return_data.size)) + 804] = this.address
                                mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                                mem[(4 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 32]
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
                                mem[(4 * ceil32(return_data.size)) + 612] = arg1
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 612 len (7 * ceil32(return_data.size)) + 32]
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
                            mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
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
                                   args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 608
                            require return_data.size >= 32
                            _1140 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                            _1191 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 640
                            mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]
                            require _1140 + (32 * _1191) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _1140 + 640
                            t = (4 * ceil32(return_data.size)) + 640
                            while idx < _1191:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1191 - 1 < _1191
                            _2919 = mem[(32 * _1191 - 1) + (4 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _1191 - 1) + (4 * ceil32(return_data.size)) + 640]
                            mem[mem[64] + 68] = 160
                            _2981 = mem[(2 * ceil32(return_data.size)) + 512]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 544
                            t = mem[64] + 196
                            while idx < _2981:
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2981) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3980 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3998 = mem[_3980]
                            require mem[_3980] <= test266151307()
                            require _3980 + mem[_3980] + 31 < _3980 + return_data.size
                            _4016 = mem[_3980 + mem[_3980]]
                            require mem[_3980 + mem[_3980]] <= test266151307()
                            require _3980 + ceil32(return_data.size) + (32 * mem[_3980 + mem[_3980]]) + 32 <= test266151307() and (32 * mem[_3980 + mem[_3980]]) + 32 >= 0
                            mem[64] = _3980 + ceil32(return_data.size) + (32 * mem[_3980 + mem[_3980]]) + 32
                            mem[_3980 + ceil32(return_data.size)] = _4016
                            require _3998 + (32 * _4016) + 32 <= return_data.size
                            idx = 0
                            s = _3980 + _3998 + 32
                            t = _3980 + ceil32(return_data.size) + 32
                            while idx < _4016:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                            _5249 = mem[(2 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                            mem[mem[64] + 100] = _2919
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5249), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), _2919, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5505 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5505] == mem[_5505]
                            require mem[_5505 + 32] == mem[_5505 + 32]
                            require mem[_5505 + 64] == mem[_5505 + 64]
                            if mem[_5505 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5505 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5505 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5505 + 64]
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
                            _5874 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5874] == bool(mem[_5874])
                            if not mem[_5874]:
                                revert with 0, 'transferFrom failed'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
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
                                   args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _1141 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                            _1192 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 544
                            mem[(4 * ceil32(return_data.size)) + 512] = _1192
                            require _1141 + (32 * _1192) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _1141 + 544
                            t = (4 * ceil32(return_data.size)) + 544
                            while idx < _1192:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1192 - 1 < _1192
                            _2921 = mem[(32 * _1192 - 1) + (4 * ceil32(return_data.size)) + 544]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _1192 - 1) + (4 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 68] = 160
                            _2982 = mem[(2 * ceil32(return_data.size)) + 416]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 448
                            t = mem[64] + 196
                            while idx < _2982:
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2982) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3981 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3999 = mem[_3981]
                            require mem[_3981] <= test266151307()
                            require _3981 + mem[_3981] + 31 < _3981 + return_data.size
                            _4017 = mem[_3981 + mem[_3981]]
                            require mem[_3981 + mem[_3981]] <= test266151307()
                            require _3981 + ceil32(return_data.size) + (32 * mem[_3981 + mem[_3981]]) + 32 <= test266151307() and (32 * mem[_3981 + mem[_3981]]) + 32 >= 0
                            mem[64] = _3981 + ceil32(return_data.size) + (32 * mem[_3981 + mem[_3981]]) + 32
                            mem[_3981 + ceil32(return_data.size)] = _4017
                            require _3999 + (32 * _4017) + 32 <= return_data.size
                            idx = 0
                            s = _3981 + _3999 + 32
                            t = _3981 + ceil32(return_data.size) + 32
                            while idx < _4017:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _5229 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_5229 + 32 len 64] = call.data[calldata.size len 64]
                            require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_5229]
                            mem[_5229 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_5229]
                            mem[_5229 + 64] = stor11
                            require 1 < mem[_5229]
                            require 0 < mem[_5229]
                            if mem[_5229 + 44 len 20] == stor11:
                                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 1 < mem[_5229]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2921, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                if ext_call.return_data[64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[64]
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
                                mem[_5229 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5229 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                                mem[_5229 + 132] = 64
                                mem[_5229 + 164] = mem[_5229]
                                idx = 0
                                s = _5229 + 32
                                t = _5229 + 196
                                while idx < mem[_5229]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _5229 + (32 * mem[_5229]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7359 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7392 = mem[_7359]
                                require mem[_7359] <= test266151307()
                                require _7359 + mem[_7359] + 31 < _7359 + return_data.size
                                _7449 = mem[_7359 + mem[_7359]]
                                require mem[_7359 + mem[_7359]] <= test266151307()
                                require _7359 + ceil32(return_data.size) + (32 * mem[_7359 + mem[_7359]]) + 32 <= test266151307() and (32 * mem[_7359 + mem[_7359]]) + 32 >= 0
                                mem[64] = _7359 + ceil32(return_data.size) + (32 * mem[_7359 + mem[_7359]]) + 32
                                mem[_7359 + ceil32(return_data.size)] = _7449
                                require _7392 + (32 * _7449) + 32 <= return_data.size
                                idx = 0
                                s = _7359 + _7392 + 32
                                t = _7359 + ceil32(return_data.size) + 32
                                while idx < _7449:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _7449 - 1 < _7449
                                _7814 = mem[(32 * _7449 - 1) + _7359 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _7449 - 1) + _7359 + ceil32(return_data.size) + 32]
                                mem[mem[64] + 68] = 160
                                _7827 = mem[_5229]
                                mem[mem[64] + 164] = mem[_5229]
                                idx = 0
                                s = _5229 + 32
                                t = mem[64] + 196
                                while idx < _7827:
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
                                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7827) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8169 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8178 = mem[_8169]
                                require mem[_8169] <= test266151307()
                                require _8169 + mem[_8169] + 31 < _8169 + return_data.size
                                _8187 = mem[_8169 + mem[_8169]]
                                require mem[_8169 + mem[_8169]] <= test266151307()
                                require _8169 + ceil32(return_data.size) + (32 * mem[_8169 + mem[_8169]]) + 32 <= test266151307() and (32 * mem[_8169 + mem[_8169]]) + 32 >= 0
                                mem[64] = _8169 + ceil32(return_data.size) + (32 * mem[_8169 + mem[_8169]]) + 32
                                mem[_8169 + ceil32(return_data.size)] = _8187
                                require _8178 + (32 * _8187) + 32 <= return_data.size
                                idx = 0
                                s = _8169 + _8178 + 32
                                t = _8169 + ceil32(return_data.size) + 32
                                while idx < _8187:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 1 < mem[_5229]
                                _8723 = mem[_5229 + 64]
                                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                                mem[mem[64] + 68] = _2921
                                mem[mem[64] + 100] = _7814
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8723), _2921, _7814, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8745 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8745] == mem[_8745]
                                require mem[_8745 + 32] == mem[_8745 + 32]
                                require mem[_8745 + 64] == mem[_8745 + 64]
                                if mem[_8745 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_8745 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8745 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8745 + 64]
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
                                _8871 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8871] == bool(mem[_8871])
                                if not mem[_8871]:
                                    revert with 0, 'transferFrom failed'
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * REINVEST_REWARD_BIPS / ext_call.return_data[0] != REINVEST_REWARD_BIPS:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(2 * ceil32(return_data.size)) + 160] = 26
                        mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 <= 0:
                            mem[(2 * ceil32(return_data.size)) + 224] = 31
                            mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                            if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(2 * ceil32(return_data.size)) + 288] = 31
                            mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                            if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 > ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000):
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(2 * ceil32(return_data.size)) + 352] = 26
                            mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2 <= 0:
                                revert with 0, 'amount too low'
                            mem[(2 * ceil32(return_data.size)) + 416] = 2
                            mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                            mem[(2 * ceil32(return_data.size)) + 480] = stor10
                            if rewardTokenAddress == stor10:
                                mem[(2 * ceil32(return_data.size)) + 512] = 2
                                mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                                mem[(2 * ceil32(return_data.size)) + 576] = stor11
                                if rewardTokenAddress == stor11:
                                    mem[(2 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[(2 * ceil32(return_data.size)) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[(2 * ceil32(return_data.size)) + 740] = 0
                                    mem[(2 * ceil32(return_data.size)) + 772] = 0
                                    mem[(2 * ceil32(return_data.size)) + 804] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                                    mem[(4 * ceil32(return_data.size)) + 612] = ext_call.return_data[64]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 612 len (5 * ceil32(return_data.size)) + 32]
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
                                    mem[(4 * ceil32(return_data.size)) + 612] = arg1
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 612 len (7 * ceil32(return_data.size)) + 32]
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
                                mem[(2 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                                       args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 708 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 608
                                require return_data.size >= 32
                                _1131 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                                _1186 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                                mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                                require _1131 + (32 * _1186) + 32 <= return_data.size
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + _1131 + 640
                                t = (4 * ceil32(return_data.size)) + 640
                                while idx < _1186:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _1186 - 1 < _1186
                                _2911 = mem[(32 * _1186 - 1) + (4 * ceil32(return_data.size)) + 640]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _1186 - 1) + (4 * ceil32(return_data.size)) + 640]
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
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2977) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3976 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3994 = mem[_3976]
                                require mem[_3976] <= test266151307()
                                require _3976 + mem[_3976] + 31 < _3976 + return_data.size
                                _4012 = mem[_3976 + mem[_3976]]
                                require mem[_3976 + mem[_3976]] <= test266151307()
                                require _3976 + ceil32(return_data.size) + (32 * mem[_3976 + mem[_3976]]) + 32 <= test266151307() and (32 * mem[_3976 + mem[_3976]]) + 32 >= 0
                                mem[64] = _3976 + ceil32(return_data.size) + (32 * mem[_3976 + mem[_3976]]) + 32
                                mem[_3976 + ceil32(return_data.size)] = _4012
                                require _3994 + (32 * _4012) + 32 <= return_data.size
                                idx = 0
                                s = _3976 + _3994 + 32
                                t = _3976 + ceil32(return_data.size) + 32
                                while idx < _4012:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                                _5245 = mem[(2 * ceil32(return_data.size)) + 576]
                                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                                mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 100] = _2911
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_5245), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2911, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5503 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5503] == mem[_5503]
                                require mem[_5503 + 32] == mem[_5503 + 32]
                                require mem[_5503 + 64] == mem[_5503 + 64]
                                if mem[_5503 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_5503 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5503 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5503 + 64]
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
                                _5872 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5872] == bool(mem[_5872])
                                if not mem[_5872]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[(2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                                       args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 612 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 512
                                require return_data.size >= 32
                                _1132 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                                _1187 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                                mem[(4 * ceil32(return_data.size)) + 512] = _1187
                                require _1132 + (32 * _1187) + 32 <= return_data.size
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + _1132 + 544
                                t = (4 * ceil32(return_data.size)) + 544
                                while idx < _1187:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _1187 - 1 < _1187
                                _2913 = mem[(32 * _1187 - 1) + (4 * ceil32(return_data.size)) + 544]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _1187 - 1) + (4 * ceil32(return_data.size)) + 544]
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
                                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2978) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3977 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3995 = mem[_3977]
                                require mem[_3977] <= test266151307()
                                require _3977 + mem[_3977] + 31 < _3977 + return_data.size
                                _4013 = mem[_3977 + mem[_3977]]
                                require mem[_3977 + mem[_3977]] <= test266151307()
                                require _3977 + ceil32(return_data.size) + (32 * mem[_3977 + mem[_3977]]) + 32 <= test266151307() and (32 * mem[_3977 + mem[_3977]]) + 32 >= 0
                                mem[64] = _3977 + ceil32(return_data.size) + (32 * mem[_3977 + mem[_3977]]) + 32
                                mem[_3977 + ceil32(return_data.size)] = _4013
                                require _3995 + (32 * _4013) + 32 <= return_data.size
                                idx = 0
                                s = _3977 + _3995 + 32
                                t = _3977 + ceil32(return_data.size) + 32
                                while idx < _4013:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _5223 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_5223 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_5223]
                                mem[_5223 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_5223]
                                mem[_5223 + 64] = stor11
                                require 1 < mem[_5223]
                                require 0 < mem[_5223]
                                if mem[_5223 + 44 len 20] == stor11:
                                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_5223]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2913, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64]
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
                                    mem[_5223 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_5223 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[_5223 + 132] = 64
                                    mem[_5223 + 164] = mem[_5223]
                                    idx = 0
                                    s = _5223 + 32
                                    t = _5223 + 196
                                    while idx < mem[_5223]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _5223 + (32 * mem[_5223]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7357 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7382 = mem[_7357]
                                    require mem[_7357] <= test266151307()
                                    require _7357 + mem[_7357] + 31 < _7357 + return_data.size
                                    _7447 = mem[_7357 + mem[_7357]]
                                    require mem[_7357 + mem[_7357]] <= test266151307()
                                    require _7357 + ceil32(return_data.size) + (32 * mem[_7357 + mem[_7357]]) + 32 <= test266151307() and (32 * mem[_7357 + mem[_7357]]) + 32 >= 0
                                    mem[64] = _7357 + ceil32(return_data.size) + (32 * mem[_7357 + mem[_7357]]) + 32
                                    mem[_7357 + ceil32(return_data.size)] = _7447
                                    require _7382 + (32 * _7447) + 32 <= return_data.size
                                    idx = 0
                                    s = _7357 + _7382 + 32
                                    t = _7357 + ceil32(return_data.size) + 32
                                    while idx < _7447:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7447 - 1 < _7447
                                    _7810 = mem[(32 * _7447 - 1) + _7357 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[mem[64] + 36] = mem[(32 * _7447 - 1) + _7357 + ceil32(return_data.size) + 32]
                                    mem[mem[64] + 68] = 160
                                    _7825 = mem[_5223]
                                    mem[mem[64] + 164] = mem[_5223]
                                    idx = 0
                                    s = _5223 + 32
                                    t = mem[64] + 196
                                    while idx < _7825:
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
                                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7825) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8167 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8176 = mem[_8167]
                                    require mem[_8167] <= test266151307()
                                    require _8167 + mem[_8167] + 31 < _8167 + return_data.size
                                    _8185 = mem[_8167 + mem[_8167]]
                                    require mem[_8167 + mem[_8167]] <= test266151307()
                                    require _8167 + ceil32(return_data.size) + (32 * mem[_8167 + mem[_8167]]) + 32 <= test266151307() and (32 * mem[_8167 + mem[_8167]]) + 32 >= 0
                                    mem[64] = _8167 + ceil32(return_data.size) + (32 * mem[_8167 + mem[_8167]]) + 32
                                    mem[_8167 + ceil32(return_data.size)] = _8185
                                    require _8176 + (32 * _8185) + 32 <= return_data.size
                                    idx = 0
                                    s = _8167 + _8176 + 32
                                    t = _8167 + ceil32(return_data.size) + 32
                                    while idx < _8185:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_5223]
                                    _8719 = mem[_5223 + 64]
                                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                                    mem[mem[64] + 68] = _2913
                                    mem[mem[64] + 100] = _7810
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8719), _2913, _7810, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8743 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8743] == mem[_8743]
                                    require mem[_8743 + 32] == mem[_8743 + 32]
                                    require mem[_8743 + 64] == mem[_8743 + 64]
                                    if mem[_8743 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_8743 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8743 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8743 + 64]
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
                                    _8869 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8869] == bool(mem[_8869])
                                    if not mem[_8869]:
                                        revert with 0, 'transferFrom failed'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 228] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'reinvest fee transfer failed'
                            mem[(4 * ceil32(return_data.size)) + 224] = 31
                            mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction underflow'
                            if ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 31
                            mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction underflow'
                            if ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000 > ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000):
                                revert with 0, 'SafeMath: subtraction underflow', 0
                            mem[(4 * ceil32(return_data.size)) + 352] = 26
                            mem[(4 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2 <= 0:
                                revert with 0, 'amount too low'
                            mem[(4 * ceil32(return_data.size)) + 416] = 2
                            mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                            mem[(4 * ceil32(return_data.size)) + 480] = stor10
                            if rewardTokenAddress == stor10:
                                mem[(4 * ceil32(return_data.size)) + 512] = 2
                                mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                                mem[(4 * ceil32(return_data.size)) + 576] = stor11
                                if rewardTokenAddress == stor11:
                                    mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[(4 * ceil32(return_data.size)) + 708] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[(4 * ceil32(return_data.size)) + 740] = 0
                                    mem[(4 * ceil32(return_data.size)) + 772] = 0
                                    mem[(4 * ceil32(return_data.size)) + 804] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 836] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args stor10, stor11, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                                    mem[(4 * ceil32(return_data.size)) + 608 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low', mem[(6 * ceil32(return_data.size)) + 708 len 9 * ceil32(return_data.size)]
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64], mem[(6 * ceil32(return_data.size)) + 644 len 9 * ceil32(return_data.size)]
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
                                    mem[(8 * ceil32(return_data.size)) + 612] = arg1
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 612 len (13 * ceil32(return_data.size)) + 32]
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
                                mem[(4 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                                       args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 708 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 608
                                require return_data.size >= 32
                                _1136 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                                _1189 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                                mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                                require _1136 + (32 * _1189) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _1136 + 640
                                t = (6 * ceil32(return_data.size)) + 640
                                while idx < _1189:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _1189 - 1 < _1189
                                _2915 = mem[(32 * _1189 - 1) + (6 * ceil32(return_data.size)) + 640]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _1189 - 1) + (6 * ceil32(return_data.size)) + 640]
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
                                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[(32 * _1189 - 1) + (6 * ceil32(return_data.size)) + 640], Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3978 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3996 = mem[_3978]
                                require mem[_3978] <= test266151307()
                                require _3978 + mem[_3978] + 31 < _3978 + return_data.size
                                _4014 = mem[_3978 + mem[_3978]]
                                require mem[_3978 + mem[_3978]] <= test266151307()
                                require _3978 + ceil32(return_data.size) + (32 * mem[_3978 + mem[_3978]]) + 32 <= test266151307() and (32 * mem[_3978 + mem[_3978]]) + 32 >= 0
                                mem[64] = _3978 + ceil32(return_data.size) + (32 * mem[_3978 + mem[_3978]]) + 32
                                mem[_3978 + ceil32(return_data.size)] = _4014
                                require _3996 + (32 * _4014) + 32 <= return_data.size
                                idx = 0
                                s = _3978 + _3996 + 32
                                t = _3978 + ceil32(return_data.size) + 32
                                while idx < _4014:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                                _5247 = mem[(4 * ceil32(return_data.size)) + 576]
                                mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                                mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 100] = _2915
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_5247), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2915, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5504 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5504] == mem[_5504]
                                require mem[_5504 + 32] == mem[_5504 + 32]
                                require mem[_5504 + 64] == mem[_5504 + 64]
                                if mem[_5504 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.stake(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args mem[_5504 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5504 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5504 + 64]
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
                                _5873 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5873] == bool(mem[_5873])
                                if not mem[_5873]:
                                    revert with 0, 'transferFrom failed'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                                       args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 612 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 512
                                require return_data.size >= 32
                                _1137 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                                _1190 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                                mem[(6 * ceil32(return_data.size)) + 512] = _1190
                                require _1137 + (32 * _1190) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _1137 + 544
                                t = (6 * ceil32(return_data.size)) + 544
                                while idx < _1190:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _1190 - 1 < _1190
                                _2917 = mem[(32 * _1190 - 1) + (6 * ceil32(return_data.size)) + 544]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _1190 - 1) + (6 * ceil32(return_data.size)) + 544]
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
                                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[(32 * _1190 - 1) + (6 * ceil32(return_data.size)) + 544], Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3979 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3997 = mem[_3979]
                                require mem[_3979] <= test266151307()
                                require _3979 + mem[_3979] + 31 < _3979 + return_data.size
                                _4015 = mem[_3979 + mem[_3979]]
                                require mem[_3979 + mem[_3979]] <= test266151307()
                                require _3979 + ceil32(return_data.size) + (32 * mem[_3979 + mem[_3979]]) + 32 <= test266151307() and (32 * mem[_3979 + mem[_3979]]) + 32 >= 0
                                mem[64] = _3979 + ceil32(return_data.size) + (32 * mem[_3979 + mem[_3979]]) + 32
                                mem[_3979 + ceil32(return_data.size)] = _4015
                                require _3997 + (32 * _4015) + 32 <= return_data.size
                                idx = 0
                                s = _3979 + _3997 + 32
                                t = _3979 + ceil32(return_data.size) + 32
                                while idx < _4015:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _5226 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_5226 + 32 len 64] = call.data[calldata.size len 64]
                                require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_5226]
                                mem[_5226 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_5226]
                                mem[_5226 + 64] = stor11
                                require 1 < mem[_5226]
                                require 0 < mem[_5226]
                                if mem[_5226 + 44 len 20] == stor11:
                                    require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_5226]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _2917, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    require ext_call.return_data[32] == ext_call.return_data[32]
                                    require ext_call.return_data[64] == ext_call.return_data[64]
                                    if ext_call.return_data[64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[64]
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
                                    mem[_5226 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_5226 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[_5226 + 132] = 64
                                    mem[_5226 + 164] = mem[_5226]
                                    idx = 0
                                    s = _5226 + 32
                                    t = _5226 + 196
                                    while idx < mem[_5226]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _5226 + (32 * mem[_5226]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7358 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7387 = mem[_7358]
                                    require mem[_7358] <= test266151307()
                                    require _7358 + mem[_7358] + 31 < _7358 + return_data.size
                                    _7448 = mem[_7358 + mem[_7358]]
                                    require mem[_7358 + mem[_7358]] <= test266151307()
                                    require _7358 + ceil32(return_data.size) + (32 * mem[_7358 + mem[_7358]]) + 32 <= test266151307() and (32 * mem[_7358 + mem[_7358]]) + 32 >= 0
                                    mem[64] = _7358 + ceil32(return_data.size) + (32 * mem[_7358 + mem[_7358]]) + 32
                                    mem[_7358 + ceil32(return_data.size)] = _7448
                                    require _7387 + (32 * _7448) + 32 <= return_data.size
                                    idx = 0
                                    s = _7358 + _7387 + 32
                                    t = _7358 + ceil32(return_data.size) + 32
                                    while idx < _7448:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7448 - 1 < _7448
                                    _7812 = mem[(32 * _7448 - 1) + _7358 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                                    mem[mem[64] + 36] = mem[(32 * _7448 - 1) + _7358 + ceil32(return_data.size) + 32]
                                    mem[mem[64] + 68] = 160
                                    _7826 = mem[_5226]
                                    mem[mem[64] + 164] = mem[_5226]
                                    idx = 0
                                    s = _5226 + 32
                                    t = mem[64] + 196
                                    while idx < _7826:
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
                                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), mem[mem[64] + 36], 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7826) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8168 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8177 = mem[_8168]
                                    require mem[_8168] <= test266151307()
                                    require _8168 + mem[_8168] + 31 < _8168 + return_data.size
                                    _8186 = mem[_8168 + mem[_8168]]
                                    require mem[_8168 + mem[_8168]] <= test266151307()
                                    require _8168 + ceil32(return_data.size) + (32 * mem[_8168 + mem[_8168]]) + 32 <= test266151307() and (32 * mem[_8168 + mem[_8168]]) + 32 >= 0
                                    mem[64] = _8168 + ceil32(return_data.size) + (32 * mem[_8168 + mem[_8168]]) + 32
                                    mem[_8168 + ceil32(return_data.size)] = _8186
                                    require _8177 + (32 * _8186) + 32 <= return_data.size
                                    idx = 0
                                    s = _8168 + _8177 + 32
                                    t = _8168 + ceil32(return_data.size) + 32
                                    while idx < _8186:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require 1 < mem[_5226]
                                    _8721 = mem[_5226 + 64]
                                    mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                                    mem[mem[64] + 68] = _2917
                                    mem[mem[64] + 100] = _7812
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8721), _2917, _7812, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8744 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8744] == mem[_8744]
                                    require mem[_8744 + 32] == mem[_8744 + 32]
                                    require mem[_8744 + 64] == mem[_8744 + 64]
                                    if mem[_8744 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.stake(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args mem[_8744 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8744 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8744 + 64]
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
                                    _8870 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8870] == bool(mem[_8870])
                                    if not mem[_8870]:
                                        revert with 0, 'transferFrom failed'
    if arg1 <= 0:
        revert with 0, 'amount too low'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.stake(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
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
