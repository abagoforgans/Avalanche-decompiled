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
address routerAddress;
address lpTokenAddress;
address stor10;
address stor11;
address rewardTokenAddress;
address stakingContractAddress;
uint256 MIN_TOKENS_TO_REINVEST;
uint256 REINVEST_REWARD_BIPS;
uint256 ADMIN_FEE_BIPS;

function name() payable {
    return name[0 len name.length].field_0
}

function ADMIN_FEE_BIPS() payable {
    return ADMIN_FEE_BIPS
}

function totalSupply() payable {
    return totalSupply
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

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalDeposits < totalSupply:
        revert with 0, 'deposit failed'
    require ext_code.size(lpTokenAddress)
    call lpTokenAddress.0x23b872dd with:
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
    emit Deposit(msg.sender, arg1);
}

function depositWithPermit(uint256 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require ext_code.size(lpTokenAddress)
    call lpTokenAddress.0xd505accf with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalDeposits < totalSupply:
        revert with 0, 'deposit failed'
    require ext_code.size(lpTokenAddress)
    call lpTokenAddress.0x23b872dd with:
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
    emit Deposit(msg.sender, arg1);
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
                    require ext_code.size(lpTokenAddress)
                    call lpTokenAddress.0xa9059cbb with:
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
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (arg1 * totalDeposits / totalSupply)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(lpTokenAddress)
                    call lpTokenAddress.0xa9059cbb with:
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
                _1087 = mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 639 < ceil32(return_data.size) + return_data.size + 608
                _1126 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608]) + 32 >= 0
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 608]) + 640
                mem[(2 * ceil32(return_data.size)) + 608] = _1126
                require _1087 + (32 * _1126) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _1087 + 640
                t = (2 * ceil32(return_data.size)) + 640
                while idx < _1126:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _1126 - 1 < _1126
                _2118 = mem[(32 * _1126 - 1) + (2 * ceil32(return_data.size)) + 640]
                _2119 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                mem[mem[64] + 36] = _2118
                mem[mem[64] + 68] = 160
                _2138 = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 512]
                idx = 0
                s = ceil32(return_data.size) + 544
                t = mem[64] + 196
                while idx < _2138:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_2119 + 100] = this.address
                mem[_2119 + 132] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2119 + (32 * _2138) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2984 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3002 = mem[_2984]
                require mem[_2984] <= test266151307()
                require _2984 + mem[_2984] + 31 < _2984 + return_data.size
                _3020 = mem[_2984 + mem[_2984]]
                require mem[_2984 + mem[_2984]] <= test266151307()
                require _2984 + ceil32(return_data.size) + (32 * mem[_2984 + mem[_2984]]) + 32 <= test266151307() and (32 * mem[_2984 + mem[_2984]]) + 32 >= 0
                mem[64] = _2984 + ceil32(return_data.size) + (32 * mem[_2984 + mem[_2984]]) + 32
                mem[_2984 + ceil32(return_data.size)] = _3020
                require _3002 + (32 * _3020) + 32 <= return_data.size
                idx = 0
                s = _2984 + _3002 + 32
                t = _2984 + ceil32(return_data.size) + 32
                while idx < _3020:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 1 < mem[ceil32(return_data.size) + 416]
                require 1 < mem[ceil32(return_data.size) + 512]
                _3812 = mem[ceil32(return_data.size) + 576]
                mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                mem[mem[64] + 68] = ext_call.return_data[0] / 2
                mem[mem[64] + 100] = _2118
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_3812), Mask(255, 1, ext_call.return_data[0]), _2118, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4065 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_4065] == mem[_4065]
                require mem[_4065 + 32] == mem[_4065 + 32]
                require mem[_4065 + 64] == mem[_4065 + 64]
                if mem[_4065 + 64] <= 0:
                    revert with 0, 'amount too low'
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_4065 + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalDeposits + mem[_4065 + 64] < totalDeposits:
                    revert with 0, 'SafeMath: addition overflow'
                totalDeposits += mem[_4065 + 64]
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
                _1088 = mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 543 < ceil32(return_data.size) + return_data.size + 512
                _1127 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512]) + 32 >= 0
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 512]) + 544
                mem[(2 * ceil32(return_data.size)) + 512] = _1127
                require _1088 + (32 * _1127) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _1088 + 544
                t = (2 * ceil32(return_data.size)) + 544
                while idx < _1127:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _1127 - 1 < _1127
                _2120 = mem[(32 * _1127 - 1) + (2 * ceil32(return_data.size)) + 544]
                _2121 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0] / 2
                mem[mem[64] + 36] = _2120
                mem[mem[64] + 68] = 160
                _2139 = mem[ceil32(return_data.size) + 416]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 416]
                idx = 0
                s = ceil32(return_data.size) + 448
                t = mem[64] + 196
                while idx < _2139:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_2121 + 100] = this.address
                mem[_2121 + 132] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2121 + (32 * _2139) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2985 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3003 = mem[_2985]
                require mem[_2985] <= test266151307()
                require _2985 + mem[_2985] + 31 < _2985 + return_data.size
                _3021 = mem[_2985 + mem[_2985]]
                require mem[_2985 + mem[_2985]] <= test266151307()
                require _2985 + ceil32(return_data.size) + (32 * mem[_2985 + mem[_2985]]) + 32 <= test266151307() and (32 * mem[_2985 + mem[_2985]]) + 32 >= 0
                mem[64] = _2985 + ceil32(return_data.size) + (32 * mem[_2985 + mem[_2985]]) + 32
                mem[_2985 + ceil32(return_data.size)] = _3021
                require _3003 + (32 * _3021) + 32 <= return_data.size
                idx = 0
                s = _2985 + _3003 + 32
                t = _2985 + ceil32(return_data.size) + 32
                while idx < _3021:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3795 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3795 + 32 len 64] = call.data[calldata.size len 64]
                require 0 < mem[ceil32(return_data.size) + 416]
                require 0 < mem[_3795]
                mem[_3795 + 32] = mem[ceil32(return_data.size) + 460 len 20]
                require 1 < mem[_3795]
                mem[_3795 + 64] = stor11
                require 1 < mem[_3795]
                require 0 < mem[_3795]
                if mem[_3795 + 44 len 20] == stor11:
                    require 1 < mem[ceil32(return_data.size) + 416]
                    require 1 < mem[_3795]
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(mem[ceil32(return_data.size) + 480]), stor11, _2120, Mask(255, 1, ext_call.return_data[0]), 0, 0, address(this.address), block.timestamp
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
                    mem[_3795 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3795 + 100] = ext_call.return_data[0] / 2
                    mem[_3795 + 132] = 64
                    mem[_3795 + 164] = mem[_3795]
                    idx = 0
                    s = _3795 + 32
                    t = _3795 + 196
                    while idx < mem[_3795]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3795 + (32 * mem[_3795]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4542 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4551 = mem[_4542]
                    require mem[_4542] <= test266151307()
                    require _4542 + mem[_4542] + 31 < _4542 + return_data.size
                    _4560 = mem[_4542 + mem[_4542]]
                    require mem[_4542 + mem[_4542]] <= test266151307()
                    require _4542 + ceil32(return_data.size) + (32 * mem[_4542 + mem[_4542]]) + 32 <= test266151307() and (32 * mem[_4542 + mem[_4542]]) + 32 >= 0
                    mem[64] = _4542 + ceil32(return_data.size) + (32 * mem[_4542 + mem[_4542]]) + 32
                    mem[_4542 + ceil32(return_data.size)] = _4560
                    require _4551 + (32 * _4560) + 32 <= return_data.size
                    idx = 0
                    s = _4542 + _4551 + 32
                    t = _4542 + ceil32(return_data.size) + 32
                    while idx < _4560:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4560 - 1 < _4560
                    _4892 = mem[(32 * _4560 - 1) + _4542 + ceil32(return_data.size) + 32]
                    _4893 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] / 2
                    mem[mem[64] + 36] = _4892
                    mem[mem[64] + 68] = 160
                    _4902 = mem[_3795]
                    mem[mem[64] + 164] = mem[_3795]
                    idx = 0
                    s = _3795 + 32
                    t = mem[64] + 196
                    while idx < _4902:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4893 + 100] = this.address
                    mem[_4893 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4893 + (32 * _4902) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5154 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5163 = mem[_5154]
                    require mem[_5154] <= test266151307()
                    require _5154 + mem[_5154] + 31 < _5154 + return_data.size
                    _5172 = mem[_5154 + mem[_5154]]
                    require mem[_5154 + mem[_5154]] <= test266151307()
                    require _5154 + ceil32(return_data.size) + (32 * mem[_5154 + mem[_5154]]) + 32 <= test266151307() and (32 * mem[_5154 + mem[_5154]]) + 32 >= 0
                    mem[64] = _5154 + ceil32(return_data.size) + (32 * mem[_5154 + mem[_5154]]) + 32
                    mem[_5154 + ceil32(return_data.size)] = _5172
                    require _5163 + (32 * _5172) + 32 <= return_data.size
                    idx = 0
                    s = _5154 + _5163 + 32
                    t = _5154 + ceil32(return_data.size) + 32
                    while idx < _5172:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[ceil32(return_data.size) + 416]
                    require 1 < mem[_3795]
                    _5405 = mem[_3795 + 64]
                    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                    mem[mem[64] + 68] = _2120
                    mem[mem[64] + 100] = _4892
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_5405), _2120, _4892, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_5424] == mem[_5424]
                    require mem[_5424 + 32] == mem[_5424 + 32]
                    require mem[_5424 + 64] == mem[_5424 + 64]
                    if mem[_5424 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_5424 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_5424 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_5424 + 64]
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
                    _1079 = mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                    require mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < ceil32(return_data.size) + return_data.size + 608
                    _1122 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                    mem[(2 * ceil32(return_data.size)) + 608] = _1122
                    require _1079 + (32 * _1122) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _1079 + 640
                    t = (2 * ceil32(return_data.size)) + 640
                    while idx < _1122:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1122 - 1 < _1122
                    _2110 = mem[(32 * _1122 - 1) + (2 * ceil32(return_data.size)) + 640]
                    _2111 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[mem[64] + 36] = _2110
                    mem[mem[64] + 68] = 160
                    _2134 = mem[ceil32(return_data.size) + 512]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 512]
                    idx = 0
                    s = ceil32(return_data.size) + 544
                    t = mem[64] + 196
                    while idx < _2134:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2111 + 100] = this.address
                    mem[_2111 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2111 + (32 * _2134) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2980 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2998 = mem[_2980]
                    require mem[_2980] <= test266151307()
                    require _2980 + mem[_2980] + 31 < _2980 + return_data.size
                    _3016 = mem[_2980 + mem[_2980]]
                    require mem[_2980 + mem[_2980]] <= test266151307()
                    require _2980 + ceil32(return_data.size) + (32 * mem[_2980 + mem[_2980]]) + 32 <= test266151307() and (32 * mem[_2980 + mem[_2980]]) + 32 >= 0
                    mem[64] = _2980 + ceil32(return_data.size) + (32 * mem[_2980 + mem[_2980]]) + 32
                    mem[_2980 + ceil32(return_data.size)] = _3016
                    require _2998 + (32 * _3016) + 32 <= return_data.size
                    idx = 0
                    s = _2980 + _2998 + 32
                    t = _2980 + ceil32(return_data.size) + 32
                    while idx < _3016:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[ceil32(return_data.size) + 416]
                    require 1 < mem[ceil32(return_data.size) + 512]
                    _3808 = mem[ceil32(return_data.size) + 576]
                    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                    mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[mem[64] + 100] = _2110
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3808), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2110, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_4063] == mem[_4063]
                    require mem[_4063 + 32] == mem[_4063 + 32]
                    require mem[_4063 + 64] == mem[_4063 + 64]
                    if mem[_4063 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_4063 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_4063 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_4063 + 64]
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
                    _1080 = mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                    require mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < ceil32(return_data.size) + return_data.size + 512
                    _1123 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                    mem[(2 * ceil32(return_data.size)) + 512] = _1123
                    require _1080 + (32 * _1123) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _1080 + 544
                    t = (2 * ceil32(return_data.size)) + 544
                    while idx < _1123:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1123 - 1 < _1123
                    _2112 = mem[(32 * _1123 - 1) + (2 * ceil32(return_data.size)) + 544]
                    _2113 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[mem[64] + 36] = _2112
                    mem[mem[64] + 68] = 160
                    _2135 = mem[ceil32(return_data.size) + 416]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 416]
                    idx = 0
                    s = ceil32(return_data.size) + 448
                    t = mem[64] + 196
                    while idx < _2135:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2113 + 100] = this.address
                    mem[_2113 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2113 + (32 * _2135) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2981 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2999 = mem[_2981]
                    require mem[_2981] <= test266151307()
                    require _2981 + mem[_2981] + 31 < _2981 + return_data.size
                    _3017 = mem[_2981 + mem[_2981]]
                    require mem[_2981 + mem[_2981]] <= test266151307()
                    require _2981 + ceil32(return_data.size) + (32 * mem[_2981 + mem[_2981]]) + 32 <= test266151307() and (32 * mem[_2981 + mem[_2981]]) + 32 >= 0
                    mem[64] = _2981 + ceil32(return_data.size) + (32 * mem[_2981 + mem[_2981]]) + 32
                    mem[_2981 + ceil32(return_data.size)] = _3017
                    require _2999 + (32 * _3017) + 32 <= return_data.size
                    idx = 0
                    s = _2981 + _2999 + 32
                    t = _2981 + ceil32(return_data.size) + 32
                    while idx < _3017:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3789 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3789 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[ceil32(return_data.size) + 416]
                    require 0 < mem[_3789]
                    mem[_3789 + 32] = mem[ceil32(return_data.size) + 460 len 20]
                    require 1 < mem[_3789]
                    mem[_3789 + 64] = stor11
                    require 1 < mem[_3789]
                    require 0 < mem[_3789]
                    if mem[_3789 + 44 len 20] == stor11:
                        require 1 < mem[ceil32(return_data.size) + 416]
                        require 1 < mem[_3789]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[ceil32(return_data.size) + 480]), stor11, _2112, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3789 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3789 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[_3789 + 132] = 64
                        mem[_3789 + 164] = mem[_3789]
                        idx = 0
                        s = _3789 + 32
                        t = _3789 + 196
                        while idx < mem[_3789]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3789 + (32 * mem[_3789]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4540 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4549 = mem[_4540]
                        require mem[_4540] <= test266151307()
                        require _4540 + mem[_4540] + 31 < _4540 + return_data.size
                        _4558 = mem[_4540 + mem[_4540]]
                        require mem[_4540 + mem[_4540]] <= test266151307()
                        require _4540 + ceil32(return_data.size) + (32 * mem[_4540 + mem[_4540]]) + 32 <= test266151307() and (32 * mem[_4540 + mem[_4540]]) + 32 >= 0
                        mem[64] = _4540 + ceil32(return_data.size) + (32 * mem[_4540 + mem[_4540]]) + 32
                        mem[_4540 + ceil32(return_data.size)] = _4558
                        require _4549 + (32 * _4558) + 32 <= return_data.size
                        idx = 0
                        s = _4540 + _4549 + 32
                        t = _4540 + ceil32(return_data.size) + 32
                        while idx < _4558:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4558 - 1 < _4558
                        _4888 = mem[(32 * _4558 - 1) + _4540 + ceil32(return_data.size) + 32]
                        _4889 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _4888
                        mem[mem[64] + 68] = 160
                        _4900 = mem[_3789]
                        mem[mem[64] + 164] = mem[_3789]
                        idx = 0
                        s = _3789 + 32
                        t = mem[64] + 196
                        while idx < _4900:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4889 + 100] = this.address
                        mem[_4889 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4889 + (32 * _4900) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5152 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5161 = mem[_5152]
                        require mem[_5152] <= test266151307()
                        require _5152 + mem[_5152] + 31 < _5152 + return_data.size
                        _5170 = mem[_5152 + mem[_5152]]
                        require mem[_5152 + mem[_5152]] <= test266151307()
                        require _5152 + ceil32(return_data.size) + (32 * mem[_5152 + mem[_5152]]) + 32 <= test266151307() and (32 * mem[_5152 + mem[_5152]]) + 32 >= 0
                        mem[64] = _5152 + ceil32(return_data.size) + (32 * mem[_5152 + mem[_5152]]) + 32
                        mem[_5152 + ceil32(return_data.size)] = _5170
                        require _5161 + (32 * _5170) + 32 <= return_data.size
                        idx = 0
                        s = _5152 + _5161 + 32
                        t = _5152 + ceil32(return_data.size) + 32
                        while idx < _5170:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[ceil32(return_data.size) + 416]
                        require 1 < mem[_3789]
                        _5401 = mem[_3789 + 64]
                        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                        mem[mem[64] + 68] = _2112
                        mem[mem[64] + 100] = _4888
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5401), _2112, _4888, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5422] == mem[_5422]
                        require mem[_5422 + 32] == mem[_5422 + 32]
                        require mem[_5422 + 64] == mem[_5422 + 64]
                        if mem[_5422 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_5422 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5422 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5422 + 64]
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
                    _1083 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                    _1124 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                    mem[(4 * ceil32(return_data.size)) + 608] = _1124
                    require _1083 + (32 * _1124) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1083 + 640
                    t = (4 * ceil32(return_data.size)) + 640
                    while idx < _1124:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1124 - 1 < _1124
                    _2114 = mem[(32 * _1124 - 1) + (4 * ceil32(return_data.size)) + 640]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[mem[64] + 36] = _2114
                    mem[mem[64] + 68] = 160
                    _2136 = mem[(2 * ceil32(return_data.size)) + 512]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = mem[64] + 196
                    while idx < _2136:
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
                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2114, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2136) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2982 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3000 = mem[_2982]
                    require mem[_2982] <= test266151307()
                    require _2982 + mem[_2982] + 31 < _2982 + return_data.size
                    _3018 = mem[_2982 + mem[_2982]]
                    require mem[_2982 + mem[_2982]] <= test266151307()
                    require _2982 + ceil32(return_data.size) + (32 * mem[_2982 + mem[_2982]]) + 32 <= test266151307() and (32 * mem[_2982 + mem[_2982]]) + 32 >= 0
                    mem[64] = _2982 + ceil32(return_data.size) + (32 * mem[_2982 + mem[_2982]]) + 32
                    mem[_2982 + ceil32(return_data.size)] = _3018
                    require _3000 + (32 * _3018) + 32 <= return_data.size
                    idx = 0
                    s = _2982 + _3000 + 32
                    t = _2982 + ceil32(return_data.size) + 32
                    while idx < _3018:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                    _3810 = mem[(2 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                    mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[mem[64] + 100] = _2114
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3810), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2114, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4064 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_4064] == mem[_4064]
                    require mem[_4064 + 32] == mem[_4064 + 32]
                    require mem[_4064 + 64] == mem[_4064 + 64]
                    if mem[_4064 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_4064 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_4064 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_4064 + 64]
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
                    _1084 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                    _1125 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                    mem[(4 * ceil32(return_data.size)) + 512] = _1125
                    require _1084 + (32 * _1125) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1084 + 544
                    t = (4 * ceil32(return_data.size)) + 544
                    while idx < _1125:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1125 - 1 < _1125
                    _2116 = mem[(32 * _1125 - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                    mem[mem[64] + 36] = _2116
                    mem[mem[64] + 68] = 160
                    _2137 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _2137:
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
                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2116, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2137) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2983 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3001 = mem[_2983]
                    require mem[_2983] <= test266151307()
                    require _2983 + mem[_2983] + 31 < _2983 + return_data.size
                    _3019 = mem[_2983 + mem[_2983]]
                    require mem[_2983 + mem[_2983]] <= test266151307()
                    require _2983 + ceil32(return_data.size) + (32 * mem[_2983 + mem[_2983]]) + 32 <= test266151307() and (32 * mem[_2983 + mem[_2983]]) + 32 >= 0
                    mem[64] = _2983 + ceil32(return_data.size) + (32 * mem[_2983 + mem[_2983]]) + 32
                    mem[_2983 + ceil32(return_data.size)] = _3019
                    require _3001 + (32 * _3019) + 32 <= return_data.size
                    idx = 0
                    s = _2983 + _3001 + 32
                    t = _2983 + ceil32(return_data.size) + 32
                    while idx < _3019:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3792 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3792 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3792]
                    mem[_3792 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3792]
                    mem[_3792 + 64] = stor11
                    require 1 < mem[_3792]
                    require 0 < mem[_3792]
                    if mem[_3792 + 44 len 20] == stor11:
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3792]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2116, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3792 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3792 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[_3792 + 132] = 64
                        mem[_3792 + 164] = mem[_3792]
                        idx = 0
                        s = _3792 + 32
                        t = _3792 + 196
                        while idx < mem[_3792]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3792 + (32 * mem[_3792]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4541 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4550 = mem[_4541]
                        require mem[_4541] <= test266151307()
                        require _4541 + mem[_4541] + 31 < _4541 + return_data.size
                        _4559 = mem[_4541 + mem[_4541]]
                        require mem[_4541 + mem[_4541]] <= test266151307()
                        require _4541 + ceil32(return_data.size) + (32 * mem[_4541 + mem[_4541]]) + 32 <= test266151307() and (32 * mem[_4541 + mem[_4541]]) + 32 >= 0
                        mem[64] = _4541 + ceil32(return_data.size) + (32 * mem[_4541 + mem[_4541]]) + 32
                        mem[_4541 + ceil32(return_data.size)] = _4559
                        require _4550 + (32 * _4559) + 32 <= return_data.size
                        idx = 0
                        s = _4541 + _4550 + 32
                        t = _4541 + ceil32(return_data.size) + 32
                        while idx < _4559:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4559 - 1 < _4559
                        _4890 = mem[(32 * _4559 - 1) + _4541 + ceil32(return_data.size) + 32]
                        _4891 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _4890
                        mem[mem[64] + 68] = 160
                        _4901 = mem[_3792]
                        mem[mem[64] + 164] = mem[_3792]
                        idx = 0
                        s = _3792 + 32
                        t = mem[64] + 196
                        while idx < _4901:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4891 + 100] = this.address
                        mem[_4891 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4891 + (32 * _4901) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5153 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5162 = mem[_5153]
                        require mem[_5153] <= test266151307()
                        require _5153 + mem[_5153] + 31 < _5153 + return_data.size
                        _5171 = mem[_5153 + mem[_5153]]
                        require mem[_5153 + mem[_5153]] <= test266151307()
                        require _5153 + ceil32(return_data.size) + (32 * mem[_5153 + mem[_5153]]) + 32 <= test266151307() and (32 * mem[_5153 + mem[_5153]]) + 32 >= 0
                        mem[64] = _5153 + ceil32(return_data.size) + (32 * mem[_5153 + mem[_5153]]) + 32
                        mem[_5153 + ceil32(return_data.size)] = _5171
                        require _5162 + (32 * _5171) + 32 <= return_data.size
                        idx = 0
                        s = _5153 + _5162 + 32
                        t = _5153 + ceil32(return_data.size) + 32
                        while idx < _5171:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3792]
                        _5403 = mem[_3792 + 64]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = _2116
                        mem[mem[64] + 100] = _4890
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5403), _2116, _4890, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5423 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5423] == mem[_5423]
                        require mem[_5423 + 32] == mem[_5423 + 32]
                        require mem[_5423 + 64] == mem[_5423 + 64]
                        if mem[_5423 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_5423 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5423 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5423 + 64]
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
                    _1063 = mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32
                    require mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 639 < ceil32(return_data.size) + return_data.size + 608
                    _1114 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 640
                    mem[(2 * ceil32(return_data.size)) + 608] = _1114
                    require _1063 + (32 * _1114) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _1063 + 640
                    t = (2 * ceil32(return_data.size)) + 640
                    while idx < _1114:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1114 - 1 < _1114
                    _2094 = mem[(32 * _1114 - 1) + (2 * ceil32(return_data.size)) + 640]
                    _2095 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[mem[64] + 36] = _2094
                    mem[mem[64] + 68] = 160
                    _2126 = mem[ceil32(return_data.size) + 512]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 512]
                    idx = 0
                    s = ceil32(return_data.size) + 544
                    t = mem[64] + 196
                    while idx < _2126:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2095 + 100] = this.address
                    mem[_2095 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2095 + (32 * _2126) + -mem[64] + 192]
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
                    require 1 < mem[ceil32(return_data.size) + 416]
                    require 1 < mem[ceil32(return_data.size) + 512]
                    _3800 = mem[ceil32(return_data.size) + 576]
                    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                    mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[mem[64] + 100] = _2094
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3800), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), _2094, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4059 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_4059] == mem[_4059]
                    require mem[_4059 + 32] == mem[_4059 + 32]
                    require mem[_4059 + 64] == mem[_4059 + 64]
                    if mem[_4059 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_4059 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_4059 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_4059 + 64]
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
                    _1064 = mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32
                    require mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 543 < ceil32(return_data.size) + return_data.size + 512
                    _1115 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 544
                    mem[(2 * ceil32(return_data.size)) + 512] = _1115
                    require _1064 + (32 * _1115) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _1064 + 544
                    t = (2 * ceil32(return_data.size)) + 544
                    while idx < _1115:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1115 - 1 < _1115
                    _2096 = mem[(32 * _1115 - 1) + (2 * ceil32(return_data.size)) + 544]
                    _2097 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[mem[64] + 36] = _2096
                    mem[mem[64] + 68] = 160
                    _2127 = mem[ceil32(return_data.size) + 416]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 416]
                    idx = 0
                    s = ceil32(return_data.size) + 448
                    t = mem[64] + 196
                    while idx < _2127:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2097 + 100] = this.address
                    mem[_2097 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2097 + (32 * _2127) + -mem[64] + 192]
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
                    _3777 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3777 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[ceil32(return_data.size) + 416]
                    require 0 < mem[_3777]
                    mem[_3777 + 32] = mem[ceil32(return_data.size) + 460 len 20]
                    require 1 < mem[_3777]
                    mem[_3777 + 64] = stor11
                    require 1 < mem[_3777]
                    require 0 < mem[_3777]
                    if mem[_3777 + 44 len 20] == stor11:
                        require 1 < mem[ceil32(return_data.size) + 416]
                        require 1 < mem[_3777]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[ceil32(return_data.size) + 480]), stor11, _2096, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                        _4536 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4545 = mem[_4536]
                        require mem[_4536] <= test266151307()
                        require _4536 + mem[_4536] + 31 < _4536 + return_data.size
                        _4554 = mem[_4536 + mem[_4536]]
                        require mem[_4536 + mem[_4536]] <= test266151307()
                        require _4536 + ceil32(return_data.size) + (32 * mem[_4536 + mem[_4536]]) + 32 <= test266151307() and (32 * mem[_4536 + mem[_4536]]) + 32 >= 0
                        mem[64] = _4536 + ceil32(return_data.size) + (32 * mem[_4536 + mem[_4536]]) + 32
                        mem[_4536 + ceil32(return_data.size)] = _4554
                        require _4545 + (32 * _4554) + 32 <= return_data.size
                        idx = 0
                        s = _4536 + _4545 + 32
                        t = _4536 + ceil32(return_data.size) + 32
                        while idx < _4554:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4554 - 1 < _4554
                        _4880 = mem[(32 * _4554 - 1) + _4536 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _4880
                        mem[mem[64] + 68] = 160
                        _4896 = mem[_3777]
                        mem[mem[64] + 164] = mem[_3777]
                        idx = 0
                        s = _3777 + 32
                        t = mem[64] + 196
                        while idx < _4896:
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), _4880, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4896) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5148 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5157 = mem[_5148]
                        require mem[_5148] <= test266151307()
                        require _5148 + mem[_5148] + 31 < _5148 + return_data.size
                        _5166 = mem[_5148 + mem[_5148]]
                        require mem[_5148 + mem[_5148]] <= test266151307()
                        require _5148 + ceil32(return_data.size) + (32 * mem[_5148 + mem[_5148]]) + 32 <= test266151307() and (32 * mem[_5148 + mem[_5148]]) + 32 >= 0
                        mem[64] = _5148 + ceil32(return_data.size) + (32 * mem[_5148 + mem[_5148]]) + 32
                        mem[_5148 + ceil32(return_data.size)] = _5166
                        require _5157 + (32 * _5166) + 32 <= return_data.size
                        idx = 0
                        s = _5148 + _5157 + 32
                        t = _5148 + ceil32(return_data.size) + 32
                        while idx < _5166:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[ceil32(return_data.size) + 416]
                        require 1 < mem[_3777]
                        _5393 = mem[_3777 + 64]
                        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                        mem[mem[64] + 68] = _2096
                        mem[mem[64] + 100] = _4880
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5393), _2096, _4880, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5418 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5418] == mem[_5418]
                        require mem[_5418 + 32] == mem[_5418 + 32]
                        require mem[_5418 + 64] == mem[_5418 + 64]
                        if mem[_5418 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_5418 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5418 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5418 + 64]
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
                        _1055 = mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < ceil32(return_data.size) + return_data.size + 608
                        _1109 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                        mem[(2 * ceil32(return_data.size)) + 608] = _1109
                        require _1055 + (32 * _1109) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1055 + 640
                        t = (2 * ceil32(return_data.size)) + 640
                        while idx < _1109:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1109 - 1 < _1109
                        _2086 = mem[(32 * _1109 - 1) + (2 * ceil32(return_data.size)) + 640]
                        _2087 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _2086
                        mem[mem[64] + 68] = 160
                        _2122 = mem[ceil32(return_data.size) + 512]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 512]
                        idx = 0
                        s = ceil32(return_data.size) + 544
                        t = mem[64] + 196
                        while idx < _2122:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2087 + 100] = this.address
                        mem[_2087 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2087 + (32 * _2122) + -mem[64] + 192]
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
                        require 1 < mem[ceil32(return_data.size) + 416]
                        require 1 < mem[ceil32(return_data.size) + 512]
                        _3796 = mem[ceil32(return_data.size) + 576]
                        mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                        mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 100] = _2086
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3796), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2086, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4057 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_4057] == mem[_4057]
                        require mem[_4057 + 32] == mem[_4057 + 32]
                        require mem[_4057 + 64] == mem[_4057 + 64]
                        if mem[_4057 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_4057 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_4057 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_4057 + 64]
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
                        _1056 = mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < ceil32(return_data.size) + return_data.size + 512
                        _1110 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                        mem[(2 * ceil32(return_data.size)) + 512] = _1110
                        require _1056 + (32 * _1110) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1056 + 544
                        t = (2 * ceil32(return_data.size)) + 544
                        while idx < _1110:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1110 - 1 < _1110
                        _2088 = mem[(32 * _1110 - 1) + (2 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _2088
                        mem[mem[64] + 68] = 160
                        _2123 = mem[ceil32(return_data.size) + 416]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 416]
                        idx = 0
                        s = ceil32(return_data.size) + 448
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2088, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2123) + 32]
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
                        _3771 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3771 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[ceil32(return_data.size) + 416]
                        require 0 < mem[_3771]
                        mem[_3771 + 32] = mem[ceil32(return_data.size) + 460 len 20]
                        require 1 < mem[_3771]
                        mem[_3771 + 64] = stor11
                        require 1 < mem[_3771]
                        require 0 < mem[_3771]
                        if mem[_3771 + 44 len 20] == stor11:
                            require 1 < mem[ceil32(return_data.size) + 416]
                            require 1 < mem[_3771]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[ceil32(return_data.size) + 480]), stor11, _2088, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                            _4534 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4543 = mem[_4534]
                            require mem[_4534] <= test266151307()
                            require _4534 + mem[_4534] + 31 < _4534 + return_data.size
                            _4552 = mem[_4534 + mem[_4534]]
                            require mem[_4534 + mem[_4534]] <= test266151307()
                            require _4534 + ceil32(return_data.size) + (32 * mem[_4534 + mem[_4534]]) + 32 <= test266151307() and (32 * mem[_4534 + mem[_4534]]) + 32 >= 0
                            mem[64] = _4534 + ceil32(return_data.size) + (32 * mem[_4534 + mem[_4534]]) + 32
                            mem[_4534 + ceil32(return_data.size)] = _4552
                            require _4543 + (32 * _4552) + 32 <= return_data.size
                            idx = 0
                            s = _4534 + _4543 + 32
                            t = _4534 + ceil32(return_data.size) + 32
                            while idx < _4552:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4552 - 1 < _4552
                            _4876 = mem[(32 * _4552 - 1) + _4534 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = _4876
                            mem[mem[64] + 68] = 160
                            _4894 = mem[_3771]
                            mem[mem[64] + 164] = mem[_3771]
                            idx = 0
                            s = _3771 + 32
                            t = mem[64] + 196
                            while idx < _4894:
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _4876, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4894) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5146 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5155 = mem[_5146]
                            require mem[_5146] <= test266151307()
                            require _5146 + mem[_5146] + 31 < _5146 + return_data.size
                            _5164 = mem[_5146 + mem[_5146]]
                            require mem[_5146 + mem[_5146]] <= test266151307()
                            require _5146 + ceil32(return_data.size) + (32 * mem[_5146 + mem[_5146]]) + 32 <= test266151307() and (32 * mem[_5146 + mem[_5146]]) + 32 >= 0
                            mem[64] = _5146 + ceil32(return_data.size) + (32 * mem[_5146 + mem[_5146]]) + 32
                            mem[_5146 + ceil32(return_data.size)] = _5164
                            require _5155 + (32 * _5164) + 32 <= return_data.size
                            idx = 0
                            s = _5146 + _5155 + 32
                            t = _5146 + ceil32(return_data.size) + 32
                            while idx < _5164:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[ceil32(return_data.size) + 416]
                            require 1 < mem[_3771]
                            _5389 = mem[_3771 + 64]
                            mem[mem[64] + 4] = mem[ceil32(return_data.size) + 492 len 20]
                            mem[mem[64] + 68] = _2088
                            mem[mem[64] + 100] = _4876
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5389), _2088, _4876, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5416 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5416] == mem[_5416]
                            require mem[_5416 + 32] == mem[_5416 + 32]
                            require mem[_5416 + 64] == mem[_5416 + 64]
                            if mem[_5416 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5416 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5416 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5416 + 64]
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
                        _1059 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                        _1112 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                        mem[(4 * ceil32(return_data.size)) + 608] = _1112
                        require _1059 + (32 * _1112) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _1059 + 640
                        t = (4 * ceil32(return_data.size)) + 640
                        while idx < _1112:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1112 - 1 < _1112
                        _2090 = mem[(32 * _1112 - 1) + (4 * ceil32(return_data.size)) + 640]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _2090
                        mem[mem[64] + 68] = 160
                        _2124 = mem[(2 * ceil32(return_data.size)) + 512]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2090, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2124) + 32]
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
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                        _3798 = mem[(2 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 100] = _2090
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3798), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2090, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4058 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_4058] == mem[_4058]
                        require mem[_4058 + 32] == mem[_4058 + 32]
                        require mem[_4058 + 64] == mem[_4058 + 64]
                        if mem[_4058 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_4058 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_4058 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_4058 + 64]
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
                        _1060 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                        _1113 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                        mem[(4 * ceil32(return_data.size)) + 512] = _1113
                        require _1060 + (32 * _1113) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _1060 + 544
                        t = (4 * ceil32(return_data.size)) + 544
                        while idx < _1113:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1113 - 1 < _1113
                        _2092 = mem[(32 * _1113 - 1) + (4 * ceil32(return_data.size)) + 544]
                        _2093 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _2092
                        mem[mem[64] + 68] = 160
                        _2125 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _2125:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2093 + 100] = this.address
                        mem[_2093 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2093 + (32 * _2125) + -mem[64] + 192]
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
                        _3774 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3774 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3774]
                        mem[_3774 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3774]
                        mem[_3774 + 64] = stor11
                        require 1 < mem[_3774]
                        require 0 < mem[_3774]
                        if mem[_3774 + 44 len 20] == stor11:
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3774]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2092, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                            _4535 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4544 = mem[_4535]
                            require mem[_4535] <= test266151307()
                            require _4535 + mem[_4535] + 31 < _4535 + return_data.size
                            _4553 = mem[_4535 + mem[_4535]]
                            require mem[_4535 + mem[_4535]] <= test266151307()
                            require _4535 + ceil32(return_data.size) + (32 * mem[_4535 + mem[_4535]]) + 32 <= test266151307() and (32 * mem[_4535 + mem[_4535]]) + 32 >= 0
                            mem[64] = _4535 + ceil32(return_data.size) + (32 * mem[_4535 + mem[_4535]]) + 32
                            mem[_4535 + ceil32(return_data.size)] = _4553
                            require _4544 + (32 * _4553) + 32 <= return_data.size
                            idx = 0
                            s = _4535 + _4544 + 32
                            t = _4535 + ceil32(return_data.size) + 32
                            while idx < _4553:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4553 - 1 < _4553
                            _4878 = mem[(32 * _4553 - 1) + _4535 + ceil32(return_data.size) + 32]
                            _4879 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = _4878
                            mem[mem[64] + 68] = 160
                            _4895 = mem[_3774]
                            mem[mem[64] + 164] = mem[_3774]
                            idx = 0
                            s = _3774 + 32
                            t = mem[64] + 196
                            while idx < _4895:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4879 + 100] = this.address
                            mem[_4879 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4879 + (32 * _4895) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5147 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5156 = mem[_5147]
                            require mem[_5147] <= test266151307()
                            require _5147 + mem[_5147] + 31 < _5147 + return_data.size
                            _5165 = mem[_5147 + mem[_5147]]
                            require mem[_5147 + mem[_5147]] <= test266151307()
                            require _5147 + ceil32(return_data.size) + (32 * mem[_5147 + mem[_5147]]) + 32 <= test266151307() and (32 * mem[_5147 + mem[_5147]]) + 32 >= 0
                            mem[64] = _5147 + ceil32(return_data.size) + (32 * mem[_5147 + mem[_5147]]) + 32
                            mem[_5147 + ceil32(return_data.size)] = _5165
                            require _5156 + (32 * _5165) + 32 <= return_data.size
                            idx = 0
                            s = _5147 + _5156 + 32
                            t = _5147 + ceil32(return_data.size) + 32
                            while idx < _5165:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3774]
                            _5391 = mem[_3774 + 64]
                            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _2092
                            mem[mem[64] + 100] = _4878
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5391), _2092, _4878, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5417 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5417] == mem[_5417]
                            require mem[_5417 + 32] == mem[_5417 + 32]
                            require mem[_5417 + 64] == mem[_5417 + 64]
                            if mem[_5417 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5417 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5417 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5417 + 64]
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
                    _1075 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                    _1120 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 608]) + 640
                    mem[(4 * ceil32(return_data.size)) + 608] = _1120
                    require _1075 + (32 * _1120) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1075 + 640
                    t = (4 * ceil32(return_data.size)) + 640
                    while idx < _1120:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1120 - 1 < _1120
                    _2106 = mem[(32 * _1120 - 1) + (4 * ceil32(return_data.size)) + 640]
                    _2107 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[mem[64] + 36] = _2106
                    mem[mem[64] + 68] = 160
                    _2132 = mem[(2 * ceil32(return_data.size)) + 512]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = mem[64] + 196
                    while idx < _2132:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2107 + 100] = this.address
                    mem[_2107 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2107 + (32 * _2132) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2978 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2996 = mem[_2978]
                    require mem[_2978] <= test266151307()
                    require _2978 + mem[_2978] + 31 < _2978 + return_data.size
                    _3014 = mem[_2978 + mem[_2978]]
                    require mem[_2978 + mem[_2978]] <= test266151307()
                    require _2978 + ceil32(return_data.size) + (32 * mem[_2978 + mem[_2978]]) + 32 <= test266151307() and (32 * mem[_2978 + mem[_2978]]) + 32 >= 0
                    mem[64] = _2978 + ceil32(return_data.size) + (32 * mem[_2978 + mem[_2978]]) + 32
                    mem[_2978 + ceil32(return_data.size)] = _3014
                    require _2996 + (32 * _3014) + 32 <= return_data.size
                    idx = 0
                    s = _2978 + _2996 + 32
                    t = _2978 + ceil32(return_data.size) + 32
                    while idx < _3014:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                    _3806 = mem[(2 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                    mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[mem[64] + 100] = _2106
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3806), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), _2106, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4062 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_4062] == mem[_4062]
                    require mem[_4062 + 32] == mem[_4062 + 32]
                    require mem[_4062 + 64] == mem[_4062 + 64]
                    if mem[_4062 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_4062 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_4062 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_4062 + 64]
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
                    _1076 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                    _1121 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)) >> 32 + 512]) + 544
                    mem[(4 * ceil32(return_data.size)) + 512] = _1121
                    require _1076 + (32 * _1121) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1076 + 544
                    t = (4 * ceil32(return_data.size)) + 544
                    while idx < _1121:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _1121 - 1 < _1121
                    _2108 = mem[(32 * _1121 - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                    mem[mem[64] + 36] = _2108
                    mem[mem[64] + 68] = 160
                    _2133 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _2133:
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
                        args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), _2108, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2133) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2979 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2997 = mem[_2979]
                    require mem[_2979] <= test266151307()
                    require _2979 + mem[_2979] + 31 < _2979 + return_data.size
                    _3015 = mem[_2979 + mem[_2979]]
                    require mem[_2979 + mem[_2979]] <= test266151307()
                    require _2979 + ceil32(return_data.size) + (32 * mem[_2979 + mem[_2979]]) + 32 <= test266151307() and (32 * mem[_2979 + mem[_2979]]) + 32 >= 0
                    mem[64] = _2979 + ceil32(return_data.size) + (32 * mem[_2979 + mem[_2979]]) + 32
                    mem[_2979 + ceil32(return_data.size)] = _3015
                    require _2997 + (32 * _3015) + 32 <= return_data.size
                    idx = 0
                    s = _2979 + _2997 + 32
                    t = _2979 + ceil32(return_data.size) + 32
                    while idx < _3015:
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
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3786]
                    mem[_3786 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3786]
                    mem[_3786 + 64] = stor11
                    require 1 < mem[_3786]
                    require 0 < mem[_3786]
                    if mem[_3786 + 44 len 20] == stor11:
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3786]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2108, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3786 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
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
                        _4539 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4548 = mem[_4539]
                        require mem[_4539] <= test266151307()
                        require _4539 + mem[_4539] + 31 < _4539 + return_data.size
                        _4557 = mem[_4539 + mem[_4539]]
                        require mem[_4539 + mem[_4539]] <= test266151307()
                        require _4539 + ceil32(return_data.size) + (32 * mem[_4539 + mem[_4539]]) + 32 <= test266151307() and (32 * mem[_4539 + mem[_4539]]) + 32 >= 0
                        mem[64] = _4539 + ceil32(return_data.size) + (32 * mem[_4539 + mem[_4539]]) + 32
                        mem[_4539 + ceil32(return_data.size)] = _4557
                        require _4548 + (32 * _4557) + 32 <= return_data.size
                        idx = 0
                        s = _4539 + _4548 + 32
                        t = _4539 + ceil32(return_data.size) + 32
                        while idx < _4557:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4557 - 1 < _4557
                        _4886 = mem[(32 * _4557 - 1) + _4539 + ceil32(return_data.size) + 32]
                        _4887 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _4886
                        mem[mem[64] + 68] = 160
                        _4899 = mem[_3786]
                        mem[mem[64] + 164] = mem[_3786]
                        idx = 0
                        s = _3786 + 32
                        t = mem[64] + 196
                        while idx < _4899:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4887 + 100] = this.address
                        mem[_4887 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4887 + (32 * _4899) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5151 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5160 = mem[_5151]
                        require mem[_5151] <= test266151307()
                        require _5151 + mem[_5151] + 31 < _5151 + return_data.size
                        _5169 = mem[_5151 + mem[_5151]]
                        require mem[_5151 + mem[_5151]] <= test266151307()
                        require _5151 + ceil32(return_data.size) + (32 * mem[_5151 + mem[_5151]]) + 32 <= test266151307() and (32 * mem[_5151 + mem[_5151]]) + 32 >= 0
                        mem[64] = _5151 + ceil32(return_data.size) + (32 * mem[_5151 + mem[_5151]]) + 32
                        mem[_5151 + ceil32(return_data.size)] = _5169
                        require _5160 + (32 * _5169) + 32 <= return_data.size
                        idx = 0
                        s = _5151 + _5160 + 32
                        t = _5151 + ceil32(return_data.size) + 32
                        while idx < _5169:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3786]
                        _5399 = mem[_3786 + 64]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = _2108
                        mem[mem[64] + 100] = _4886
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5399), _2108, _4886, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5421 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5421] == mem[_5421]
                        require mem[_5421 + 32] == mem[_5421 + 32]
                        require mem[_5421 + 64] == mem[_5421 + 64]
                        if mem[_5421 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_5421 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5421 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5421 + 64]
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
                        _1067 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                        _1116 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                        mem[(4 * ceil32(return_data.size)) + 608] = _1116
                        require _1067 + (32 * _1116) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _1067 + 640
                        t = (4 * ceil32(return_data.size)) + 640
                        while idx < _1116:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1116 - 1 < _1116
                        _2098 = mem[(32 * _1116 - 1) + (4 * ceil32(return_data.size)) + 640]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _2098
                        mem[mem[64] + 68] = 160
                        _2128 = mem[(2 * ceil32(return_data.size)) + 512]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2098, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2128) + 32]
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
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                        _3802 = mem[(2 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 100] = _2098
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3802), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2098, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4060 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_4060] == mem[_4060]
                        require mem[_4060 + 32] == mem[_4060 + 32]
                        require mem[_4060 + 64] == mem[_4060 + 64]
                        if mem[_4060 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.stake(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_4060 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_4060 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_4060 + 64]
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
                        _1068 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                        _1117 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                        mem[(4 * ceil32(return_data.size)) + 512] = _1117
                        require _1068 + (32 * _1117) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _1068 + 544
                        t = (4 * ceil32(return_data.size)) + 544
                        while idx < _1117:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1117 - 1 < _1117
                        _2100 = mem[(32 * _1117 - 1) + (4 * ceil32(return_data.size)) + 544]
                        _2101 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _2100
                        mem[mem[64] + 68] = 160
                        _2129 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _2129:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2101 + 100] = this.address
                        mem[_2101 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2101 + (32 * _2129) + -mem[64] + 192]
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
                        _3780 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3780 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3780]
                        mem[_3780 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3780]
                        mem[_3780 + 64] = stor11
                        require 1 < mem[_3780]
                        require 0 < mem[_3780]
                        if mem[_3780 + 44 len 20] == stor11:
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3780]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _2100, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_3780 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                            _4537 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4546 = mem[_4537]
                            require mem[_4537] <= test266151307()
                            require _4537 + mem[_4537] + 31 < _4537 + return_data.size
                            _4555 = mem[_4537 + mem[_4537]]
                            require mem[_4537 + mem[_4537]] <= test266151307()
                            require _4537 + ceil32(return_data.size) + (32 * mem[_4537 + mem[_4537]]) + 32 <= test266151307() and (32 * mem[_4537 + mem[_4537]]) + 32 >= 0
                            mem[64] = _4537 + ceil32(return_data.size) + (32 * mem[_4537 + mem[_4537]]) + 32
                            mem[_4537 + ceil32(return_data.size)] = _4555
                            require _4546 + (32 * _4555) + 32 <= return_data.size
                            idx = 0
                            s = _4537 + _4546 + 32
                            t = _4537 + ceil32(return_data.size) + 32
                            while idx < _4555:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4555 - 1 < _4555
                            _4882 = mem[(32 * _4555 - 1) + _4537 + ceil32(return_data.size) + 32]
                            _4883 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = _4882
                            mem[mem[64] + 68] = 160
                            _4897 = mem[_3780]
                            mem[mem[64] + 164] = mem[_3780]
                            idx = 0
                            s = _3780 + 32
                            t = mem[64] + 196
                            while idx < _4897:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4883 + 100] = this.address
                            mem[_4883 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4883 + (32 * _4897) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5149 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5158 = mem[_5149]
                            require mem[_5149] <= test266151307()
                            require _5149 + mem[_5149] + 31 < _5149 + return_data.size
                            _5167 = mem[_5149 + mem[_5149]]
                            require mem[_5149 + mem[_5149]] <= test266151307()
                            require _5149 + ceil32(return_data.size) + (32 * mem[_5149 + mem[_5149]]) + 32 <= test266151307() and (32 * mem[_5149 + mem[_5149]]) + 32 >= 0
                            mem[64] = _5149 + ceil32(return_data.size) + (32 * mem[_5149 + mem[_5149]]) + 32
                            mem[_5149 + ceil32(return_data.size)] = _5167
                            require _5158 + (32 * _5167) + 32 <= return_data.size
                            idx = 0
                            s = _5149 + _5158 + 32
                            t = _5149 + ceil32(return_data.size) + 32
                            while idx < _5167:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3780]
                            _5395 = mem[_3780 + 64]
                            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _2100
                            mem[mem[64] + 100] = _4882
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5395), _2100, _4882, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5419 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5419] == mem[_5419]
                            require mem[_5419 + 32] == mem[_5419 + 32]
                            require mem[_5419 + 64] == mem[_5419 + 64]
                            if mem[_5419 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5419 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5419 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5419 + 64]
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
                            _1071 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                            _1118 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]) + 640
                            mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 608]
                            require _1071 + (32 * _1118) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _1071 + 640
                            t = (6 * ceil32(return_data.size)) + 640
                            while idx < _1118:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1118 - 1 < _1118
                            _2102 = mem[(32 * _1118 - 1) + (6 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = _2102
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
                                args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2102, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
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
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                            _3804 = mem[(4 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 100] = _2102
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_3804), Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2102, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4061 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_4061] == mem[_4061]
                            require mem[_4061 + 32] == mem[_4061 + 32]
                            require mem[_4061 + 64] == mem[_4061 + 64]
                            if mem[_4061 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_4061 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_4061 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_4061 + 64]
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
                        _1072 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                        _1119 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 512]) + 544
                        mem[(6 * ceil32(return_data.size)) + 512] = _1119
                        require _1072 + (32 * _1119) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _1072 + 544
                        t = (6 * ceil32(return_data.size)) + 544
                        while idx < _1119:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1119 - 1 < _1119
                        _2104 = mem[(32 * _1119 - 1) + (6 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                        mem[mem[64] + 36] = _2104
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
                            args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), _2104, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2977 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2995 = mem[_2977]
                        require mem[_2977] <= test266151307()
                        require _2977 + mem[_2977] + 31 < _2977 + return_data.size
                        _3013 = mem[_2977 + mem[_2977]]
                        require mem[_2977 + mem[_2977]] <= test266151307()
                        require _2977 + ceil32(return_data.size) + (32 * mem[_2977 + mem[_2977]]) + 32 <= test266151307() and (32 * mem[_2977 + mem[_2977]]) + 32 >= 0
                        mem[64] = _2977 + ceil32(return_data.size) + (32 * mem[_2977 + mem[_2977]]) + 32
                        mem[_2977 + ceil32(return_data.size)] = _3013
                        require _2995 + (32 * _3013) + 32 <= return_data.size
                        idx = 0
                        s = _2977 + _2995 + 32
                        t = _2977 + ceil32(return_data.size) + 32
                        while idx < _3013:
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
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3783]
                        mem[_3783 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3783]
                        mem[_3783 + 64] = stor11
                        require 1 < mem[_3783]
                        require 0 < mem[_3783]
                        if mem[_3783 + 44 len 20] == stor11:
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3783]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _2104, Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_3783 + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
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
                            _4538 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4547 = mem[_4538]
                            require mem[_4538] <= test266151307()
                            require _4538 + mem[_4538] + 31 < _4538 + return_data.size
                            _4556 = mem[_4538 + mem[_4538]]
                            require mem[_4538 + mem[_4538]] <= test266151307()
                            require _4538 + ceil32(return_data.size) + (32 * mem[_4538 + mem[_4538]]) + 32 <= test266151307() and (32 * mem[_4538 + mem[_4538]]) + 32 >= 0
                            mem[64] = _4538 + ceil32(return_data.size) + (32 * mem[_4538 + mem[_4538]]) + 32
                            mem[_4538 + ceil32(return_data.size)] = _4556
                            require _4547 + (32 * _4556) + 32 <= return_data.size
                            idx = 0
                            s = _4538 + _4547 + 32
                            t = _4538 + ceil32(return_data.size) + 32
                            while idx < _4556:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4556 - 1 < _4556
                            _4884 = mem[(32 * _4556 - 1) + _4538 + ceil32(return_data.size) + 32]
                            _4885 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) / 2
                            mem[mem[64] + 36] = _4884
                            mem[mem[64] + 68] = 160
                            _4898 = mem[_3783]
                            mem[mem[64] + 164] = mem[_3783]
                            idx = 0
                            s = _3783 + 32
                            t = mem[64] + 196
                            while idx < _4898:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4885 + 100] = this.address
                            mem[_4885 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4885 + (32 * _4898) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5150 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5159 = mem[_5150]
                            require mem[_5150] <= test266151307()
                            require _5150 + mem[_5150] + 31 < _5150 + return_data.size
                            _5168 = mem[_5150 + mem[_5150]]
                            require mem[_5150 + mem[_5150]] <= test266151307()
                            require _5150 + ceil32(return_data.size) + (32 * mem[_5150 + mem[_5150]]) + 32 <= test266151307() and (32 * mem[_5150 + mem[_5150]]) + 32 >= 0
                            mem[64] = _5150 + ceil32(return_data.size) + (32 * mem[_5150 + mem[_5150]]) + 32
                            mem[_5150 + ceil32(return_data.size)] = _5168
                            require _5159 + (32 * _5168) + 32 <= return_data.size
                            idx = 0
                            s = _5150 + _5159 + 32
                            t = _5150 + ceil32(return_data.size) + 32
                            while idx < _5168:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3783]
                            _5397 = mem[_3783 + 64]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _2104
                            mem[mem[64] + 100] = _4884
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5397), _2104, _4884, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5420 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5420] == mem[_5420]
                            require mem[_5420 + 32] == mem[_5420 + 32]
                            require mem[_5420 + 64] == mem[_5420 + 64]
                            if mem[_5420 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.stake(uint256 rg1) with:
                                 gas gas_remaining wei
                                args mem[_5420 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5420 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5420 + 64]
                        emit Reinvest(totalDeposits, totalSupply);
}



}
