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
uint256 PID;
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
    staticcall stakingContractAddress.0x27dae463 with:
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
    staticcall stakingContractAddress.0x27dae463 with:
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
                    call stakingContractAddress.withdraw(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, 0 / totalSupply
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
                    call stakingContractAddress.withdraw(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, arg1 * totalDeposits / totalSupply
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
    mem[100] = PID
    mem[132] = this.address
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0x27dae463 with:
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
                _800 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                _843 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608] <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]) + 640
                mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 608]
                require _800 + (32 * _843) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _800 + 640
                t = (4 * ceil32(return_data.size)) + 640
                while idx < _843:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _843 - 1 < _843
                _1883 = mem[(32 * _843 - 1) + (4 * ceil32(return_data.size)) + 640]
                _1884 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                mem[mem[64] + 36] = mem[(32 * _843 - 1) + (4 * ceil32(return_data.size)) + 640]
                mem[mem[64] + 68] = 160
                _1909 = mem[(2 * ceil32(return_data.size)) + 512]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 544
                t = mem[64] + 196
                while idx < _1909:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1884 + 100] = this.address
                mem[_1884 + 132] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1884 + (32 * _1909) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2770 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2786 = mem[_2770]
                require mem[_2770] <= test266151307()
                require _2770 + mem[_2770] + 31 < _2770 + return_data.size
                _2802 = mem[_2770 + mem[_2770]]
                require mem[_2770 + mem[_2770]] <= test266151307()
                require _2770 + ceil32(return_data.size) + (32 * mem[_2770 + mem[_2770]]) + 32 <= test266151307() and (32 * mem[_2770 + mem[_2770]]) + 32 >= 0
                mem[64] = _2770 + ceil32(return_data.size) + (32 * mem[_2770 + mem[_2770]]) + 32
                mem[_2770 + ceil32(return_data.size)] = _2802
                require _2786 + (32 * _2802) + 32 <= return_data.size
                idx = 0
                s = _2770 + _2786 + 32
                t = _2770 + ceil32(return_data.size) + 32
                while idx < _2802:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                _3596 = mem[(2 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                mem[mem[64] + 68] = uint255(ext_call.return_data[0])
                mem[mem[64] + 100] = _1883
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_3596), 2 * ext_call.return_data[0], _1883, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3854 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_3854] == mem[_3854]
                require mem[_3854 + 32] == mem[_3854 + 32]
                require mem[_3854 + 64] == mem[_3854 + 64]
                if mem[_3854 + 64] <= 0:
                    revert with 0, 'amount too low'
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args PID, mem[_3854 + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalDeposits + mem[_3854 + 64] < totalDeposits:
                    revert with 0, 'SafeMath: addition overflow'
                totalDeposits += mem[_3854 + 64]
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
                _801 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                _844 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512] <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 544
                mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]
                require _801 + (32 * _844) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _801 + 544
                t = (4 * ceil32(return_data.size)) + 544
                while idx < _844:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _844 - 1 < _844
                _1885 = mem[(32 * _844 - 1) + (4 * ceil32(return_data.size)) + 544]
                _1886 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                mem[mem[64] + 36] = mem[(32 * _844 - 1) + (4 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 68] = 160
                _1910 = mem[(2 * ceil32(return_data.size)) + 416]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 448
                t = mem[64] + 196
                while idx < _1910:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1886 + 100] = this.address
                mem[_1886 + 132] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1886 + (32 * _1910) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2771 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2787 = mem[_2771]
                require mem[_2771] <= test266151307()
                require _2771 + mem[_2771] + 31 < _2771 + return_data.size
                _2803 = mem[_2771 + mem[_2771]]
                require mem[_2771 + mem[_2771]] <= test266151307()
                require _2771 + ceil32(return_data.size) + (32 * mem[_2771 + mem[_2771]]) + 32 <= test266151307() and (32 * mem[_2771 + mem[_2771]]) + 32 >= 0
                mem[64] = _2771 + ceil32(return_data.size) + (32 * mem[_2771 + mem[_2771]]) + 32
                mem[_2771 + ceil32(return_data.size)] = _2803
                require _2787 + (32 * _2803) + 32 <= return_data.size
                idx = 0
                s = _2771 + _2787 + 32
                t = _2771 + ceil32(return_data.size) + 32
                while idx < _2803:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3581 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3581 + 32 len 64] = call.data[calldata.size len 64]
                require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                require 0 < mem[_3581]
                mem[_3581 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                require 1 < mem[_3581]
                mem[_3581 + 64] = stor11
                require 1 < mem[_3581]
                require 0 < mem[_3581]
                if mem[_3581 + 44 len 20] == stor11:
                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 1 < mem[_3581]
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _1885, 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
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
                    mem[_3581 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3581 + 100] = uint255(ext_call.return_data[0])
                    mem[_3581 + 132] = 64
                    mem[_3581 + 164] = mem[_3581]
                    idx = 0
                    s = _3581 + 32
                    t = _3581 + 196
                    while idx < mem[_3581]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3581 + (32 * mem[_3581]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4339 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4350 = mem[_4339]
                    require mem[_4339] <= test266151307()
                    require _4339 + mem[_4339] + 31 < _4339 + return_data.size
                    _4362 = mem[_4339 + mem[_4339]]
                    require mem[_4339 + mem[_4339]] <= test266151307()
                    require _4339 + ceil32(return_data.size) + (32 * mem[_4339 + mem[_4339]]) + 32 <= test266151307() and (32 * mem[_4339 + mem[_4339]]) + 32 >= 0
                    mem[64] = _4339 + ceil32(return_data.size) + (32 * mem[_4339 + mem[_4339]]) + 32
                    mem[_4339 + ceil32(return_data.size)] = _4362
                    require _4350 + (32 * _4362) + 32 <= return_data.size
                    idx = 0
                    s = _4339 + _4350 + 32
                    t = _4339 + ceil32(return_data.size) + 32
                    while idx < _4362:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4362 - 1 < _4362
                    _4732 = mem[(32 * _4362 - 1) + _4339 + ceil32(return_data.size) + 32]
                    _4733 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                    mem[mem[64] + 36] = _4732
                    mem[mem[64] + 68] = 160
                    _4745 = mem[_3581]
                    mem[mem[64] + 164] = mem[_3581]
                    idx = 0
                    s = _3581 + 32
                    t = mem[64] + 196
                    while idx < _4745:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4733 + 100] = this.address
                    mem[_4733 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4733 + (32 * _4745) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5006 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5014 = mem[_5006]
                    require mem[_5006] <= test266151307()
                    require _5006 + mem[_5006] + 31 < _5006 + return_data.size
                    _5022 = mem[_5006 + mem[_5006]]
                    require mem[_5006 + mem[_5006]] <= test266151307()
                    require _5006 + ceil32(return_data.size) + (32 * mem[_5006 + mem[_5006]]) + 32 <= test266151307() and (32 * mem[_5006 + mem[_5006]]) + 32 >= 0
                    mem[64] = _5006 + ceil32(return_data.size) + (32 * mem[_5006 + mem[_5006]]) + 32
                    mem[_5006 + ceil32(return_data.size)] = _5022
                    require _5014 + (32 * _5022) + 32 <= return_data.size
                    idx = 0
                    s = _5006 + _5014 + 32
                    t = _5006 + ceil32(return_data.size) + 32
                    while idx < _5022:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 1 < mem[_3581]
                    _5255 = mem[_3581 + 64]
                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                    mem[mem[64] + 68] = _1885
                    mem[mem[64] + 100] = _4732
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_5255), _1885, _4732, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5283 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_5283] == mem[_5283]
                    require mem[_5283 + 32] == mem[_5283 + 32]
                    require mem[_5283 + 64] == mem[_5283 + 64]
                    if mem[_5283 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, mem[_5283 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_5283 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_5283 + 64]
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
                    _792 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                    _839 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                    mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                    require _792 + (32 * _839) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _792 + 640
                    t = (4 * ceil32(return_data.size)) + 640
                    while idx < _839:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _839 - 1 < _839
                    _1875 = mem[(32 * _839 - 1) + (4 * ceil32(return_data.size)) + 640]
                    _1876 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _839 - 1) + (4 * ceil32(return_data.size)) + 640]
                    mem[mem[64] + 68] = 160
                    _1905 = mem[(2 * ceil32(return_data.size)) + 512]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = mem[64] + 196
                    while idx < _1905:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1876 + 100] = this.address
                    mem[_1876 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1876 + (32 * _1905) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2766 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2782 = mem[_2766]
                    require mem[_2766] <= test266151307()
                    require _2766 + mem[_2766] + 31 < _2766 + return_data.size
                    _2798 = mem[_2766 + mem[_2766]]
                    require mem[_2766 + mem[_2766]] <= test266151307()
                    require _2766 + ceil32(return_data.size) + (32 * mem[_2766 + mem[_2766]]) + 32 <= test266151307() and (32 * mem[_2766 + mem[_2766]]) + 32 >= 0
                    mem[64] = _2766 + ceil32(return_data.size) + (32 * mem[_2766 + mem[_2766]]) + 32
                    mem[_2766 + ceil32(return_data.size)] = _2798
                    require _2782 + (32 * _2798) + 32 <= return_data.size
                    idx = 0
                    s = _2766 + _2782 + 32
                    t = _2766 + ceil32(return_data.size) + 32
                    while idx < _2798:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                    _3592 = mem[(2 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _1875
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3592), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1875, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3852 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3852] == mem[_3852]
                    require mem[_3852 + 32] == mem[_3852 + 32]
                    require mem[_3852 + 64] == mem[_3852 + 64]
                    if mem[_3852 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, mem[_3852 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_3852 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_3852 + 64]
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
                    _793 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                    _840 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require _793 + (32 * _840) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _793 + 544
                    t = (4 * ceil32(return_data.size)) + 544
                    while idx < _840:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _840 - 1 < _840
                    _1877 = mem[(32 * _840 - 1) + (4 * ceil32(return_data.size)) + 544]
                    _1878 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _840 - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 68] = 160
                    _1906 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _1906:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1878 + 100] = this.address
                    mem[_1878 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1878 + (32 * _1906) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2767 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2783 = mem[_2767]
                    require mem[_2767] <= test266151307()
                    require _2767 + mem[_2767] + 31 < _2767 + return_data.size
                    _2799 = mem[_2767 + mem[_2767]]
                    require mem[_2767 + mem[_2767]] <= test266151307()
                    require _2767 + ceil32(return_data.size) + (32 * mem[_2767 + mem[_2767]]) + 32 <= test266151307() and (32 * mem[_2767 + mem[_2767]]) + 32 >= 0
                    mem[64] = _2767 + ceil32(return_data.size) + (32 * mem[_2767 + mem[_2767]]) + 32
                    mem[_2767 + ceil32(return_data.size)] = _2799
                    require _2783 + (32 * _2799) + 32 <= return_data.size
                    idx = 0
                    s = _2767 + _2783 + 32
                    t = _2767 + ceil32(return_data.size) + 32
                    while idx < _2799:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3575 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3575 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3575]
                    mem[_3575 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3575]
                    mem[_3575 + 64] = stor11
                    require 1 < mem[_3575]
                    require 0 < mem[_3575]
                    if mem[_3575 + 44 len 20] == stor11:
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3575]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _1877, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3575 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3575 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[_3575 + 132] = 64
                        mem[_3575 + 164] = mem[_3575]
                        idx = 0
                        s = _3575 + 32
                        t = _3575 + 196
                        while idx < mem[_3575]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3575 + (32 * mem[_3575]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4337 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4348 = mem[_4337]
                        require mem[_4337] <= test266151307()
                        require _4337 + mem[_4337] + 31 < _4337 + return_data.size
                        _4360 = mem[_4337 + mem[_4337]]
                        require mem[_4337 + mem[_4337]] <= test266151307()
                        require _4337 + ceil32(return_data.size) + (32 * mem[_4337 + mem[_4337]]) + 32 <= test266151307() and (32 * mem[_4337 + mem[_4337]]) + 32 >= 0
                        mem[64] = _4337 + ceil32(return_data.size) + (32 * mem[_4337 + mem[_4337]]) + 32
                        mem[_4337 + ceil32(return_data.size)] = _4360
                        require _4348 + (32 * _4360) + 32 <= return_data.size
                        idx = 0
                        s = _4337 + _4348 + 32
                        t = _4337 + ceil32(return_data.size) + 32
                        while idx < _4360:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4360 - 1 < _4360
                        _4728 = mem[(32 * _4360 - 1) + _4337 + ceil32(return_data.size) + 32]
                        _4729 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _4728
                        mem[mem[64] + 68] = 160
                        _4743 = mem[_3575]
                        mem[mem[64] + 164] = mem[_3575]
                        idx = 0
                        s = _3575 + 32
                        t = mem[64] + 196
                        while idx < _4743:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4729 + 100] = this.address
                        mem[_4729 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4729 + (32 * _4743) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5004 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5012 = mem[_5004]
                        require mem[_5004] <= test266151307()
                        require _5004 + mem[_5004] + 31 < _5004 + return_data.size
                        _5020 = mem[_5004 + mem[_5004]]
                        require mem[_5004 + mem[_5004]] <= test266151307()
                        require _5004 + ceil32(return_data.size) + (32 * mem[_5004 + mem[_5004]]) + 32 <= test266151307() and (32 * mem[_5004 + mem[_5004]]) + 32 >= 0
                        mem[64] = _5004 + ceil32(return_data.size) + (32 * mem[_5004 + mem[_5004]]) + 32
                        mem[_5004 + ceil32(return_data.size)] = _5020
                        require _5012 + (32 * _5020) + 32 <= return_data.size
                        idx = 0
                        s = _5004 + _5012 + 32
                        t = _5004 + ceil32(return_data.size) + 32
                        while idx < _5020:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3575]
                        _5251 = mem[_3575 + 64]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = _1877
                        mem[mem[64] + 100] = _4728
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5251), _1877, _4728, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5281 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5281] == mem[_5281]
                        require mem[_5281 + 32] == mem[_5281 + 32]
                        require mem[_5281 + 64] == mem[_5281 + 64]
                        if mem[_5281 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5281 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5281 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5281 + 64]
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
                        _796 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                        _841 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                        mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                        require _796 + (32 * _841) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _796 + 640
                        t = (6 * ceil32(return_data.size)) + 640
                        while idx < _841:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _841 - 1 < _841
                        _1879 = mem[(32 * _841 - 1) + (6 * ceil32(return_data.size)) + 640]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1879
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1879, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2768 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2784 = mem[_2768]
                        require mem[_2768] <= test266151307()
                        require _2768 + mem[_2768] + 31 < _2768 + return_data.size
                        _2800 = mem[_2768 + mem[_2768]]
                        require mem[_2768 + mem[_2768]] <= test266151307()
                        require _2768 + ceil32(return_data.size) + (32 * mem[_2768 + mem[_2768]]) + 32 <= test266151307() and (32 * mem[_2768 + mem[_2768]]) + 32 >= 0
                        mem[64] = _2768 + ceil32(return_data.size) + (32 * mem[_2768 + mem[_2768]]) + 32
                        mem[_2768 + ceil32(return_data.size)] = _2800
                        require _2784 + (32 * _2800) + 32 <= return_data.size
                        idx = 0
                        s = _2768 + _2784 + 32
                        t = _2768 + ceil32(return_data.size) + 32
                        while idx < _2800:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                        _3594 = mem[(4 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _1879
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3594), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1879, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3853 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_3853] == mem[_3853]
                        require mem[_3853 + 32] == mem[_3853 + 32]
                        require mem[_3853 + 64] == mem[_3853 + 64]
                        if mem[_3853 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_3853 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_3853 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_3853 + 64]
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
                    _797 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                    _842 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require _797 + (32 * _842) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _797 + 544
                    t = (6 * ceil32(return_data.size)) + 544
                    while idx < _842:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _842 - 1 < _842
                    _1881 = mem[(32 * _842 - 1) + (6 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _842 - 1) + (6 * ceil32(return_data.size)) + 544]
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _842 - 1) + (6 * ceil32(return_data.size)) + 544], Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2769 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2785 = mem[_2769]
                    require mem[_2769] <= test266151307()
                    require _2769 + mem[_2769] + 31 < _2769 + return_data.size
                    _2801 = mem[_2769 + mem[_2769]]
                    require mem[_2769 + mem[_2769]] <= test266151307()
                    require _2769 + ceil32(return_data.size) + (32 * mem[_2769 + mem[_2769]]) + 32 <= test266151307() and (32 * mem[_2769 + mem[_2769]]) + 32 >= 0
                    mem[64] = _2769 + ceil32(return_data.size) + (32 * mem[_2769 + mem[_2769]]) + 32
                    mem[_2769 + ceil32(return_data.size)] = _2801
                    require _2785 + (32 * _2801) + 32 <= return_data.size
                    idx = 0
                    s = _2769 + _2785 + 32
                    t = _2769 + ceil32(return_data.size) + 32
                    while idx < _2801:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3578 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3578 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3578]
                    mem[_3578 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3578]
                    mem[_3578 + 64] = stor11
                    require 1 < mem[_3578]
                    require 0 < mem[_3578]
                    if mem[_3578 + 44 len 20] == stor11:
                        require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3578]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _1881, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3578 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3578 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[_3578 + 132] = 64
                        mem[_3578 + 164] = mem[_3578]
                        idx = 0
                        s = _3578 + 32
                        t = _3578 + 196
                        while idx < mem[_3578]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3578 + (32 * mem[_3578]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4338 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4349 = mem[_4338]
                        require mem[_4338] <= test266151307()
                        require _4338 + mem[_4338] + 31 < _4338 + return_data.size
                        _4361 = mem[_4338 + mem[_4338]]
                        require mem[_4338 + mem[_4338]] <= test266151307()
                        require _4338 + ceil32(return_data.size) + (32 * mem[_4338 + mem[_4338]]) + 32 <= test266151307() and (32 * mem[_4338 + mem[_4338]]) + 32 >= 0
                        mem[64] = _4338 + ceil32(return_data.size) + (32 * mem[_4338 + mem[_4338]]) + 32
                        mem[_4338 + ceil32(return_data.size)] = _4361
                        require _4349 + (32 * _4361) + 32 <= return_data.size
                        idx = 0
                        s = _4338 + _4349 + 32
                        t = _4338 + ceil32(return_data.size) + 32
                        while idx < _4361:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4361 - 1 < _4361
                        _4730 = mem[(32 * _4361 - 1) + _4338 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _4730
                        mem[mem[64] + 68] = 160
                        _4744 = mem[_3578]
                        mem[mem[64] + 164] = mem[_3578]
                        idx = 0
                        s = _3578 + 32
                        t = mem[64] + 196
                        while idx < _4744:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4730, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4744) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5005 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5013 = mem[_5005]
                        require mem[_5005] <= test266151307()
                        require _5005 + mem[_5005] + 31 < _5005 + return_data.size
                        _5021 = mem[_5005 + mem[_5005]]
                        require mem[_5005 + mem[_5005]] <= test266151307()
                        require _5005 + ceil32(return_data.size) + (32 * mem[_5005 + mem[_5005]]) + 32 <= test266151307() and (32 * mem[_5005 + mem[_5005]]) + 32 >= 0
                        mem[64] = _5005 + ceil32(return_data.size) + (32 * mem[_5005 + mem[_5005]]) + 32
                        mem[_5005 + ceil32(return_data.size)] = _5021
                        require _5013 + (32 * _5021) + 32 <= return_data.size
                        idx = 0
                        s = _5005 + _5013 + 32
                        t = _5005 + ceil32(return_data.size) + 32
                        while idx < _5021:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3578]
                        _5253 = mem[_3578 + 64]
                        mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = _1881
                        mem[mem[64] + 100] = _4730
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5253), _1881, _4730, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5282 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5282] == mem[_5282]
                        require mem[_5282 + 32] == mem[_5282 + 32]
                        require mem[_5282 + 64] == mem[_5282 + 64]
                        if mem[_5282 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5282 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5282 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5282 + 64]
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
                    _778 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                    _830 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 640
                    mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]
                    require _778 + (32 * _830) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _778 + 640
                    t = (4 * ceil32(return_data.size)) + 640
                    while idx < _830:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _830 - 1 < _830
                    _1863 = mem[(32 * _830 - 1) + (4 * ceil32(return_data.size)) + 640]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1863
                    mem[mem[64] + 68] = 160
                    _1899 = mem[(2 * ceil32(return_data.size)) + 512]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1863, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1899) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2758 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2776 = mem[_2758]
                    require mem[_2758] <= test266151307()
                    require _2758 + mem[_2758] + 31 < _2758 + return_data.size
                    _2792 = mem[_2758 + mem[_2758]]
                    require mem[_2758 + mem[_2758]] <= test266151307()
                    require _2758 + ceil32(return_data.size) + (32 * mem[_2758 + mem[_2758]]) + 32 <= test266151307() and (32 * mem[_2758 + mem[_2758]]) + 32 >= 0
                    mem[64] = _2758 + ceil32(return_data.size) + (32 * mem[_2758 + mem[_2758]]) + 32
                    mem[_2758 + ceil32(return_data.size)] = _2792
                    require _2776 + (32 * _2792) + 32 <= return_data.size
                    idx = 0
                    s = _2758 + _2776 + 32
                    t = _2758 + ceil32(return_data.size) + 32
                    while idx < _2792:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                    _3586 = mem[(2 * ceil32(return_data.size)) + 576]
                    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _1863
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3586), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1863, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3849 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_3849] == mem[_3849]
                    require mem[_3849 + 32] == mem[_3849 + 32]
                    require mem[_3849 + 64] == mem[_3849 + 64]
                    if mem[_3849 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, mem[_3849 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_3849 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_3849 + 64]
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
                    _779 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                    _831 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require _779 + (32 * _831) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _779 + 544
                    t = (4 * ceil32(return_data.size)) + 544
                    while idx < _831:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _831 - 1 < _831
                    _1865 = mem[(32 * _831 - 1) + (4 * ceil32(return_data.size)) + 544]
                    _1866 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1865
                    mem[mem[64] + 68] = 160
                    _1900 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _1900:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1866 + 100] = this.address
                    mem[_1866 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1866 + (32 * _1900) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2759 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2777 = mem[_2759]
                    require mem[_2759] <= test266151307()
                    require _2759 + mem[_2759] + 31 < _2759 + return_data.size
                    _2793 = mem[_2759 + mem[_2759]]
                    require mem[_2759 + mem[_2759]] <= test266151307()
                    require _2759 + ceil32(return_data.size) + (32 * mem[_2759 + mem[_2759]]) + 32 <= test266151307() and (32 * mem[_2759 + mem[_2759]]) + 32 >= 0
                    mem[64] = _2759 + ceil32(return_data.size) + (32 * mem[_2759 + mem[_2759]]) + 32
                    mem[_2759 + ceil32(return_data.size)] = _2793
                    require _2777 + (32 * _2793) + 32 <= return_data.size
                    idx = 0
                    s = _2759 + _2777 + 32
                    t = _2759 + ceil32(return_data.size) + 32
                    while idx < _2793:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3566 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3566 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3566]
                    mem[_3566 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3566]
                    mem[_3566 + 64] = stor11
                    require 1 < mem[_3566]
                    require 0 < mem[_3566]
                    if mem[_3566 + 44 len 20] == stor11:
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3566]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _1865, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3566 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3566 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[_3566 + 132] = 64
                        mem[_3566 + 164] = mem[_3566]
                        idx = 0
                        s = _3566 + 32
                        t = _3566 + 196
                        while idx < mem[_3566]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3566 + (32 * mem[_3566]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4331 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4344 = mem[_4331]
                        require mem[_4331] <= test266151307()
                        require _4331 + mem[_4331] + 31 < _4331 + return_data.size
                        _4356 = mem[_4331 + mem[_4331]]
                        require mem[_4331 + mem[_4331]] <= test266151307()
                        require _4331 + ceil32(return_data.size) + (32 * mem[_4331 + mem[_4331]]) + 32 <= test266151307() and (32 * mem[_4331 + mem[_4331]]) + 32 >= 0
                        mem[64] = _4331 + ceil32(return_data.size) + (32 * mem[_4331 + mem[_4331]]) + 32
                        mem[_4331 + ceil32(return_data.size)] = _4356
                        require _4344 + (32 * _4356) + 32 <= return_data.size
                        idx = 0
                        s = _4331 + _4344 + 32
                        t = _4331 + ceil32(return_data.size) + 32
                        while idx < _4356:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4356 - 1 < _4356
                        _4722 = mem[(32 * _4356 - 1) + _4331 + ceil32(return_data.size) + 32]
                        _4723 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _4722
                        mem[mem[64] + 68] = 160
                        _4740 = mem[_3566]
                        mem[mem[64] + 164] = mem[_3566]
                        idx = 0
                        s = _3566 + 32
                        t = mem[64] + 196
                        while idx < _4740:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4723 + 100] = this.address
                        mem[_4723 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4723 + (32 * _4740) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5000 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5009 = mem[_5000]
                        require mem[_5000] <= test266151307()
                        require _5000 + mem[_5000] + 31 < _5000 + return_data.size
                        _5017 = mem[_5000 + mem[_5000]]
                        require mem[_5000 + mem[_5000]] <= test266151307()
                        require _5000 + ceil32(return_data.size) + (32 * mem[_5000 + mem[_5000]]) + 32 <= test266151307() and (32 * mem[_5000 + mem[_5000]]) + 32 >= 0
                        mem[64] = _5000 + ceil32(return_data.size) + (32 * mem[_5000 + mem[_5000]]) + 32
                        mem[_5000 + ceil32(return_data.size)] = _5017
                        require _5009 + (32 * _5017) + 32 <= return_data.size
                        idx = 0
                        s = _5000 + _5009 + 32
                        t = _5000 + ceil32(return_data.size) + 32
                        while idx < _5017:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3566]
                        _5245 = mem[_3566 + 64]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = _1865
                        mem[mem[64] + 100] = _4722
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5245), _1865, _4722, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5278 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5278] == mem[_5278]
                        require mem[_5278 + 32] == mem[_5278 + 32]
                        require mem[_5278 + 64] == mem[_5278 + 64]
                        if mem[_5278 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5278 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5278 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5278 + 64]
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
                        _770 = mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (2 * ceil32(return_data.size)) + return_data.size + 608
                        _825 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                        mem[(4 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                        require _770 + (32 * _825) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _770 + 640
                        t = (4 * ceil32(return_data.size)) + 640
                        while idx < _825:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _825 - 1 < _825
                        _1855 = mem[(32 * _825 - 1) + (4 * ceil32(return_data.size)) + 640]
                        _1856 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1855
                        mem[mem[64] + 68] = 160
                        _1895 = mem[(2 * ceil32(return_data.size)) + 512]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = mem[64] + 196
                        while idx < _1895:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1856 + 100] = this.address
                        mem[_1856 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1856 + (32 * _1895) + -mem[64] + 192]
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
                        require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 1 < mem[(2 * ceil32(return_data.size)) + 512]
                        _3582 = mem[(2 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _1855
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3582), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1855, 0, 0, address(this.address), block.timestamp
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
                        _771 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                        _826 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require _771 + (32 * _826) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _771 + 544
                        t = (4 * ceil32(return_data.size)) + 544
                        while idx < _826:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _826 - 1 < _826
                        _1857 = mem[(32 * _826 - 1) + (4 * ceil32(return_data.size)) + 544]
                        _1858 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1857
                        mem[mem[64] + 68] = 160
                        _1896 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _1896:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1858 + 100] = this.address
                        mem[_1858 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1858 + (32 * _1896) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2755 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2773 = mem[_2755]
                        require mem[_2755] <= test266151307()
                        require _2755 + mem[_2755] + 31 < _2755 + return_data.size
                        _2789 = mem[_2755 + mem[_2755]]
                        require mem[_2755 + mem[_2755]] <= test266151307()
                        require _2755 + ceil32(return_data.size) + (32 * mem[_2755 + mem[_2755]]) + 32 <= test266151307() and (32 * mem[_2755 + mem[_2755]]) + 32 >= 0
                        mem[64] = _2755 + ceil32(return_data.size) + (32 * mem[_2755 + mem[_2755]]) + 32
                        mem[_2755 + ceil32(return_data.size)] = _2789
                        require _2773 + (32 * _2789) + 32 <= return_data.size
                        idx = 0
                        s = _2755 + _2773 + 32
                        t = _2755 + ceil32(return_data.size) + 32
                        while idx < _2789:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3560 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3560 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3560]
                        mem[_3560 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3560]
                        mem[_3560 + 64] = stor11
                        require 1 < mem[_3560]
                        require 0 < mem[_3560]
                        if mem[_3560 + 44 len 20] == stor11:
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3560]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(2 * ceil32(return_data.size)) + 480]), stor11, _1857, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_3560 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3560 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_3560 + 132] = 64
                            mem[_3560 + 164] = mem[_3560]
                            idx = 0
                            s = _3560 + 32
                            t = _3560 + 196
                            while idx < mem[_3560]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3560 + (32 * mem[_3560]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4329 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4342 = mem[_4329]
                            require mem[_4329] <= test266151307()
                            require _4329 + mem[_4329] + 31 < _4329 + return_data.size
                            _4354 = mem[_4329 + mem[_4329]]
                            require mem[_4329 + mem[_4329]] <= test266151307()
                            require _4329 + ceil32(return_data.size) + (32 * mem[_4329 + mem[_4329]]) + 32 <= test266151307() and (32 * mem[_4329 + mem[_4329]]) + 32 >= 0
                            mem[64] = _4329 + ceil32(return_data.size) + (32 * mem[_4329 + mem[_4329]]) + 32
                            mem[_4329 + ceil32(return_data.size)] = _4354
                            require _4342 + (32 * _4354) + 32 <= return_data.size
                            idx = 0
                            s = _4329 + _4342 + 32
                            t = _4329 + ceil32(return_data.size) + 32
                            while idx < _4354:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4354 - 1 < _4354
                            _4718 = mem[(32 * _4354 - 1) + _4329 + ceil32(return_data.size) + 32]
                            _4719 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _4718
                            mem[mem[64] + 68] = 160
                            _4738 = mem[_3560]
                            mem[mem[64] + 164] = mem[_3560]
                            idx = 0
                            s = _3560 + 32
                            t = mem[64] + 196
                            while idx < _4738:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4719 + 100] = this.address
                            mem[_4719 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _4719 + (32 * _4738) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4998 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5007 = mem[_4998]
                            require mem[_4998] <= test266151307()
                            require _4998 + mem[_4998] + 31 < _4998 + return_data.size
                            _5015 = mem[_4998 + mem[_4998]]
                            require mem[_4998 + mem[_4998]] <= test266151307()
                            require _4998 + ceil32(return_data.size) + (32 * mem[_4998 + mem[_4998]]) + 32 <= test266151307() and (32 * mem[_4998 + mem[_4998]]) + 32 >= 0
                            mem[64] = _4998 + ceil32(return_data.size) + (32 * mem[_4998 + mem[_4998]]) + 32
                            mem[_4998 + ceil32(return_data.size)] = _5015
                            require _5007 + (32 * _5015) + 32 <= return_data.size
                            idx = 0
                            s = _4998 + _5007 + 32
                            t = _4998 + ceil32(return_data.size) + 32
                            while idx < _5015:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3560]
                            _5241 = mem[_3560 + 64]
                            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _1857
                            mem[mem[64] + 100] = _4718
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5241), _1857, _4718, 0, 0, address(this.address), block.timestamp
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
                            _774 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                            _827 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                            mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require _774 + (32 * _827) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _774 + 640
                            t = (6 * ceil32(return_data.size)) + 640
                            while idx < _827:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _827 - 1 < _827
                            _1859 = mem[(32 * _827 - 1) + (6 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _1859
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1859, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2756 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2774 = mem[_2756]
                            require mem[_2756] <= test266151307()
                            require _2756 + mem[_2756] + 31 < _2756 + return_data.size
                            _2790 = mem[_2756 + mem[_2756]]
                            require mem[_2756 + mem[_2756]] <= test266151307()
                            require _2756 + ceil32(return_data.size) + (32 * mem[_2756 + mem[_2756]]) + 32 <= test266151307() and (32 * mem[_2756 + mem[_2756]]) + 32 >= 0
                            mem[64] = _2756 + ceil32(return_data.size) + (32 * mem[_2756 + mem[_2756]]) + 32
                            mem[_2756 + ceil32(return_data.size)] = _2790
                            require _2774 + (32 * _2790) + 32 <= return_data.size
                            idx = 0
                            s = _2756 + _2774 + 32
                            t = _2756 + ceil32(return_data.size) + 32
                            while idx < _2790:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                            _3584 = mem[(4 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _1859
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_3584), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1859, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3848 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_3848] == mem[_3848]
                            require mem[_3848 + 32] == mem[_3848 + 32]
                            require mem[_3848 + 64] == mem[_3848 + 64]
                            if mem[_3848 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_3848 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_3848 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_3848 + 64]
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
                        _828 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require _775 + (32 * _828) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _775 + 544
                        t = (6 * ceil32(return_data.size)) + 544
                        while idx < _828:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _828 - 1 < _828
                        _1861 = mem[(32 * _828 - 1) + (6 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1861
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1861, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2757 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2775 = mem[_2757]
                        require mem[_2757] <= test266151307()
                        require _2757 + mem[_2757] + 31 < _2757 + return_data.size
                        _2791 = mem[_2757 + mem[_2757]]
                        require mem[_2757 + mem[_2757]] <= test266151307()
                        require _2757 + ceil32(return_data.size) + (32 * mem[_2757 + mem[_2757]]) + 32 <= test266151307() and (32 * mem[_2757 + mem[_2757]]) + 32 >= 0
                        mem[64] = _2757 + ceil32(return_data.size) + (32 * mem[_2757 + mem[_2757]]) + 32
                        mem[_2757 + ceil32(return_data.size)] = _2791
                        require _2775 + (32 * _2791) + 32 <= return_data.size
                        idx = 0
                        s = _2757 + _2775 + 32
                        t = _2757 + ceil32(return_data.size) + 32
                        while idx < _2791:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3563 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3563 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3563]
                        mem[_3563 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3563]
                        mem[_3563 + 64] = stor11
                        require 1 < mem[_3563]
                        require 0 < mem[_3563]
                        if mem[_3563 + 44 len 20] == stor11:
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3563]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _1861, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_3563 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3563 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_3563 + 132] = 64
                            mem[_3563 + 164] = mem[_3563]
                            idx = 0
                            s = _3563 + 32
                            t = _3563 + 196
                            while idx < mem[_3563]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3563 + (32 * mem[_3563]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4330 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4343 = mem[_4330]
                            require mem[_4330] <= test266151307()
                            require _4330 + mem[_4330] + 31 < _4330 + return_data.size
                            _4355 = mem[_4330 + mem[_4330]]
                            require mem[_4330 + mem[_4330]] <= test266151307()
                            require _4330 + ceil32(return_data.size) + (32 * mem[_4330 + mem[_4330]]) + 32 <= test266151307() and (32 * mem[_4330 + mem[_4330]]) + 32 >= 0
                            mem[64] = _4330 + ceil32(return_data.size) + (32 * mem[_4330 + mem[_4330]]) + 32
                            mem[_4330 + ceil32(return_data.size)] = _4355
                            require _4343 + (32 * _4355) + 32 <= return_data.size
                            idx = 0
                            s = _4330 + _4343 + 32
                            t = _4330 + ceil32(return_data.size) + 32
                            while idx < _4355:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4355 - 1 < _4355
                            _4720 = mem[(32 * _4355 - 1) + _4330 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _4720
                            mem[mem[64] + 68] = 160
                            _4739 = mem[_3563]
                            mem[mem[64] + 164] = mem[_3563]
                            idx = 0
                            s = _3563 + 32
                            t = mem[64] + 196
                            while idx < _4739:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4720, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4739) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4999 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5008 = mem[_4999]
                            require mem[_4999] <= test266151307()
                            require _4999 + mem[_4999] + 31 < _4999 + return_data.size
                            _5016 = mem[_4999 + mem[_4999]]
                            require mem[_4999 + mem[_4999]] <= test266151307()
                            require _4999 + ceil32(return_data.size) + (32 * mem[_4999 + mem[_4999]]) + 32 <= test266151307() and (32 * mem[_4999 + mem[_4999]]) + 32 >= 0
                            mem[64] = _4999 + ceil32(return_data.size) + (32 * mem[_4999 + mem[_4999]]) + 32
                            mem[_4999 + ceil32(return_data.size)] = _5016
                            require _5008 + (32 * _5016) + 32 <= return_data.size
                            idx = 0
                            s = _4999 + _5008 + 32
                            t = _4999 + ceil32(return_data.size) + 32
                            while idx < _5016:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3563]
                            _5243 = mem[_3563 + 64]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _1861
                            mem[mem[64] + 100] = _4720
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5243), _1861, _4720, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5277 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5277] == mem[_5277]
                            require mem[_5277 + 32] == mem[_5277 + 32]
                            require mem[_5277 + 64] == mem[_5277 + 64]
                            if mem[_5277 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5277 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5277 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5277 + 64]
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
                        _788 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                        _836 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]) + 640
                        mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 608]
                        require _788 + (32 * _836) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _788 + 640
                        t = (6 * ceil32(return_data.size)) + 640
                        while idx < _836:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _836 - 1 < _836
                        _1871 = mem[(32 * _836 - 1) + (6 * ceil32(return_data.size)) + 640]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1871
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1871, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
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
                        require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                        _3590 = mem[(4 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _1871
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3590), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1871, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3851 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_3851] == mem[_3851]
                        require mem[_3851 + 32] == mem[_3851 + 32]
                        require mem[_3851 + 64] == mem[_3851 + 64]
                        if mem[_3851 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_3851 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_3851 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_3851 + 64]
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
                    _789 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                    _837 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require _789 + (32 * _837) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _789 + 544
                    t = (6 * ceil32(return_data.size)) + 544
                    while idx < _837:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _837 - 1 < _837
                    _1873 = mem[(32 * _837 - 1) + (6 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1873
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1873, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2765 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2781 = mem[_2765]
                    require mem[_2765] <= test266151307()
                    require _2765 + mem[_2765] + 31 < _2765 + return_data.size
                    _2797 = mem[_2765 + mem[_2765]]
                    require mem[_2765 + mem[_2765]] <= test266151307()
                    require _2765 + ceil32(return_data.size) + (32 * mem[_2765 + mem[_2765]]) + 32 <= test266151307() and (32 * mem[_2765 + mem[_2765]]) + 32 >= 0
                    mem[64] = _2765 + ceil32(return_data.size) + (32 * mem[_2765 + mem[_2765]]) + 32
                    mem[_2765 + ceil32(return_data.size)] = _2797
                    require _2781 + (32 * _2797) + 32 <= return_data.size
                    idx = 0
                    s = _2765 + _2781 + 32
                    t = _2765 + ceil32(return_data.size) + 32
                    while idx < _2797:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3572 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3572 + 32 len 64] = call.data[calldata.size len 64]
                    require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3572]
                    mem[_3572 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3572]
                    mem[_3572 + 64] = stor11
                    require 1 < mem[_3572]
                    require 0 < mem[_3572]
                    if mem[_3572 + 44 len 20] == stor11:
                        require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3572]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _1873, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3572 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3572 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[_3572 + 132] = 64
                        mem[_3572 + 164] = mem[_3572]
                        idx = 0
                        s = _3572 + 32
                        t = _3572 + 196
                        while idx < mem[_3572]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3572 + (32 * mem[_3572]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4336 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4347 = mem[_4336]
                        require mem[_4336] <= test266151307()
                        require _4336 + mem[_4336] + 31 < _4336 + return_data.size
                        _4359 = mem[_4336 + mem[_4336]]
                        require mem[_4336 + mem[_4336]] <= test266151307()
                        require _4336 + ceil32(return_data.size) + (32 * mem[_4336 + mem[_4336]]) + 32 <= test266151307() and (32 * mem[_4336 + mem[_4336]]) + 32 >= 0
                        mem[64] = _4336 + ceil32(return_data.size) + (32 * mem[_4336 + mem[_4336]]) + 32
                        mem[_4336 + ceil32(return_data.size)] = _4359
                        require _4347 + (32 * _4359) + 32 <= return_data.size
                        idx = 0
                        s = _4336 + _4347 + 32
                        t = _4336 + ceil32(return_data.size) + 32
                        while idx < _4359:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4359 - 1 < _4359
                        _4726 = mem[(32 * _4359 - 1) + _4336 + ceil32(return_data.size) + 32]
                        _4727 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _4726
                        mem[mem[64] + 68] = 160
                        _4742 = mem[_3572]
                        mem[mem[64] + 164] = mem[_3572]
                        idx = 0
                        s = _3572 + 32
                        t = mem[64] + 196
                        while idx < _4742:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4727 + 100] = this.address
                        mem[_4727 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4727 + (32 * _4742) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5003 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5011 = mem[_5003]
                        require mem[_5003] <= test266151307()
                        require _5003 + mem[_5003] + 31 < _5003 + return_data.size
                        _5019 = mem[_5003 + mem[_5003]]
                        require mem[_5003 + mem[_5003]] <= test266151307()
                        require _5003 + ceil32(return_data.size) + (32 * mem[_5003 + mem[_5003]]) + 32 <= test266151307() and (32 * mem[_5003 + mem[_5003]]) + 32 >= 0
                        mem[64] = _5003 + ceil32(return_data.size) + (32 * mem[_5003 + mem[_5003]]) + 32
                        mem[_5003 + ceil32(return_data.size)] = _5019
                        require _5011 + (32 * _5019) + 32 <= return_data.size
                        idx = 0
                        s = _5003 + _5011 + 32
                        t = _5003 + ceil32(return_data.size) + 32
                        while idx < _5019:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 1 < mem[_3572]
                        _5249 = mem[_3572 + 64]
                        mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                        mem[mem[64] + 68] = _1873
                        mem[mem[64] + 100] = _4726
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5249), _1873, _4726, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5280 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5280] == mem[_5280]
                        require mem[_5280 + 32] == mem[_5280 + 32]
                        require mem[_5280 + 64] == mem[_5280 + 64]
                        if mem[_5280 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5280 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5280 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5280 + 64]
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
                            _782 = mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
                            _832 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                            mem[(6 * ceil32(return_data.size)) + 608] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require _782 + (32 * _832) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _782 + 640
                            t = (6 * ceil32(return_data.size)) + 640
                            while idx < _832:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _832 - 1 < _832
                            _1867 = mem[(32 * _832 - 1) + (6 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _1867
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1867, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2760 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2778 = mem[_2760]
                            require mem[_2760] <= test266151307()
                            require _2760 + mem[_2760] + 31 < _2760 + return_data.size
                            _2794 = mem[_2760 + mem[_2760]]
                            require mem[_2760 + mem[_2760]] <= test266151307()
                            require _2760 + ceil32(return_data.size) + (32 * mem[_2760 + mem[_2760]]) + 32 <= test266151307() and (32 * mem[_2760 + mem[_2760]]) + 32 >= 0
                            mem[64] = _2760 + ceil32(return_data.size) + (32 * mem[_2760 + mem[_2760]]) + 32
                            mem[_2760 + ceil32(return_data.size)] = _2794
                            require _2778 + (32 * _2794) + 32 <= return_data.size
                            idx = 0
                            s = _2760 + _2778 + 32
                            t = _2760 + ceil32(return_data.size) + 32
                            while idx < _2794:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(4 * ceil32(return_data.size)) + 512]
                            _3588 = mem[(4 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _1867
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_3588), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1867, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3850 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_3850] == mem[_3850]
                            require mem[_3850 + 32] == mem[_3850 + 32]
                            require mem[_3850 + 64] == mem[_3850 + 64]
                            if mem[_3850 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_3850 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_3850 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_3850 + 64]
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
                        _783 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                        _833 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require _783 + (32 * _833) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _783 + 544
                        t = (6 * ceil32(return_data.size)) + 544
                        while idx < _833:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _833 - 1 < _833
                        _1869 = mem[(32 * _833 - 1) + (6 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1869
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1869, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2761 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2779 = mem[_2761]
                        require mem[_2761] <= test266151307()
                        require _2761 + mem[_2761] + 31 < _2761 + return_data.size
                        _2795 = mem[_2761 + mem[_2761]]
                        require mem[_2761 + mem[_2761]] <= test266151307()
                        require _2761 + ceil32(return_data.size) + (32 * mem[_2761 + mem[_2761]]) + 32 <= test266151307() and (32 * mem[_2761 + mem[_2761]]) + 32 >= 0
                        mem[64] = _2761 + ceil32(return_data.size) + (32 * mem[_2761 + mem[_2761]]) + 32
                        mem[_2761 + ceil32(return_data.size)] = _2795
                        require _2779 + (32 * _2795) + 32 <= return_data.size
                        idx = 0
                        s = _2761 + _2779 + 32
                        t = _2761 + ceil32(return_data.size) + 32
                        while idx < _2795:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3569 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_3569 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3569]
                        mem[_3569 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3569]
                        mem[_3569 + 64] = stor11
                        require 1 < mem[_3569]
                        require 0 < mem[_3569]
                        if mem[_3569 + 44 len 20] == stor11:
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3569]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(4 * ceil32(return_data.size)) + 480]), stor11, _1869, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_3569 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3569 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_3569 + 132] = 64
                            mem[_3569 + 164] = mem[_3569]
                            idx = 0
                            s = _3569 + 32
                            t = _3569 + 196
                            while idx < mem[_3569]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3569 + (32 * mem[_3569]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4332 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4345 = mem[_4332]
                            require mem[_4332] <= test266151307()
                            require _4332 + mem[_4332] + 31 < _4332 + return_data.size
                            _4357 = mem[_4332 + mem[_4332]]
                            require mem[_4332 + mem[_4332]] <= test266151307()
                            require _4332 + ceil32(return_data.size) + (32 * mem[_4332 + mem[_4332]]) + 32 <= test266151307() and (32 * mem[_4332 + mem[_4332]]) + 32 >= 0
                            mem[64] = _4332 + ceil32(return_data.size) + (32 * mem[_4332 + mem[_4332]]) + 32
                            mem[_4332 + ceil32(return_data.size)] = _4357
                            require _4345 + (32 * _4357) + 32 <= return_data.size
                            idx = 0
                            s = _4332 + _4345 + 32
                            t = _4332 + ceil32(return_data.size) + 32
                            while idx < _4357:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4357 - 1 < _4357
                            _4724 = mem[(32 * _4357 - 1) + _4332 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _4724
                            mem[mem[64] + 68] = 160
                            _4741 = mem[_3569]
                            mem[mem[64] + 164] = mem[_3569]
                            idx = 0
                            s = _3569 + 32
                            t = mem[64] + 196
                            while idx < _4741:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4724, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4741) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5001 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5010 = mem[_5001]
                            require mem[_5001] <= test266151307()
                            require _5001 + mem[_5001] + 31 < _5001 + return_data.size
                            _5018 = mem[_5001 + mem[_5001]]
                            require mem[_5001 + mem[_5001]] <= test266151307()
                            require _5001 + ceil32(return_data.size) + (32 * mem[_5001 + mem[_5001]]) + 32 <= test266151307() and (32 * mem[_5001 + mem[_5001]]) + 32 >= 0
                            mem[64] = _5001 + ceil32(return_data.size) + (32 * mem[_5001 + mem[_5001]]) + 32
                            mem[_5001 + ceil32(return_data.size)] = _5018
                            require _5010 + (32 * _5018) + 32 <= return_data.size
                            idx = 0
                            s = _5001 + _5010 + 32
                            t = _5001 + ceil32(return_data.size) + 32
                            while idx < _5018:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_3569]
                            _5247 = mem[_3569 + 64]
                            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _1869
                            mem[mem[64] + 100] = _4724
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5247), _1869, _4724, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5279 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5279] == mem[_5279]
                            require mem[_5279 + 32] == mem[_5279 + 32]
                            require mem[_5279 + 64] == mem[_5279 + 64]
                            if mem[_5279 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5279 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5279 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5279 + 64]
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
                            _1889 = mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 639 < (6 * ceil32(return_data.size)) + return_data.size + 608
                            _1891 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608] <= test266151307()
                            require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 32 >= 0
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]) + 640
                            mem[(7 * ceil32(return_data.size)) + 608] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 608]
                            require _1889 + (32 * _1891) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + _1889 + 640
                            t = (7 * ceil32(return_data.size)) + 640
                            while idx < _1891:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _1891 - 1 < _1891
                            _2734 = mem[(32 * _1891 - 1) + (7 * ceil32(return_data.size)) + 640]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2734
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2734, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3704 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3714 = mem[_3704]
                            require mem[_3704] <= test266151307()
                            require _3704 + mem[_3704] + 31 < _3704 + return_data.size
                            _3720 = mem[_3704 + mem[_3704]]
                            require mem[_3704 + mem[_3704]] <= test266151307()
                            require _3704 + ceil32(return_data.size) + (32 * mem[_3704 + mem[_3704]]) + 32 <= test266151307() and (32 * mem[_3704 + mem[_3704]]) + 32 >= 0
                            mem[64] = _3704 + ceil32(return_data.size) + (32 * mem[_3704 + mem[_3704]]) + 32
                            mem[_3704 + ceil32(return_data.size)] = _3720
                            require _3714 + (32 * _3720) + 32 <= return_data.size
                            idx = 0
                            s = _3704 + _3714 + 32
                            t = _3704 + ceil32(return_data.size) + 32
                            while idx < _3720:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require 1 < mem[(6 * ceil32(return_data.size)) + 512]
                            _4340 = mem[(6 * ceil32(return_data.size)) + 576]
                            mem[mem[64] + 4] = mem[(6 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2734
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4340), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2734, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4453 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_4453] == mem[_4453]
                            require mem[_4453 + 32] == mem[_4453 + 32]
                            require mem[_4453 + 64] == mem[_4453 + 64]
                            if mem[_4453 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_4453 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_4453 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_4453 + 64]
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
                        _1890 = mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (6 * ceil32(return_data.size)) + return_data.size + 512
                        _1892 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(7 * ceil32(return_data.size)) + 512] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require _1890 + (32 * _1892) + 32 <= return_data.size
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + _1890 + 544
                        t = (7 * ceil32(return_data.size)) + 544
                        while idx < _1892:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _1892 - 1 < _1892
                        _2736 = mem[(32 * _1892 - 1) + (7 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _2736
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2736, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3705 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3715 = mem[_3705]
                        require mem[_3705] <= test266151307()
                        require _3705 + mem[_3705] + 31 < _3705 + return_data.size
                        _3721 = mem[_3705 + mem[_3705]]
                        require mem[_3705 + mem[_3705]] <= test266151307()
                        require _3705 + ceil32(return_data.size) + (32 * mem[_3705 + mem[_3705]]) + 32 <= test266151307() and (32 * mem[_3705 + mem[_3705]]) + 32 >= 0
                        mem[64] = _3705 + ceil32(return_data.size) + (32 * mem[_3705 + mem[_3705]]) + 32
                        mem[_3705 + ceil32(return_data.size)] = _3721
                        require _3715 + (32 * _3721) + 32 <= return_data.size
                        idx = 0
                        s = _3705 + _3715 + 32
                        t = _3705 + ceil32(return_data.size) + 32
                        while idx < _3721:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _4335 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_4335 + 32 len 64] = call.data[calldata.size len 64]
                        require 0 < mem[(6 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_4335]
                        mem[_4335 + 32] = mem[(6 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_4335]
                        mem[_4335 + 64] = stor11
                        require 1 < mem[_4335]
                        require 0 < mem[_4335]
                        if mem[_4335 + 44 len 20] == stor11:
                            require 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_4335]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(6 * ceil32(return_data.size)) + 480]), stor11, _2736, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_4335 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_4335 + 100] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_4335 + 132] = 64
                            mem[_4335 + 164] = mem[_4335]
                            idx = 0
                            s = _4335 + 32
                            t = _4335 + 196
                            while idx < mem[_4335]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _4335 + (32 * mem[_4335]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4734 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4735 = mem[_4734]
                            require mem[_4734] <= test266151307()
                            require _4734 + mem[_4734] + 31 < _4734 + return_data.size
                            _4736 = mem[_4734 + mem[_4734]]
                            require mem[_4734 + mem[_4734]] <= test266151307()
                            require _4734 + ceil32(return_data.size) + (32 * mem[_4734 + mem[_4734]]) + 32 <= test266151307() and (32 * mem[_4734 + mem[_4734]]) + 32 >= 0
                            mem[64] = _4734 + ceil32(return_data.size) + (32 * mem[_4734 + mem[_4734]]) + 32
                            mem[_4734 + ceil32(return_data.size)] = _4736
                            require _4735 + (32 * _4736) + 32 <= return_data.size
                            idx = 0
                            s = _4734 + _4735 + 32
                            t = _4734 + ceil32(return_data.size) + 32
                            while idx < _4736:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4736 - 1 < _4736
                            _4988 = mem[(32 * _4736 - 1) + _4734 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _4988
                            mem[mem[64] + 68] = 160
                            _5002 = mem[_4335]
                            mem[mem[64] + 164] = mem[_4335]
                            idx = 0
                            s = _4335 + 32
                            t = mem[64] + 196
                            while idx < _5002:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _4988, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _5002) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5258 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5259 = mem[_5258]
                            require mem[_5258] <= test266151307()
                            require _5258 + mem[_5258] + 31 < _5258 + return_data.size
                            _5260 = mem[_5258 + mem[_5258]]
                            require mem[_5258 + mem[_5258]] <= test266151307()
                            require _5258 + ceil32(return_data.size) + (32 * mem[_5258 + mem[_5258]]) + 32 <= test266151307() and (32 * mem[_5258 + mem[_5258]]) + 32 >= 0
                            mem[64] = _5258 + ceil32(return_data.size) + (32 * mem[_5258 + mem[_5258]]) + 32
                            mem[_5258 + ceil32(return_data.size)] = _5260
                            require _5259 + (32 * _5260) + 32 <= return_data.size
                            idx = 0
                            s = _5258 + _5259 + 32
                            t = _5258 + ceil32(return_data.size) + 32
                            while idx < _5260:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require 1 < mem[_4335]
                            _5389 = mem[_4335 + 64]
                            mem[mem[64] + 4] = mem[(6 * ceil32(return_data.size)) + 492 len 20]
                            mem[mem[64] + 68] = _2736
                            mem[mem[64] + 100] = _4988
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5389), _2736, _4988, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5392 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5392] == mem[_5392]
                            require mem[_5392 + 32] == mem[_5392 + 32]
                            require mem[_5392 + 64] == mem[_5392 + 64]
                            if mem[_5392 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5392 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5392 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5392 + 64]
                    emit Reinvest(totalDeposits, totalSupply);
}



}
