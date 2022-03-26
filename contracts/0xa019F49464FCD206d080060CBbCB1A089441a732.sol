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
            mem[(2 * ceil32(return_data.size)) + 416] = 2
            mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
            mem[(2 * ceil32(return_data.size)) + 480] = stor10
            if rewardTokenAddress == stor10:
                mem[(2 * ceil32(return_data.size)) + 512] = 3
                mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                mem[(2 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                _835 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                _878 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640] <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 672
                mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]
                require _835 + (32 * _878) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _835 + 672
                t = (4 * ceil32(return_data.size)) + 672
                while idx < _878:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _878 - 1 < _878
                _1993 = mem[(32 * _878 - 1) + (4 * ceil32(return_data.size)) + 672]
                _1994 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                mem[mem[64] + 36] = _1993
                mem[mem[64] + 68] = 160
                _2019 = mem[(2 * ceil32(return_data.size)) + 512]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 544
                t = mem[64] + 196
                while idx < _2019:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1994 + 100] = this.address
                mem[_1994 + 132] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1994 + (32 * _2019) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2952 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2968 = mem[_2952]
                require mem[_2952] <= test266151307()
                require _2952 + mem[_2952] + 31 < _2952 + return_data.size
                _2984 = mem[_2952 + mem[_2952]]
                require mem[_2952 + mem[_2952]] <= test266151307()
                require _2952 + ceil32(return_data.size) + (32 * mem[_2952 + mem[_2952]]) + 32 <= test266151307() and (32 * mem[_2952 + mem[_2952]]) + 32 >= 0
                mem[64] = _2952 + ceil32(return_data.size) + (32 * mem[_2952 + mem[_2952]]) + 32
                mem[_2952 + ceil32(return_data.size)] = _2984
                require _2968 + (32 * _2984) + 32 <= return_data.size
                idx = 0
                s = _2952 + _2968 + 32
                t = _2952 + ceil32(return_data.size) + 32
                while idx < _2984:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                require mem[(2 * ceil32(return_data.size)) + 512] - 1 < mem[(2 * ceil32(return_data.size)) + 512]
                _3866 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 512] - 1) + (2 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                mem[mem[64] + 68] = uint255(ext_call.return_data[0])
                mem[mem[64] + 100] = _1993
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_3866), 2 * ext_call.return_data[0], _1993, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4162 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_4162] == mem[_4162]
                require mem[_4162 + 32] == mem[_4162 + 32]
                require mem[_4162 + 64] == mem[_4162 + 64]
                if mem[_4162 + 64] <= 0:
                    revert with 0, 'amount too low'
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args PID, mem[_4162 + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalDeposits + mem[_4162 + 64] < totalDeposits:
                    revert with 0, 'SafeMath: addition overflow'
                totalDeposits += mem[_4162 + 64]
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
                _836 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                _879 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512] <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 544
                mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]
                require _836 + (32 * _879) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _836 + 544
                t = (4 * ceil32(return_data.size)) + 544
                while idx < _879:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _879 - 1 < _879
                _1995 = mem[(32 * _879 - 1) + (4 * ceil32(return_data.size)) + 544]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                mem[mem[64] + 36] = _1995
                mem[mem[64] + 68] = 160
                _2020 = mem[(2 * ceil32(return_data.size)) + 416]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 448
                t = mem[64] + 196
                while idx < _2020:
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
                    args 2 * ext_call.return_data[0], _1995, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2020) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2953 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2969 = mem[_2953]
                require mem[_2953] <= test266151307()
                require _2953 + mem[_2953] + 31 < _2953 + return_data.size
                _2985 = mem[_2953 + mem[_2953]]
                require mem[_2953 + mem[_2953]] <= test266151307()
                require _2953 + ceil32(return_data.size) + (32 * mem[_2953 + mem[_2953]]) + 32 <= test266151307() and (32 * mem[_2953 + mem[_2953]]) + 32 >= 0
                mem[64] = _2953 + ceil32(return_data.size) + (32 * mem[_2953 + mem[_2953]]) + 32
                mem[_2953 + ceil32(return_data.size)] = _2985
                require _2969 + (32 * _2985) + 32 <= return_data.size
                idx = 0
                s = _2953 + _2969 + 32
                t = _2953 + ceil32(return_data.size) + 32
                while idx < _2985:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3851 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[_3851 + 32 len 96] = call.data[calldata.size len 96]
                require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                require 0 < mem[_3851]
                mem[_3851 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                require 1 < mem[_3851]
                mem[_3851 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                require 2 < mem[_3851]
                mem[_3851 + 96] = stor11
                require mem[_3851] - 1 < mem[_3851]
                require 0 < mem[_3851]
                if mem[_3851 + 44 len 20] == mem[(32 * mem[_3851] - 1) + _3851 + 44 len 20]:
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[_3851] - 1 < mem[_3851]
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3851] - 1) + _3851 + 44 len 20], _1995, 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
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
                    mem[_3851 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3851 + 132] = uint255(ext_call.return_data[0])
                    mem[_3851 + 164] = 64
                    mem[_3851 + 196] = mem[_3851]
                    idx = 0
                    s = _3851 + 32
                    t = _3851 + 228
                    while idx < mem[_3851]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3851 + (32 * mem[_3851]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4667 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4678 = mem[_4667]
                    require mem[_4667] <= test266151307()
                    require _4667 + mem[_4667] + 31 < _4667 + return_data.size
                    _4690 = mem[_4667 + mem[_4667]]
                    require mem[_4667 + mem[_4667]] <= test266151307()
                    require _4667 + ceil32(return_data.size) + (32 * mem[_4667 + mem[_4667]]) + 32 <= test266151307() and (32 * mem[_4667 + mem[_4667]]) + 32 >= 0
                    mem[64] = _4667 + ceil32(return_data.size) + (32 * mem[_4667 + mem[_4667]]) + 32
                    mem[_4667 + ceil32(return_data.size)] = _4690
                    require _4678 + (32 * _4690) + 32 <= return_data.size
                    idx = 0
                    s = _4667 + _4678 + 32
                    t = _4667 + ceil32(return_data.size) + 32
                    while idx < _4690:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4690 - 1 < _4690
                    _5082 = mem[(32 * _4690 - 1) + _4667 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                    mem[mem[64] + 36] = _5082
                    mem[mem[64] + 68] = 160
                    _5095 = mem[_3851]
                    mem[mem[64] + 164] = mem[_3851]
                    idx = 0
                    s = _3851 + 32
                    t = mem[64] + 196
                    while idx < _5095:
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
                        args 2 * ext_call.return_data[0], _5082, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _5095) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5374 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5382 = mem[_5374]
                    require mem[_5374] <= test266151307()
                    require _5374 + mem[_5374] + 31 < _5374 + return_data.size
                    _5390 = mem[_5374 + mem[_5374]]
                    require mem[_5374 + mem[_5374]] <= test266151307()
                    require _5374 + ceil32(return_data.size) + (32 * mem[_5374 + mem[_5374]]) + 32 <= test266151307() and (32 * mem[_5374 + mem[_5374]]) + 32 >= 0
                    mem[64] = _5374 + ceil32(return_data.size) + (32 * mem[_5374 + mem[_5374]]) + 32
                    mem[_5374 + ceil32(return_data.size)] = _5390
                    require _5382 + (32 * _5390) + 32 <= return_data.size
                    idx = 0
                    s = _5374 + _5382 + 32
                    t = _5374 + ceil32(return_data.size) + 32
                    while idx < _5390:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[_3851] - 1 < mem[_3851]
                    _5657 = mem[(32 * mem[_3851] - 1) + _3851 + 32]
                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = _1995
                    mem[mem[64] + 100] = _5082
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_5657), _1995, _5082, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5687 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_5687] == mem[_5687]
                    require mem[_5687 + 32] == mem[_5687 + 32]
                    require mem[_5687 + 64] == mem[_5687 + 64]
                    if mem[_5687 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, mem[_5687 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_5687 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_5687 + 64]
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
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                    _827 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                    _873 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                    mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                    require _827 + (32 * _873) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _827 + 672
                    t = (4 * ceil32(return_data.size)) + 672
                    while idx < _873:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _873 - 1 < _873
                    _1985 = mem[(32 * _873 - 1) + (4 * ceil32(return_data.size)) + 672]
                    _1986 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1985
                    mem[mem[64] + 68] = 160
                    _2015 = mem[(2 * ceil32(return_data.size)) + 512]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = mem[64] + 196
                    while idx < _2015:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1986 + 100] = this.address
                    mem[_1986 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1986 + (32 * _2015) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2948 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2964 = mem[_2948]
                    require mem[_2948] <= test266151307()
                    require _2948 + mem[_2948] + 31 < _2948 + return_data.size
                    _2980 = mem[_2948 + mem[_2948]]
                    require mem[_2948 + mem[_2948]] <= test266151307()
                    require _2948 + ceil32(return_data.size) + (32 * mem[_2948 + mem[_2948]]) + 32 <= test266151307() and (32 * mem[_2948 + mem[_2948]]) + 32 >= 0
                    mem[64] = _2948 + ceil32(return_data.size) + (32 * mem[_2948 + mem[_2948]]) + 32
                    mem[_2948 + ceil32(return_data.size)] = _2980
                    require _2964 + (32 * _2980) + 32 <= return_data.size
                    idx = 0
                    s = _2948 + _2964 + 32
                    t = _2948 + ceil32(return_data.size) + 32
                    while idx < _2980:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[(2 * ceil32(return_data.size)) + 512] - 1 < mem[(2 * ceil32(return_data.size)) + 512]
                    _3862 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 512] - 1) + (2 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _1985
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3862), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1985, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4160 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_4160] == mem[_4160]
                    require mem[_4160 + 32] == mem[_4160 + 32]
                    require mem[_4160 + 64] == mem[_4160 + 64]
                    if mem[_4160 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, mem[_4160 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_4160 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_4160 + 64]
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
                    _828 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                    _874 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require _828 + (32 * _874) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _828 + 544
                    t = (4 * ceil32(return_data.size)) + 544
                    while idx < _874:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _874 - 1 < _874
                    _1987 = mem[(32 * _874 - 1) + (4 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1987
                    mem[mem[64] + 68] = 160
                    _2016 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _2016:
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1987, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2016) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2949 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2965 = mem[_2949]
                    require mem[_2949] <= test266151307()
                    require _2949 + mem[_2949] + 31 < _2949 + return_data.size
                    _2981 = mem[_2949 + mem[_2949]]
                    require mem[_2949 + mem[_2949]] <= test266151307()
                    require _2949 + ceil32(return_data.size) + (32 * mem[_2949 + mem[_2949]]) + 32 <= test266151307() and (32 * mem[_2949 + mem[_2949]]) + 32 >= 0
                    mem[64] = _2949 + ceil32(return_data.size) + (32 * mem[_2949 + mem[_2949]]) + 32
                    mem[_2949 + ceil32(return_data.size)] = _2981
                    require _2965 + (32 * _2981) + 32 <= return_data.size
                    idx = 0
                    s = _2949 + _2965 + 32
                    t = _2949 + ceil32(return_data.size) + 32
                    while idx < _2981:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3843 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_3843 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3843]
                    mem[_3843 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3843]
                    mem[_3843 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    require 2 < mem[_3843]
                    mem[_3843 + 96] = stor11
                    require mem[_3843] - 1 < mem[_3843]
                    require 0 < mem[_3843]
                    if mem[_3843 + 44 len 20] == mem[(32 * mem[_3843] - 1) + _3843 + 44 len 20]:
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_3843] - 1 < mem[_3843]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3843] - 1) + _3843 + 44 len 20], _1987, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3843 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3843 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[_3843 + 164] = 64
                        mem[_3843 + 196] = mem[_3843]
                        idx = 0
                        s = _3843 + 32
                        t = _3843 + 228
                        while idx < mem[_3843]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3843 + (32 * mem[_3843]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4665 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4676 = mem[_4665]
                        require mem[_4665] <= test266151307()
                        require _4665 + mem[_4665] + 31 < _4665 + return_data.size
                        _4688 = mem[_4665 + mem[_4665]]
                        require mem[_4665 + mem[_4665]] <= test266151307()
                        require _4665 + ceil32(return_data.size) + (32 * mem[_4665 + mem[_4665]]) + 32 <= test266151307() and (32 * mem[_4665 + mem[_4665]]) + 32 >= 0
                        mem[64] = _4665 + ceil32(return_data.size) + (32 * mem[_4665 + mem[_4665]]) + 32
                        mem[_4665 + ceil32(return_data.size)] = _4688
                        require _4676 + (32 * _4688) + 32 <= return_data.size
                        idx = 0
                        s = _4665 + _4676 + 32
                        t = _4665 + ceil32(return_data.size) + 32
                        while idx < _4688:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4688 - 1 < _4688
                        _5078 = mem[(32 * _4688 - 1) + _4665 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _5078
                        mem[mem[64] + 68] = 160
                        _5093 = mem[_3843]
                        mem[mem[64] + 164] = mem[_3843]
                        idx = 0
                        s = _3843 + 32
                        t = mem[64] + 196
                        while idx < _5093:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _5078, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _5093) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5372 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5380 = mem[_5372]
                        require mem[_5372] <= test266151307()
                        require _5372 + mem[_5372] + 31 < _5372 + return_data.size
                        _5388 = mem[_5372 + mem[_5372]]
                        require mem[_5372 + mem[_5372]] <= test266151307()
                        require _5372 + ceil32(return_data.size) + (32 * mem[_5372 + mem[_5372]]) + 32 <= test266151307() and (32 * mem[_5372 + mem[_5372]]) + 32 >= 0
                        mem[64] = _5372 + ceil32(return_data.size) + (32 * mem[_5372 + mem[_5372]]) + 32
                        mem[_5372 + ceil32(return_data.size)] = _5388
                        require _5380 + (32 * _5388) + 32 <= return_data.size
                        idx = 0
                        s = _5372 + _5380 + 32
                        t = _5372 + ceil32(return_data.size) + 32
                        while idx < _5388:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_3843] - 1 < mem[_3843]
                        _5653 = mem[(32 * mem[_3843] - 1) + _3843 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _1987
                        mem[mem[64] + 100] = _5078
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5653), _1987, _5078, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5685 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5685] == mem[_5685]
                        require mem[_5685 + 32] == mem[_5685 + 32]
                        require mem[_5685 + 64] == mem[_5685 + 64]
                        if mem[_5685 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5685 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5685 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5685 + 64]
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
                    mem[(4 * ceil32(return_data.size)) + 512] = 3
                    mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                        _831 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                        _875 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                        mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require _831 + (32 * _875) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _831 + 672
                        t = (6 * ceil32(return_data.size)) + 672
                        while idx < _875:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _875 - 1 < _875
                        _1989 = mem[(32 * _875 - 1) + (6 * ceil32(return_data.size)) + 672]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _875 - 1) + (6 * ceil32(return_data.size)) + 672]
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _875 - 1) + (6 * ceil32(return_data.size)) + 672], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2950 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2966 = mem[_2950]
                        require mem[_2950] <= test266151307()
                        require _2950 + mem[_2950] + 31 < _2950 + return_data.size
                        _2982 = mem[_2950 + mem[_2950]]
                        require mem[_2950 + mem[_2950]] <= test266151307()
                        require _2950 + ceil32(return_data.size) + (32 * mem[_2950 + mem[_2950]]) + 32 <= test266151307() and (32 * mem[_2950 + mem[_2950]]) + 32 >= 0
                        mem[64] = _2950 + ceil32(return_data.size) + (32 * mem[_2950 + mem[_2950]]) + 32
                        mem[_2950 + ceil32(return_data.size)] = _2982
                        require _2966 + (32 * _2982) + 32 <= return_data.size
                        idx = 0
                        s = _2950 + _2966 + 32
                        t = _2950 + ceil32(return_data.size) + 32
                        while idx < _2982:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[(4 * ceil32(return_data.size)) + 512] - 1 < mem[(4 * ceil32(return_data.size)) + 512]
                        _3864 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 512] - 1) + (4 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _1989
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3864), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1989, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_4161] == mem[_4161]
                        require mem[_4161 + 32] == mem[_4161 + 32]
                        require mem[_4161 + 64] == mem[_4161 + 64]
                        if mem[_4161 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_4161 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_4161 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_4161 + 64]
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
                    _832 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                    _876 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                    require _832 + (32 * _876) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _832 + 544
                    t = (6 * ceil32(return_data.size)) + 544
                    while idx < _876:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _876 - 1 < _876
                    _1991 = mem[(32 * _876 - 1) + (6 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = mem[(32 * _876 - 1) + (6 * ceil32(return_data.size)) + 544]
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _876 - 1) + (6 * ceil32(return_data.size)) + 544], Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2951 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2967 = mem[_2951]
                    require mem[_2951] <= test266151307()
                    require _2951 + mem[_2951] + 31 < _2951 + return_data.size
                    _2983 = mem[_2951 + mem[_2951]]
                    require mem[_2951 + mem[_2951]] <= test266151307()
                    require _2951 + ceil32(return_data.size) + (32 * mem[_2951 + mem[_2951]]) + 32 <= test266151307() and (32 * mem[_2951 + mem[_2951]]) + 32 >= 0
                    mem[64] = _2951 + ceil32(return_data.size) + (32 * mem[_2951 + mem[_2951]]) + 32
                    mem[_2951 + ceil32(return_data.size)] = _2983
                    require _2967 + (32 * _2983) + 32 <= return_data.size
                    idx = 0
                    s = _2951 + _2967 + 32
                    t = _2951 + ceil32(return_data.size) + 32
                    while idx < _2983:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3847 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_3847 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3847]
                    mem[_3847 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3847]
                    mem[_3847 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    require 2 < mem[_3847]
                    mem[_3847 + 96] = stor11
                    require mem[_3847] - 1 < mem[_3847]
                    require 0 < mem[_3847]
                    if mem[_3847 + 44 len 20] == mem[(32 * mem[_3847] - 1) + _3847 + 44 len 20]:
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_3847] - 1 < mem[_3847]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3847] - 1) + _3847 + 44 len 20], _1991, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3847 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3847 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[_3847 + 164] = 64
                        mem[_3847 + 196] = mem[_3847]
                        idx = 0
                        s = _3847 + 32
                        t = _3847 + 228
                        while idx < mem[_3847]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3847 + (32 * mem[_3847]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4666 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4677 = mem[_4666]
                        require mem[_4666] <= test266151307()
                        require _4666 + mem[_4666] + 31 < _4666 + return_data.size
                        _4689 = mem[_4666 + mem[_4666]]
                        require mem[_4666 + mem[_4666]] <= test266151307()
                        require _4666 + ceil32(return_data.size) + (32 * mem[_4666 + mem[_4666]]) + 32 <= test266151307() and (32 * mem[_4666 + mem[_4666]]) + 32 >= 0
                        mem[64] = _4666 + ceil32(return_data.size) + (32 * mem[_4666 + mem[_4666]]) + 32
                        mem[_4666 + ceil32(return_data.size)] = _4689
                        require _4677 + (32 * _4689) + 32 <= return_data.size
                        idx = 0
                        s = _4666 + _4677 + 32
                        t = _4666 + ceil32(return_data.size) + 32
                        while idx < _4689:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4689 - 1 < _4689
                        _5080 = mem[(32 * _4689 - 1) + _4666 + ceil32(return_data.size) + 32]
                        _5081 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _5080
                        mem[mem[64] + 68] = 160
                        _5094 = mem[_3847]
                        mem[mem[64] + 164] = mem[_3847]
                        idx = 0
                        s = _3847 + 32
                        t = mem[64] + 196
                        while idx < _5094:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5081 + 100] = this.address
                        mem[_5081 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5081 + (32 * _5094) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5373 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5381 = mem[_5373]
                        require mem[_5373] <= test266151307()
                        require _5373 + mem[_5373] + 31 < _5373 + return_data.size
                        _5389 = mem[_5373 + mem[_5373]]
                        require mem[_5373 + mem[_5373]] <= test266151307()
                        require _5373 + ceil32(return_data.size) + (32 * mem[_5373 + mem[_5373]]) + 32 <= test266151307() and (32 * mem[_5373 + mem[_5373]]) + 32 >= 0
                        mem[64] = _5373 + ceil32(return_data.size) + (32 * mem[_5373 + mem[_5373]]) + 32
                        mem[_5373 + ceil32(return_data.size)] = _5389
                        require _5381 + (32 * _5389) + 32 <= return_data.size
                        idx = 0
                        s = _5373 + _5381 + 32
                        t = _5373 + ceil32(return_data.size) + 32
                        while idx < _5389:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_3847] - 1 < mem[_3847]
                        _5655 = mem[(32 * mem[_3847] - 1) + _3847 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _1991
                        mem[mem[64] + 100] = _5080
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5655), _1991, _5080, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5686 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5686] == mem[_5686]
                        require mem[_5686 + 32] == mem[_5686 + 32]
                        require mem[_5686 + 64] == mem[_5686 + 64]
                        if mem[_5686 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5686 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5686 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5686 + 64]
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
                    mem[(2 * ceil32(return_data.size)) + 512] = 3
                    mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                    _812 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                    _865 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672
                    mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                    require _812 + (32 * _865) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _812 + 672
                    t = (4 * ceil32(return_data.size)) + 672
                    while idx < _865:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _865 - 1 < _865
                    _1973 = mem[(32 * _865 - 1) + (4 * ceil32(return_data.size)) + 672]
                    _1974 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1973
                    mem[mem[64] + 68] = 160
                    _2009 = mem[(2 * ceil32(return_data.size)) + 512]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 544
                    t = mem[64] + 196
                    while idx < _2009:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1974 + 100] = this.address
                    mem[_1974 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1974 + (32 * _2009) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2940 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2958 = mem[_2940]
                    require mem[_2940] <= test266151307()
                    require _2940 + mem[_2940] + 31 < _2940 + return_data.size
                    _2974 = mem[_2940 + mem[_2940]]
                    require mem[_2940 + mem[_2940]] <= test266151307()
                    require _2940 + ceil32(return_data.size) + (32 * mem[_2940 + mem[_2940]]) + 32 <= test266151307() and (32 * mem[_2940 + mem[_2940]]) + 32 >= 0
                    mem[64] = _2940 + ceil32(return_data.size) + (32 * mem[_2940 + mem[_2940]]) + 32
                    mem[_2940 + ceil32(return_data.size)] = _2974
                    require _2958 + (32 * _2974) + 32 <= return_data.size
                    idx = 0
                    s = _2940 + _2958 + 32
                    t = _2940 + ceil32(return_data.size) + 32
                    while idx < _2974:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                    require mem[(2 * ceil32(return_data.size)) + 512] - 1 < mem[(2 * ceil32(return_data.size)) + 512]
                    _3856 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 512] - 1) + (2 * ceil32(return_data.size)) + 544]
                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 100] = _1973
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_3856), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1973, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4157 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_4157] == mem[_4157]
                    require mem[_4157 + 32] == mem[_4157 + 32]
                    require mem[_4157 + 64] == mem[_4157 + 64]
                    if mem[_4157 + 64] <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args PID, mem[_4157 + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if totalDeposits + mem[_4157 + 64] < totalDeposits:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDeposits += mem[_4157 + 64]
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
                    _813 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                    _866 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require _813 + (32 * _866) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _813 + 544
                    t = (4 * ceil32(return_data.size)) + 544
                    while idx < _866:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _866 - 1 < _866
                    _1975 = mem[(32 * _866 - 1) + (4 * ceil32(return_data.size)) + 544]
                    _1976 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1975
                    mem[mem[64] + 68] = 160
                    _2010 = mem[(2 * ceil32(return_data.size)) + 416]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 448
                    t = mem[64] + 196
                    while idx < _2010:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1976 + 100] = this.address
                    mem[_1976 + 132] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1976 + (32 * _2010) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2941 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2959 = mem[_2941]
                    require mem[_2941] <= test266151307()
                    require _2941 + mem[_2941] + 31 < _2941 + return_data.size
                    _2975 = mem[_2941 + mem[_2941]]
                    require mem[_2941 + mem[_2941]] <= test266151307()
                    require _2941 + ceil32(return_data.size) + (32 * mem[_2941 + mem[_2941]]) + 32 <= test266151307() and (32 * mem[_2941 + mem[_2941]]) + 32 >= 0
                    mem[64] = _2941 + ceil32(return_data.size) + (32 * mem[_2941 + mem[_2941]]) + 32
                    mem[_2941 + ceil32(return_data.size)] = _2975
                    require _2959 + (32 * _2975) + 32 <= return_data.size
                    idx = 0
                    s = _2941 + _2959 + 32
                    t = _2941 + ceil32(return_data.size) + 32
                    while idx < _2975:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3831 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_3831 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3831]
                    mem[_3831 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3831]
                    mem[_3831 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    require 2 < mem[_3831]
                    mem[_3831 + 96] = stor11
                    require mem[_3831] - 1 < mem[_3831]
                    require 0 < mem[_3831]
                    if mem[_3831 + 44 len 20] == mem[(32 * mem[_3831] - 1) + _3831 + 44 len 20]:
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_3831] - 1 < mem[_3831]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3831] - 1) + _3831 + 44 len 20], _1975, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3831 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3831 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[_3831 + 164] = 64
                        mem[_3831 + 196] = mem[_3831]
                        idx = 0
                        s = _3831 + 32
                        t = _3831 + 228
                        while idx < mem[_3831]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3831 + (32 * mem[_3831]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4658 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4672 = mem[_4658]
                        require mem[_4658] <= test266151307()
                        require _4658 + mem[_4658] + 31 < _4658 + return_data.size
                        _4684 = mem[_4658 + mem[_4658]]
                        require mem[_4658 + mem[_4658]] <= test266151307()
                        require _4658 + ceil32(return_data.size) + (32 * mem[_4658 + mem[_4658]]) + 32 <= test266151307() and (32 * mem[_4658 + mem[_4658]]) + 32 >= 0
                        mem[64] = _4658 + ceil32(return_data.size) + (32 * mem[_4658 + mem[_4658]]) + 32
                        mem[_4658 + ceil32(return_data.size)] = _4684
                        require _4672 + (32 * _4684) + 32 <= return_data.size
                        idx = 0
                        s = _4658 + _4672 + 32
                        t = _4658 + ceil32(return_data.size) + 32
                        while idx < _4684:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4684 - 1 < _4684
                        _5072 = mem[(32 * _4684 - 1) + _4658 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _5072
                        mem[mem[64] + 68] = 160
                        _5090 = mem[_3831]
                        mem[mem[64] + 164] = mem[_3831]
                        idx = 0
                        s = _3831 + 32
                        t = mem[64] + 196
                        while idx < _5090:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _5072, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _5090) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5368 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5377 = mem[_5368]
                        require mem[_5368] <= test266151307()
                        require _5368 + mem[_5368] + 31 < _5368 + return_data.size
                        _5385 = mem[_5368 + mem[_5368]]
                        require mem[_5368 + mem[_5368]] <= test266151307()
                        require _5368 + ceil32(return_data.size) + (32 * mem[_5368 + mem[_5368]]) + 32 <= test266151307() and (32 * mem[_5368 + mem[_5368]]) + 32 >= 0
                        mem[64] = _5368 + ceil32(return_data.size) + (32 * mem[_5368 + mem[_5368]]) + 32
                        mem[_5368 + ceil32(return_data.size)] = _5385
                        require _5377 + (32 * _5385) + 32 <= return_data.size
                        idx = 0
                        s = _5368 + _5377 + 32
                        t = _5368 + ceil32(return_data.size) + 32
                        while idx < _5385:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[_3831] - 1 < mem[_3831]
                        _5647 = mem[(32 * mem[_3831] - 1) + _3831 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _1975
                        mem[mem[64] + 100] = _5072
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5647), _1975, _5072, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5682 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5682] == mem[_5682]
                        require mem[_5682 + 32] == mem[_5682 + 32]
                        require mem[_5682 + 64] == mem[_5682 + 64]
                        if mem[_5682 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5682 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5682 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5682 + 64]
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
                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                        mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                        _803 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                        _860 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                        mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                        require _803 + (32 * _860) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _803 + 672
                        t = (4 * ceil32(return_data.size)) + 672
                        while idx < _860:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _860 - 1 < _860
                        _1965 = mem[(32 * _860 - 1) + (4 * ceil32(return_data.size)) + 672]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1965
                        mem[mem[64] + 68] = 160
                        _2005 = mem[(2 * ceil32(return_data.size)) + 512]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = mem[64] + 196
                        while idx < _2005:
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1965, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2005) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2936 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2954 = mem[_2936]
                        require mem[_2936] <= test266151307()
                        require _2936 + mem[_2936] + 31 < _2936 + return_data.size
                        _2970 = mem[_2936 + mem[_2936]]
                        require mem[_2936 + mem[_2936]] <= test266151307()
                        require _2936 + ceil32(return_data.size) + (32 * mem[_2936 + mem[_2936]]) + 32 <= test266151307() and (32 * mem[_2936 + mem[_2936]]) + 32 >= 0
                        mem[64] = _2936 + ceil32(return_data.size) + (32 * mem[_2936 + mem[_2936]]) + 32
                        mem[_2936 + ceil32(return_data.size)] = _2970
                        require _2954 + (32 * _2970) + 32 <= return_data.size
                        idx = 0
                        s = _2936 + _2954 + 32
                        t = _2936 + ceil32(return_data.size) + 32
                        while idx < _2970:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[(2 * ceil32(return_data.size)) + 512] - 1 < mem[(2 * ceil32(return_data.size)) + 512]
                        _3852 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 512] - 1) + (2 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _1965
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3852), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1965, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4155 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_4155] == mem[_4155]
                        require mem[_4155 + 32] == mem[_4155 + 32]
                        require mem[_4155 + 64] == mem[_4155 + 64]
                        if mem[_4155 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_4155 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_4155 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_4155 + 64]
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
                        _804 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                        _861 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require _804 + (32 * _861) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _804 + 544
                        t = (4 * ceil32(return_data.size)) + 544
                        while idx < _861:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _861 - 1 < _861
                        _1967 = mem[(32 * _861 - 1) + (4 * ceil32(return_data.size)) + 544]
                        _1968 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1967
                        mem[mem[64] + 68] = 160
                        _2006 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _2006:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1968 + 100] = this.address
                        mem[_1968 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1968 + (32 * _2006) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2937 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2955 = mem[_2937]
                        require mem[_2937] <= test266151307()
                        require _2937 + mem[_2937] + 31 < _2937 + return_data.size
                        _2971 = mem[_2937 + mem[_2937]]
                        require mem[_2937 + mem[_2937]] <= test266151307()
                        require _2937 + ceil32(return_data.size) + (32 * mem[_2937 + mem[_2937]]) + 32 <= test266151307() and (32 * mem[_2937 + mem[_2937]]) + 32 >= 0
                        mem[64] = _2937 + ceil32(return_data.size) + (32 * mem[_2937 + mem[_2937]]) + 32
                        mem[_2937 + ceil32(return_data.size)] = _2971
                        require _2955 + (32 * _2971) + 32 <= return_data.size
                        idx = 0
                        s = _2937 + _2955 + 32
                        t = _2937 + ceil32(return_data.size) + 32
                        while idx < _2971:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3823 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_3823 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3823]
                        mem[_3823 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3823]
                        mem[_3823 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 2 < mem[_3823]
                        mem[_3823 + 96] = stor11
                        require mem[_3823] - 1 < mem[_3823]
                        require 0 < mem[_3823]
                        if mem[_3823 + 44 len 20] == mem[(32 * mem[_3823] - 1) + _3823 + 44 len 20]:
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[_3823] - 1 < mem[_3823]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3823] - 1) + _3823 + 44 len 20], _1967, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_3823 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3823 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_3823 + 164] = 64
                            mem[_3823 + 196] = mem[_3823]
                            idx = 0
                            s = _3823 + 32
                            t = _3823 + 228
                            while idx < mem[_3823]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3823 + (32 * mem[_3823]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4656 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4670 = mem[_4656]
                            require mem[_4656] <= test266151307()
                            require _4656 + mem[_4656] + 31 < _4656 + return_data.size
                            _4682 = mem[_4656 + mem[_4656]]
                            require mem[_4656 + mem[_4656]] <= test266151307()
                            require _4656 + ceil32(return_data.size) + (32 * mem[_4656 + mem[_4656]]) + 32 <= test266151307() and (32 * mem[_4656 + mem[_4656]]) + 32 >= 0
                            mem[64] = _4656 + ceil32(return_data.size) + (32 * mem[_4656 + mem[_4656]]) + 32
                            mem[_4656 + ceil32(return_data.size)] = _4682
                            require _4670 + (32 * _4682) + 32 <= return_data.size
                            idx = 0
                            s = _4656 + _4670 + 32
                            t = _4656 + ceil32(return_data.size) + 32
                            while idx < _4682:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4682 - 1 < _4682
                            _5068 = mem[(32 * _4682 - 1) + _4656 + ceil32(return_data.size) + 32]
                            _5069 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _5068
                            mem[mem[64] + 68] = 160
                            _5088 = mem[_3823]
                            mem[mem[64] + 164] = mem[_3823]
                            idx = 0
                            s = _3823 + 32
                            t = mem[64] + 196
                            while idx < _5088:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5069 + 100] = this.address
                            mem[_5069 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5069 + (32 * _5088) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5366 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5375 = mem[_5366]
                            require mem[_5366] <= test266151307()
                            require _5366 + mem[_5366] + 31 < _5366 + return_data.size
                            _5383 = mem[_5366 + mem[_5366]]
                            require mem[_5366 + mem[_5366]] <= test266151307()
                            require _5366 + ceil32(return_data.size) + (32 * mem[_5366 + mem[_5366]]) + 32 <= test266151307() and (32 * mem[_5366 + mem[_5366]]) + 32 >= 0
                            mem[64] = _5366 + ceil32(return_data.size) + (32 * mem[_5366 + mem[_5366]]) + 32
                            mem[_5366 + ceil32(return_data.size)] = _5383
                            require _5375 + (32 * _5383) + 32 <= return_data.size
                            idx = 0
                            s = _5366 + _5375 + 32
                            t = _5366 + ceil32(return_data.size) + 32
                            while idx < _5383:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[_3823] - 1 < mem[_3823]
                            _5643 = mem[(32 * mem[_3823] - 1) + _3823 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _1967
                            mem[mem[64] + 100] = _5068
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5643), _1967, _5068, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5680 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5680] == mem[_5680]
                            require mem[_5680 + 32] == mem[_5680 + 32]
                            require mem[_5680 + 64] == mem[_5680 + 64]
                            if mem[_5680 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5680 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5680 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5680 + 64]
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
                        mem[(4 * ceil32(return_data.size)) + 512] = 3
                        mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                            _808 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                            _863 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require _808 + (32 * _863) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _808 + 672
                            t = (6 * ceil32(return_data.size)) + 672
                            while idx < _863:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _863 - 1 < _863
                            _1969 = mem[(32 * _863 - 1) + (6 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _1969
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1969, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2938 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2956 = mem[_2938]
                            require mem[_2938] <= test266151307()
                            require _2938 + mem[_2938] + 31 < _2938 + return_data.size
                            _2972 = mem[_2938 + mem[_2938]]
                            require mem[_2938 + mem[_2938]] <= test266151307()
                            require _2938 + ceil32(return_data.size) + (32 * mem[_2938 + mem[_2938]]) + 32 <= test266151307() and (32 * mem[_2938 + mem[_2938]]) + 32 >= 0
                            mem[64] = _2938 + ceil32(return_data.size) + (32 * mem[_2938 + mem[_2938]]) + 32
                            mem[_2938 + ceil32(return_data.size)] = _2972
                            require _2956 + (32 * _2972) + 32 <= return_data.size
                            idx = 0
                            s = _2938 + _2956 + 32
                            t = _2938 + ceil32(return_data.size) + 32
                            while idx < _2972:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[(4 * ceil32(return_data.size)) + 512] - 1 < mem[(4 * ceil32(return_data.size)) + 512]
                            _3854 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 512] - 1) + (4 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _1969
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_3854), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1969, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4156 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_4156] == mem[_4156]
                            require mem[_4156 + 32] == mem[_4156 + 32]
                            require mem[_4156 + 64] == mem[_4156 + 64]
                            if mem[_4156 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_4156 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_4156 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_4156 + 64]
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
                        _809 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                        _864 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require _809 + (32 * _864) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _809 + 544
                        t = (6 * ceil32(return_data.size)) + 544
                        while idx < _864:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _864 - 1 < _864
                        _1971 = mem[(32 * _864 - 1) + (6 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1971
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1971, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2939 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2957 = mem[_2939]
                        require mem[_2939] <= test266151307()
                        require _2939 + mem[_2939] + 31 < _2939 + return_data.size
                        _2973 = mem[_2939 + mem[_2939]]
                        require mem[_2939 + mem[_2939]] <= test266151307()
                        require _2939 + ceil32(return_data.size) + (32 * mem[_2939 + mem[_2939]]) + 32 <= test266151307() and (32 * mem[_2939 + mem[_2939]]) + 32 >= 0
                        mem[64] = _2939 + ceil32(return_data.size) + (32 * mem[_2939 + mem[_2939]]) + 32
                        mem[_2939 + ceil32(return_data.size)] = _2973
                        require _2957 + (32 * _2973) + 32 <= return_data.size
                        idx = 0
                        s = _2939 + _2957 + 32
                        t = _2939 + ceil32(return_data.size) + 32
                        while idx < _2973:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3827 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_3827 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3827]
                        mem[_3827 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3827]
                        mem[_3827 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 2 < mem[_3827]
                        mem[_3827 + 96] = stor11
                        require mem[_3827] - 1 < mem[_3827]
                        require 0 < mem[_3827]
                        if mem[_3827 + 44 len 20] == mem[(32 * mem[_3827] - 1) + _3827 + 44 len 20]:
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_3827] - 1 < mem[_3827]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3827] - 1) + _3827 + 44 len 20], _1971, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_3827 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3827 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_3827 + 164] = 64
                            mem[_3827 + 196] = mem[_3827]
                            idx = 0
                            s = _3827 + 32
                            t = _3827 + 228
                            while idx < mem[_3827]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3827 + (32 * mem[_3827]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4657 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4671 = mem[_4657]
                            require mem[_4657] <= test266151307()
                            require _4657 + mem[_4657] + 31 < _4657 + return_data.size
                            _4683 = mem[_4657 + mem[_4657]]
                            require mem[_4657 + mem[_4657]] <= test266151307()
                            require _4657 + ceil32(return_data.size) + (32 * mem[_4657 + mem[_4657]]) + 32 <= test266151307() and (32 * mem[_4657 + mem[_4657]]) + 32 >= 0
                            mem[64] = _4657 + ceil32(return_data.size) + (32 * mem[_4657 + mem[_4657]]) + 32
                            mem[_4657 + ceil32(return_data.size)] = _4683
                            require _4671 + (32 * _4683) + 32 <= return_data.size
                            idx = 0
                            s = _4657 + _4671 + 32
                            t = _4657 + ceil32(return_data.size) + 32
                            while idx < _4683:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4683 - 1 < _4683
                            _5070 = mem[(32 * _4683 - 1) + _4657 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _5070
                            mem[mem[64] + 68] = 160
                            _5089 = mem[_3827]
                            mem[mem[64] + 164] = mem[_3827]
                            idx = 0
                            s = _3827 + 32
                            t = mem[64] + 196
                            while idx < _5089:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _5070, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _5089) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5367 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5376 = mem[_5367]
                            require mem[_5367] <= test266151307()
                            require _5367 + mem[_5367] + 31 < _5367 + return_data.size
                            _5384 = mem[_5367 + mem[_5367]]
                            require mem[_5367 + mem[_5367]] <= test266151307()
                            require _5367 + ceil32(return_data.size) + (32 * mem[_5367 + mem[_5367]]) + 32 <= test266151307() and (32 * mem[_5367 + mem[_5367]]) + 32 >= 0
                            mem[64] = _5367 + ceil32(return_data.size) + (32 * mem[_5367 + mem[_5367]]) + 32
                            mem[_5367 + ceil32(return_data.size)] = _5384
                            require _5376 + (32 * _5384) + 32 <= return_data.size
                            idx = 0
                            s = _5367 + _5376 + 32
                            t = _5367 + ceil32(return_data.size) + 32
                            while idx < _5384:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_3827] - 1 < mem[_3827]
                            _5645 = mem[(32 * mem[_3827] - 1) + _3827 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _1971
                            mem[mem[64] + 100] = _5070
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5645), _1971, _5070, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5681 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5681] == mem[_5681]
                            require mem[_5681 + 32] == mem[_5681 + 32]
                            require mem[_5681 + 64] == mem[_5681 + 64]
                            if mem[_5681 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5681 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5681 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5681 + 64]
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
                    mem[(4 * ceil32(return_data.size)) + 512] = 3
                    mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                    mem[(4 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                        _823 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                        _871 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672
                        mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                        require _823 + (32 * _871) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _823 + 672
                        t = (6 * ceil32(return_data.size)) + 672
                        while idx < _871:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _871 - 1 < _871
                        _1981 = mem[(32 * _871 - 1) + (6 * ceil32(return_data.size)) + 672]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = mem[(32 * _871 - 1) + (6 * ceil32(return_data.size)) + 672]
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), mem[(32 * _871 - 1) + (6 * ceil32(return_data.size)) + 672], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2946 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2962 = mem[_2946]
                        require mem[_2946] <= test266151307()
                        require _2946 + mem[_2946] + 31 < _2946 + return_data.size
                        _2978 = mem[_2946 + mem[_2946]]
                        require mem[_2946 + mem[_2946]] <= test266151307()
                        require _2946 + ceil32(return_data.size) + (32 * mem[_2946 + mem[_2946]]) + 32 <= test266151307() and (32 * mem[_2946 + mem[_2946]]) + 32 >= 0
                        mem[64] = _2946 + ceil32(return_data.size) + (32 * mem[_2946 + mem[_2946]]) + 32
                        mem[_2946 + ceil32(return_data.size)] = _2978
                        require _2962 + (32 * _2978) + 32 <= return_data.size
                        idx = 0
                        s = _2946 + _2962 + 32
                        t = _2946 + ceil32(return_data.size) + 32
                        while idx < _2978:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[(4 * ceil32(return_data.size)) + 512] - 1 < mem[(4 * ceil32(return_data.size)) + 512]
                        _3860 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 512] - 1) + (4 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 100] = _1981
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_3860), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1981, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_4159] == mem[_4159]
                        require mem[_4159 + 32] == mem[_4159 + 32]
                        require mem[_4159 + 64] == mem[_4159 + 64]
                        if mem[_4159 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_4159 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_4159 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_4159 + 64]
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
                    _824 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                    _872 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544
                    mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                    require _824 + (32 * _872) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _824 + 544
                    t = (6 * ceil32(return_data.size)) + 544
                    while idx < _872:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _872 - 1 < _872
                    _1983 = mem[(32 * _872 - 1) + (6 * ceil32(return_data.size)) + 544]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                    mem[mem[64] + 36] = _1983
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
                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _1983, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2947 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2963 = mem[_2947]
                    require mem[_2947] <= test266151307()
                    require _2947 + mem[_2947] + 31 < _2947 + return_data.size
                    _2979 = mem[_2947 + mem[_2947]]
                    require mem[_2947 + mem[_2947]] <= test266151307()
                    require _2947 + ceil32(return_data.size) + (32 * mem[_2947 + mem[_2947]]) + 32 <= test266151307() and (32 * mem[_2947 + mem[_2947]]) + 32 >= 0
                    mem[64] = _2947 + ceil32(return_data.size) + (32 * mem[_2947 + mem[_2947]]) + 32
                    mem[_2947 + ceil32(return_data.size)] = _2979
                    require _2963 + (32 * _2979) + 32 <= return_data.size
                    idx = 0
                    s = _2947 + _2963 + 32
                    t = _2947 + ceil32(return_data.size) + 32
                    while idx < _2979:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3839 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_3839 + 32 len 96] = call.data[calldata.size len 96]
                    require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                    require 0 < mem[_3839]
                    mem[_3839 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                    require 1 < mem[_3839]
                    mem[_3839 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    require 2 < mem[_3839]
                    mem[_3839 + 96] = stor11
                    require mem[_3839] - 1 < mem[_3839]
                    require 0 < mem[_3839]
                    if mem[_3839 + 44 len 20] == mem[(32 * mem[_3839] - 1) + _3839 + 44 len 20]:
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_3839] - 1 < mem[_3839]
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3839] - 1) + _3839 + 44 len 20], _1983, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                        mem[_3839 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_3839 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[_3839 + 164] = 64
                        mem[_3839 + 196] = mem[_3839]
                        idx = 0
                        s = _3839 + 32
                        t = _3839 + 228
                        while idx < mem[_3839]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _3839 + (32 * mem[_3839]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4664 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4675 = mem[_4664]
                        require mem[_4664] <= test266151307()
                        require _4664 + mem[_4664] + 31 < _4664 + return_data.size
                        _4687 = mem[_4664 + mem[_4664]]
                        require mem[_4664 + mem[_4664]] <= test266151307()
                        require _4664 + ceil32(return_data.size) + (32 * mem[_4664 + mem[_4664]]) + 32 <= test266151307() and (32 * mem[_4664 + mem[_4664]]) + 32 >= 0
                        mem[64] = _4664 + ceil32(return_data.size) + (32 * mem[_4664 + mem[_4664]]) + 32
                        mem[_4664 + ceil32(return_data.size)] = _4687
                        require _4675 + (32 * _4687) + 32 <= return_data.size
                        idx = 0
                        s = _4664 + _4675 + 32
                        t = _4664 + ceil32(return_data.size) + 32
                        while idx < _4687:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _4687 - 1 < _4687
                        _5076 = mem[(32 * _4687 - 1) + _4664 + ceil32(return_data.size) + 32]
                        _5077 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _5076
                        mem[mem[64] + 68] = 160
                        _5092 = mem[_3839]
                        mem[mem[64] + 164] = mem[_3839]
                        idx = 0
                        s = _3839 + 32
                        t = mem[64] + 196
                        while idx < _5092:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5077 + 100] = this.address
                        mem[_5077 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5077 + (32 * _5092) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5371 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5379 = mem[_5371]
                        require mem[_5371] <= test266151307()
                        require _5371 + mem[_5371] + 31 < _5371 + return_data.size
                        _5387 = mem[_5371 + mem[_5371]]
                        require mem[_5371 + mem[_5371]] <= test266151307()
                        require _5371 + ceil32(return_data.size) + (32 * mem[_5371 + mem[_5371]]) + 32 <= test266151307() and (32 * mem[_5371 + mem[_5371]]) + 32 >= 0
                        mem[64] = _5371 + ceil32(return_data.size) + (32 * mem[_5371 + mem[_5371]]) + 32
                        mem[_5371 + ceil32(return_data.size)] = _5387
                        require _5379 + (32 * _5387) + 32 <= return_data.size
                        idx = 0
                        s = _5371 + _5379 + 32
                        t = _5371 + ceil32(return_data.size) + 32
                        while idx < _5387:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                        require mem[_3839] - 1 < mem[_3839]
                        _5651 = mem[(32 * mem[_3839] - 1) + _3839 + 32]
                        mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = _1983
                        mem[mem[64] + 100] = _5076
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5651), _1983, _5076, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5684 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5684] == mem[_5684]
                        require mem[_5684 + 32] == mem[_5684 + 32]
                        require mem[_5684 + 64] == mem[_5684 + 64]
                        if mem[_5684 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5684 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5684 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5684 + 64]
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
                        mem[(4 * ceil32(return_data.size)) + 512] = 3
                        mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                            _816 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                            _867 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require _816 + (32 * _867) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _816 + 672
                            t = (6 * ceil32(return_data.size)) + 672
                            while idx < _867:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _867 - 1 < _867
                            _1977 = mem[(32 * _867 - 1) + (6 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _1977
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1977, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2942 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2960 = mem[_2942]
                            require mem[_2942] <= test266151307()
                            require _2942 + mem[_2942] + 31 < _2942 + return_data.size
                            _2976 = mem[_2942 + mem[_2942]]
                            require mem[_2942 + mem[_2942]] <= test266151307()
                            require _2942 + ceil32(return_data.size) + (32 * mem[_2942 + mem[_2942]]) + 32 <= test266151307() and (32 * mem[_2942 + mem[_2942]]) + 32 >= 0
                            mem[64] = _2942 + ceil32(return_data.size) + (32 * mem[_2942 + mem[_2942]]) + 32
                            mem[_2942 + ceil32(return_data.size)] = _2976
                            require _2960 + (32 * _2976) + 32 <= return_data.size
                            idx = 0
                            s = _2942 + _2960 + 32
                            t = _2942 + ceil32(return_data.size) + 32
                            while idx < _2976:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[(4 * ceil32(return_data.size)) + 512] - 1 < mem[(4 * ceil32(return_data.size)) + 512]
                            _3858 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 512] - 1) + (4 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _1977
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_3858), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1977, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4158 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_4158] == mem[_4158]
                            require mem[_4158 + 32] == mem[_4158 + 32]
                            require mem[_4158 + 64] == mem[_4158 + 64]
                            if mem[_4158 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_4158 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_4158 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_4158 + 64]
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
                        _817 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                        _868 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require _817 + (32 * _868) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _817 + 544
                        t = (6 * ceil32(return_data.size)) + 544
                        while idx < _868:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _868 - 1 < _868
                        _1979 = mem[(32 * _868 - 1) + (6 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _1979
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _1979, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2943 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2961 = mem[_2943]
                        require mem[_2943] <= test266151307()
                        require _2943 + mem[_2943] + 31 < _2943 + return_data.size
                        _2977 = mem[_2943 + mem[_2943]]
                        require mem[_2943 + mem[_2943]] <= test266151307()
                        require _2943 + ceil32(return_data.size) + (32 * mem[_2943 + mem[_2943]]) + 32 <= test266151307() and (32 * mem[_2943 + mem[_2943]]) + 32 >= 0
                        mem[64] = _2943 + ceil32(return_data.size) + (32 * mem[_2943 + mem[_2943]]) + 32
                        mem[_2943 + ceil32(return_data.size)] = _2977
                        require _2961 + (32 * _2977) + 32 <= return_data.size
                        idx = 0
                        s = _2943 + _2961 + 32
                        t = _2943 + ceil32(return_data.size) + 32
                        while idx < _2977:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _3835 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_3835 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_3835]
                        mem[_3835 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_3835]
                        mem[_3835 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 2 < mem[_3835]
                        mem[_3835 + 96] = stor11
                        require mem[_3835] - 1 < mem[_3835]
                        require 0 < mem[_3835]
                        if mem[_3835 + 44 len 20] == mem[(32 * mem[_3835] - 1) + _3835 + 44 len 20]:
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_3835] - 1 < mem[_3835]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_3835] - 1) + _3835 + 44 len 20], _1979, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_3835 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_3835 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_3835 + 164] = 64
                            mem[_3835 + 196] = mem[_3835]
                            idx = 0
                            s = _3835 + 32
                            t = _3835 + 228
                            while idx < mem[_3835]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _3835 + (32 * mem[_3835]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4659 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4673 = mem[_4659]
                            require mem[_4659] <= test266151307()
                            require _4659 + mem[_4659] + 31 < _4659 + return_data.size
                            _4685 = mem[_4659 + mem[_4659]]
                            require mem[_4659 + mem[_4659]] <= test266151307()
                            require _4659 + ceil32(return_data.size) + (32 * mem[_4659 + mem[_4659]]) + 32 <= test266151307() and (32 * mem[_4659 + mem[_4659]]) + 32 >= 0
                            mem[64] = _4659 + ceil32(return_data.size) + (32 * mem[_4659 + mem[_4659]]) + 32
                            mem[_4659 + ceil32(return_data.size)] = _4685
                            require _4673 + (32 * _4685) + 32 <= return_data.size
                            idx = 0
                            s = _4659 + _4673 + 32
                            t = _4659 + ceil32(return_data.size) + 32
                            while idx < _4685:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _4685 - 1 < _4685
                            _5074 = mem[(32 * _4685 - 1) + _4659 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _5074
                            mem[mem[64] + 68] = 160
                            _5091 = mem[_3835]
                            mem[mem[64] + 164] = mem[_3835]
                            idx = 0
                            s = _3835 + 32
                            t = mem[64] + 196
                            while idx < _5091:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _5074, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _5091) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5369 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5378 = mem[_5369]
                            require mem[_5369] <= test266151307()
                            require _5369 + mem[_5369] + 31 < _5369 + return_data.size
                            _5386 = mem[_5369 + mem[_5369]]
                            require mem[_5369 + mem[_5369]] <= test266151307()
                            require _5369 + ceil32(return_data.size) + (32 * mem[_5369 + mem[_5369]]) + 32 <= test266151307() and (32 * mem[_5369 + mem[_5369]]) + 32 >= 0
                            mem[64] = _5369 + ceil32(return_data.size) + (32 * mem[_5369 + mem[_5369]]) + 32
                            mem[_5369 + ceil32(return_data.size)] = _5386
                            require _5378 + (32 * _5386) + 32 <= return_data.size
                            idx = 0
                            s = _5369 + _5378 + 32
                            t = _5369 + ceil32(return_data.size) + 32
                            while idx < _5386:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[_3835] - 1 < mem[_3835]
                            _5649 = mem[(32 * mem[_3835] - 1) + _3835 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _1979
                            mem[mem[64] + 100] = _5074
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5649), _1979, _5074, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5683 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5683] == mem[_5683]
                            require mem[_5683 + 32] == mem[_5683 + 32]
                            require mem[_5683 + 64] == mem[_5683 + 64]
                            if mem[_5683 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5683 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5683 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5683 + 64]
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
                        mem[(6 * ceil32(return_data.size)) + 512] = 3
                        mem[(6 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(6 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                            _1999 = mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (6 * ceil32(return_data.size)) + return_data.size + 640
                            _2001 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(7 * ceil32(return_data.size)) + 640] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require _1999 + (32 * _2001) + 32 <= return_data.size
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + _1999 + 672
                            t = (7 * ceil32(return_data.size)) + 672
                            while idx < _2001:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _2001 - 1 < _2001
                            _2916 = mem[(32 * _2001 - 1) + (7 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = mem[(32 * _2001 - 1) + (7 * ceil32(return_data.size)) + 672]
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _2001 - 1) + (7 * ceil32(return_data.size)) + 672], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3986 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4016 = mem[_3986]
                            require mem[_3986] <= test266151307()
                            require _3986 + mem[_3986] + 31 < _3986 + return_data.size
                            _4018 = mem[_3986 + mem[_3986]]
                            require mem[_3986 + mem[_3986]] <= test266151307()
                            require _3986 + ceil32(return_data.size) + (32 * mem[_3986 + mem[_3986]]) + 32 <= test266151307() and (32 * mem[_3986 + mem[_3986]]) + 32 >= 0
                            mem[64] = _3986 + ceil32(return_data.size) + (32 * mem[_3986 + mem[_3986]]) + 32
                            mem[_3986 + ceil32(return_data.size)] = _4018
                            require _4016 + (32 * _4018) + 32 <= return_data.size
                            idx = 0
                            s = _3986 + _4016 + 32
                            t = _3986 + ceil32(return_data.size) + 32
                            while idx < _4018:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require mem[(6 * ceil32(return_data.size)) + 512] - 1 < mem[(6 * ceil32(return_data.size)) + 512]
                            _4668 = mem[(32 * mem[(6 * ceil32(return_data.size)) + 512] - 1) + (6 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 4] = mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2916
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_4668), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2916, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4785 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_4785] == mem[_4785]
                            require mem[_4785 + 32] == mem[_4785 + 32]
                            require mem[_4785 + 64] == mem[_4785 + 64]
                            if mem[_4785 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_4785 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_4785 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_4785 + 64]
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
                        _2000 = mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (6 * ceil32(return_data.size)) + return_data.size + 512
                        _2002 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                        require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                        mem[(7 * ceil32(return_data.size)) + 512] = _2002
                        require _2000 + (32 * _2002) + 32 <= return_data.size
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + _2000 + 544
                        t = (7 * ceil32(return_data.size)) + 544
                        while idx < _2002:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _2002 - 1 < _2002
                        _2918 = mem[(32 * _2002 - 1) + (7 * ceil32(return_data.size)) + 544]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                        mem[mem[64] + 36] = _2918
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
                            args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2918, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3987 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4017 = mem[_3987]
                        require mem[_3987] <= test266151307()
                        require _3987 + mem[_3987] + 31 < _3987 + return_data.size
                        _4019 = mem[_3987 + mem[_3987]]
                        require mem[_3987 + mem[_3987]] <= test266151307()
                        require _3987 + ceil32(return_data.size) + (32 * mem[_3987 + mem[_3987]]) + 32 <= test266151307() and (32 * mem[_3987 + mem[_3987]]) + 32 >= 0
                        mem[64] = _3987 + ceil32(return_data.size) + (32 * mem[_3987 + mem[_3987]]) + 32
                        mem[_3987 + ceil32(return_data.size)] = _4019
                        require _4017 + (32 * _4019) + 32 <= return_data.size
                        idx = 0
                        s = _3987 + _4017 + 32
                        t = _3987 + ceil32(return_data.size) + 32
                        while idx < _4019:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _4663 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_4663 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[(6 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_4663]
                        mem[_4663 + 32] = mem[(6 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_4663]
                        mem[_4663 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 2 < mem[_4663]
                        mem[_4663 + 96] = stor11
                        require mem[_4663] - 1 < mem[_4663]
                        require 0 < mem[_4663]
                        if mem[_4663 + 44 len 20] == mem[(32 * mem[_4663] - 1) + _4663 + 44 len 20]:
                            require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require mem[_4663] - 1 < mem[_4663]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_4663] - 1) + _4663 + 44 len 20], _2918, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                            mem[_4663 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_4663 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[_4663 + 164] = 64
                            mem[_4663 + 196] = mem[_4663]
                            idx = 0
                            s = _4663 + 32
                            t = _4663 + 228
                            while idx < mem[_4663]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _4663 + (32 * mem[_4663]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5084 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5085 = mem[_5084]
                            require mem[_5084] <= test266151307()
                            require _5084 + mem[_5084] + 31 < _5084 + return_data.size
                            _5086 = mem[_5084 + mem[_5084]]
                            require mem[_5084 + mem[_5084]] <= test266151307()
                            require _5084 + ceil32(return_data.size) + (32 * mem[_5084 + mem[_5084]]) + 32 <= test266151307() and (32 * mem[_5084 + mem[_5084]]) + 32 >= 0
                            mem[64] = _5084 + ceil32(return_data.size) + (32 * mem[_5084 + mem[_5084]]) + 32
                            mem[_5084 + ceil32(return_data.size)] = _5086
                            require _5085 + (32 * _5086) + 32 <= return_data.size
                            idx = 0
                            s = _5084 + _5085 + 32
                            t = _5084 + ceil32(return_data.size) + 32
                            while idx < _5086:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _5086 - 1 < _5086
                            _5356 = mem[(32 * _5086 - 1) + _5084 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _5356
                            mem[mem[64] + 68] = 160
                            _5370 = mem[_4663]
                            mem[mem[64] + 164] = mem[_4663]
                            idx = 0
                            s = _4663 + 32
                            t = mem[64] + 196
                            while idx < _5370:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _5356, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _5370) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5660 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5661 = mem[_5660]
                            require mem[_5660] <= test266151307()
                            require _5660 + mem[_5660] + 31 < _5660 + return_data.size
                            _5662 = mem[_5660 + mem[_5660]]
                            require mem[_5660 + mem[_5660]] <= test266151307()
                            require _5660 + ceil32(return_data.size) + (32 * mem[_5660 + mem[_5660]]) + 32 <= test266151307() and (32 * mem[_5660 + mem[_5660]]) + 32 >= 0
                            mem[64] = _5660 + ceil32(return_data.size) + (32 * mem[_5660 + mem[_5660]]) + 32
                            mem[_5660 + ceil32(return_data.size)] = _5662
                            require _5661 + (32 * _5662) + 32 <= return_data.size
                            idx = 0
                            s = _5660 + _5661 + 32
                            t = _5660 + ceil32(return_data.size) + 32
                            while idx < _5662:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                            require mem[_4663] - 1 < mem[_4663]
                            _5795 = mem[(32 * mem[_4663] - 1) + _4663 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _2918
                            mem[mem[64] + 100] = _5356
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5795), _2918, _5356, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5798 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5798] == mem[_5798]
                            require mem[_5798 + 32] == mem[_5798 + 32]
                            require mem[_5798 + 64] == mem[_5798 + 64]
                            if mem[_5798 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5798 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5798 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5798 + 64]
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
                    mem[(2 * ceil32(return_data.size)) + 416] = 2
                    mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                    mem[(2 * ceil32(return_data.size)) + 480] = stor10
                    if rewardTokenAddress == stor10:
                        mem[(2 * ceil32(return_data.size)) + 512] = 3
                        mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                        mem[(2 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                        _913 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                        require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                        _952 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]) + 672
                        mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 640]
                        require _913 + (32 * _952) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _913 + 672
                        t = (4 * ceil32(return_data.size)) + 672
                        while idx < _952:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _952 - 1 < _952
                        _2818 = mem[(32 * _952 - 1) + (4 * ceil32(return_data.size)) + 672]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                        mem[mem[64] + 36] = _2818
                        mem[mem[64] + 68] = 160
                        _2880 = mem[(2 * ceil32(return_data.size)) + 512]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 544
                        t = mem[64] + 196
                        while idx < _2880:
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
                            args 2 * ext_call.return_data[0], _2818, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2880) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3913 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3929 = mem[_3913]
                        require mem[_3913] <= test266151307()
                        require _3913 + mem[_3913] + 31 < _3913 + return_data.size
                        _3945 = mem[_3913 + mem[_3913]]
                        require mem[_3913 + mem[_3913]] <= test266151307()
                        require _3913 + ceil32(return_data.size) + (32 * mem[_3913 + mem[_3913]]) + 32 <= test266151307() and (32 * mem[_3913 + mem[_3913]]) + 32 >= 0
                        mem[64] = _3913 + ceil32(return_data.size) + (32 * mem[_3913 + mem[_3913]]) + 32
                        mem[_3913 + ceil32(return_data.size)] = _3945
                        require _3929 + (32 * _3945) + 32 <= return_data.size
                        idx = 0
                        s = _3913 + _3929 + 32
                        t = _3913 + ceil32(return_data.size) + 32
                        while idx < _3945:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                        require mem[(2 * ceil32(return_data.size)) + 512] - 1 < mem[(2 * ceil32(return_data.size)) + 512]
                        _5055 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 512] - 1) + (2 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                        mem[mem[64] + 68] = uint255(ext_call.return_data[0])
                        mem[mem[64] + 100] = _2818
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_5055), 2 * ext_call.return_data[0], _2818, 0, 0, address(this.address), block.timestamp
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5351 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_5351] == mem[_5351]
                        require mem[_5351 + 32] == mem[_5351 + 32]
                        require mem[_5351 + 64] == mem[_5351 + 64]
                        if mem[_5351 + 64] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args PID, mem[_5351 + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits + mem[_5351 + 64] < totalDeposits:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDeposits += mem[_5351 + 64]
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
                        _5743 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5743] == bool(mem[_5743])
                        if not mem[_5743]:
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
                        _914 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                        require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                        _953 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 32 >= 0
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]) + 544
                        mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 512]
                        require _914 + (32 * _953) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _914 + 544
                        t = (4 * ceil32(return_data.size)) + 544
                        while idx < _953:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require _953 - 1 < _953
                        _2820 = mem[(32 * _953 - 1) + (4 * ceil32(return_data.size)) + 544]
                        _2821 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                        mem[mem[64] + 36] = _2820
                        mem[mem[64] + 68] = 160
                        _2881 = mem[(2 * ceil32(return_data.size)) + 416]
                        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 448
                        t = mem[64] + 196
                        while idx < _2881:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2821 + 100] = this.address
                        mem[_2821 + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _2821 + (32 * _2881) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3914 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3930 = mem[_3914]
                        require mem[_3914] <= test266151307()
                        require _3914 + mem[_3914] + 31 < _3914 + return_data.size
                        _3946 = mem[_3914 + mem[_3914]]
                        require mem[_3914 + mem[_3914]] <= test266151307()
                        require _3914 + ceil32(return_data.size) + (32 * mem[_3914 + mem[_3914]]) + 32 <= test266151307() and (32 * mem[_3914 + mem[_3914]]) + 32 >= 0
                        mem[64] = _3914 + ceil32(return_data.size) + (32 * mem[_3914 + mem[_3914]]) + 32
                        mem[_3914 + ceil32(return_data.size)] = _3946
                        require _3930 + (32 * _3946) + 32 <= return_data.size
                        idx = 0
                        s = _3914 + _3930 + 32
                        t = _3914 + ceil32(return_data.size) + 32
                        while idx < _3946:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _5040 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_5040 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                        require 0 < mem[_5040]
                        mem[_5040 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                        require 1 < mem[_5040]
                        mem[_5040 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        require 2 < mem[_5040]
                        mem[_5040 + 96] = stor11
                        require mem[_5040] - 1 < mem[_5040]
                        require 0 < mem[_5040]
                        if mem[_5040 + 44 len 20] == mem[(32 * mem[_5040] - 1) + _5040 + 44 len 20]:
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[_5040] - 1 < mem[_5040]
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_5040] - 1) + _5040 + 44 len 20], _2820, 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
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
                            mem[_5040 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_5040 + 132] = uint255(ext_call.return_data[0])
                            mem[_5040 + 164] = 64
                            mem[_5040 + 196] = mem[_5040]
                            idx = 0
                            s = _5040 + 32
                            t = _5040 + 228
                            while idx < mem[_5040]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _5040 + (32 * mem[_5040]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7035 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7094 = mem[_7035]
                            require mem[_7035] <= test266151307()
                            require _7035 + mem[_7035] + 31 < _7035 + return_data.size
                            _7146 = mem[_7035 + mem[_7035]]
                            require mem[_7035 + mem[_7035]] <= test266151307()
                            require _7035 + ceil32(return_data.size) + (32 * mem[_7035 + mem[_7035]]) + 32 <= test266151307() and (32 * mem[_7035 + mem[_7035]]) + 32 >= 0
                            mem[64] = _7035 + ceil32(return_data.size) + (32 * mem[_7035 + mem[_7035]]) + 32
                            mem[_7035 + ceil32(return_data.size)] = _7146
                            require _7094 + (32 * _7146) + 32 <= return_data.size
                            idx = 0
                            s = _7035 + _7094 + 32
                            t = _7035 + ceil32(return_data.size) + 32
                            while idx < _7146:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _7146 - 1 < _7146
                            _7729 = mem[(32 * _7146 - 1) + _7035 + ceil32(return_data.size) + 32]
                            _7730 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint255(ext_call.return_data[0])
                            mem[mem[64] + 36] = _7729
                            mem[mem[64] + 68] = 160
                            _7757 = mem[_5040]
                            mem[mem[64] + 164] = mem[_5040]
                            idx = 0
                            s = _5040 + 32
                            t = mem[64] + 196
                            while idx < _7757:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_7730 + 100] = this.address
                            mem[_7730 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _7730 + (32 * _7757) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8103 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8111 = mem[_8103]
                            require mem[_8103] <= test266151307()
                            require _8103 + mem[_8103] + 31 < _8103 + return_data.size
                            _8119 = mem[_8103 + mem[_8103]]
                            require mem[_8103 + mem[_8103]] <= test266151307()
                            require _8103 + ceil32(return_data.size) + (32 * mem[_8103 + mem[_8103]]) + 32 <= test266151307() and (32 * mem[_8103 + mem[_8103]]) + 32 >= 0
                            mem[64] = _8103 + ceil32(return_data.size) + (32 * mem[_8103 + mem[_8103]]) + 32
                            mem[_8103 + ceil32(return_data.size)] = _8119
                            require _8111 + (32 * _8119) + 32 <= return_data.size
                            idx = 0
                            s = _8103 + _8111 + 32
                            t = _8103 + ceil32(return_data.size) + 32
                            while idx < _8119:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[_5040] - 1 < mem[_5040]
                            _8530 = mem[(32 * mem[_5040] - 1) + _5040 + 32]
                            mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = _2820
                            mem[mem[64] + 100] = _7729
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_8530), _2820, _7729, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8560 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_8560] == mem[_8560]
                            require mem[_8560 + 32] == mem[_8560 + 32]
                            require mem[_8560 + 64] == mem[_8560 + 64]
                            if mem[_8560 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_8560 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_8560 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_8560 + 64]
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
                            _8684 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8684] == bool(mem[_8684])
                            if not mem[_8684]:
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
                            mem[(2 * ceil32(return_data.size)) + 512] = 3
                            mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                            mem[(2 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                            _905 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                            _948 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require _905 + (32 * _948) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _905 + 672
                            t = (4 * ceil32(return_data.size)) + 672
                            while idx < _948:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _948 - 1 < _948
                            _2810 = mem[(32 * _948 - 1) + (4 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2810
                            mem[mem[64] + 68] = 160
                            _2876 = mem[(2 * ceil32(return_data.size)) + 512]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 544
                            t = mem[64] + 196
                            while idx < _2876:
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2810, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _2876) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3909 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3925 = mem[_3909]
                            require mem[_3909] <= test266151307()
                            require _3909 + mem[_3909] + 31 < _3909 + return_data.size
                            _3941 = mem[_3909 + mem[_3909]]
                            require mem[_3909 + mem[_3909]] <= test266151307()
                            require _3909 + ceil32(return_data.size) + (32 * mem[_3909 + mem[_3909]]) + 32 <= test266151307() and (32 * mem[_3909 + mem[_3909]]) + 32 >= 0
                            mem[64] = _3909 + ceil32(return_data.size) + (32 * mem[_3909 + mem[_3909]]) + 32
                            mem[_3909 + ceil32(return_data.size)] = _3941
                            require _3925 + (32 * _3941) + 32 <= return_data.size
                            idx = 0
                            s = _3909 + _3925 + 32
                            t = _3909 + ceil32(return_data.size) + 32
                            while idx < _3941:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[(2 * ceil32(return_data.size)) + 512] - 1 < mem[(2 * ceil32(return_data.size)) + 512]
                            _5051 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 512] - 1) + (2 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2810
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5051), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2810, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5349 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5349] == mem[_5349]
                            require mem[_5349 + 32] == mem[_5349 + 32]
                            require mem[_5349 + 64] == mem[_5349 + 64]
                            if mem[_5349 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5349 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5349 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5349 + 64]
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
                            _5741 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5741] == bool(mem[_5741])
                            if not mem[_5741]:
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
                            _906 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                            _949 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                            mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                            require _906 + (32 * _949) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _906 + 544
                            t = (4 * ceil32(return_data.size)) + 544
                            while idx < _949:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _949 - 1 < _949
                            _2812 = mem[(32 * _949 - 1) + (4 * ceil32(return_data.size)) + 544]
                            _2813 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2812
                            mem[mem[64] + 68] = 160
                            _2877 = mem[(2 * ceil32(return_data.size)) + 416]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 416]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 448
                            t = mem[64] + 196
                            while idx < _2877:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_2813 + 100] = this.address
                            mem[_2813 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2813 + (32 * _2877) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3910 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3926 = mem[_3910]
                            require mem[_3910] <= test266151307()
                            require _3910 + mem[_3910] + 31 < _3910 + return_data.size
                            _3942 = mem[_3910 + mem[_3910]]
                            require mem[_3910 + mem[_3910]] <= test266151307()
                            require _3910 + ceil32(return_data.size) + (32 * mem[_3910 + mem[_3910]]) + 32 <= test266151307() and (32 * mem[_3910 + mem[_3910]]) + 32 >= 0
                            mem[64] = _3910 + ceil32(return_data.size) + (32 * mem[_3910 + mem[_3910]]) + 32
                            mem[_3910 + ceil32(return_data.size)] = _3942
                            require _3926 + (32 * _3942) + 32 <= return_data.size
                            idx = 0
                            s = _3910 + _3926 + 32
                            t = _3910 + ceil32(return_data.size) + 32
                            while idx < _3942:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _5032 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_5032 + 32 len 96] = call.data[calldata.size len 96]
                            require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_5032]
                            mem[_5032 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_5032]
                            mem[_5032 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require 2 < mem[_5032]
                            mem[_5032 + 96] = stor11
                            require mem[_5032] - 1 < mem[_5032]
                            require 0 < mem[_5032]
                            if mem[_5032 + 44 len 20] == mem[(32 * mem[_5032] - 1) + _5032 + 44 len 20]:
                                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require mem[_5032] - 1 < mem[_5032]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_5032] - 1) + _5032 + 44 len 20], _2812, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                mem[_5032 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5032 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[_5032 + 164] = 64
                                mem[_5032 + 196] = mem[_5032]
                                idx = 0
                                s = _5032 + 32
                                t = _5032 + 228
                                while idx < mem[_5032]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _5032 + (32 * mem[_5032]) + -mem[64] + 224]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7031 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7082 = mem[_7031]
                                require mem[_7031] <= test266151307()
                                require _7031 + mem[_7031] + 31 < _7031 + return_data.size
                                _7142 = mem[_7031 + mem[_7031]]
                                require mem[_7031 + mem[_7031]] <= test266151307()
                                require _7031 + ceil32(return_data.size) + (32 * mem[_7031 + mem[_7031]]) + 32 <= test266151307() and (32 * mem[_7031 + mem[_7031]]) + 32 >= 0
                                mem[64] = _7031 + ceil32(return_data.size) + (32 * mem[_7031 + mem[_7031]]) + 32
                                mem[_7031 + ceil32(return_data.size)] = _7142
                                require _7082 + (32 * _7142) + 32 <= return_data.size
                                idx = 0
                                s = _7031 + _7082 + 32
                                t = _7031 + ceil32(return_data.size) + 32
                                while idx < _7142:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _7142 - 1 < _7142
                                _7725 = mem[(32 * _7142 - 1) + _7031 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _7725
                                mem[mem[64] + 68] = 160
                                _7755 = mem[_5032]
                                mem[mem[64] + 164] = mem[_5032]
                                idx = 0
                                s = _5032 + 32
                                t = mem[64] + 196
                                while idx < _7755:
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _7725, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7755) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8101 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8109 = mem[_8101]
                                require mem[_8101] <= test266151307()
                                require _8101 + mem[_8101] + 31 < _8101 + return_data.size
                                _8117 = mem[_8101 + mem[_8101]]
                                require mem[_8101 + mem[_8101]] <= test266151307()
                                require _8101 + ceil32(return_data.size) + (32 * mem[_8101 + mem[_8101]]) + 32 <= test266151307() and (32 * mem[_8101 + mem[_8101]]) + 32 >= 0
                                mem[64] = _8101 + ceil32(return_data.size) + (32 * mem[_8101 + mem[_8101]]) + 32
                                mem[_8101 + ceil32(return_data.size)] = _8117
                                require _8109 + (32 * _8117) + 32 <= return_data.size
                                idx = 0
                                s = _8101 + _8109 + 32
                                t = _8101 + ceil32(return_data.size) + 32
                                while idx < _8117:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require mem[_5032] - 1 < mem[_5032]
                                _8526 = mem[(32 * mem[_5032] - 1) + _5032 + 32]
                                mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = _2812
                                mem[mem[64] + 100] = _7725
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8526), _2812, _7725, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8558 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8558] == mem[_8558]
                                require mem[_8558 + 32] == mem[_8558 + 32]
                                require mem[_8558 + 64] == mem[_8558 + 64]
                                if mem[_8558 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_8558 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8558 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8558 + 64]
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
                                _8682 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8682] == bool(mem[_8682])
                                if not mem[_8682]:
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
                            mem[(4 * ceil32(return_data.size)) + 512] = 3
                            mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                            mem[(4 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                            _909 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                            _950 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                            require _909 + (32 * _950) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _909 + 672
                            t = (6 * ceil32(return_data.size)) + 672
                            while idx < _950:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _950 - 1 < _950
                            _2814 = mem[(32 * _950 - 1) + (6 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2814
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2814, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3911 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3927 = mem[_3911]
                            require mem[_3911] <= test266151307()
                            require _3911 + mem[_3911] + 31 < _3911 + return_data.size
                            _3943 = mem[_3911 + mem[_3911]]
                            require mem[_3911 + mem[_3911]] <= test266151307()
                            require _3911 + ceil32(return_data.size) + (32 * mem[_3911 + mem[_3911]]) + 32 <= test266151307() and (32 * mem[_3911 + mem[_3911]]) + 32 >= 0
                            mem[64] = _3911 + ceil32(return_data.size) + (32 * mem[_3911 + mem[_3911]]) + 32
                            mem[_3911 + ceil32(return_data.size)] = _3943
                            require _3927 + (32 * _3943) + 32 <= return_data.size
                            idx = 0
                            s = _3911 + _3927 + 32
                            t = _3911 + ceil32(return_data.size) + 32
                            while idx < _3943:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[(4 * ceil32(return_data.size)) + 512] - 1 < mem[(4 * ceil32(return_data.size)) + 512]
                            _5053 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 512] - 1) + (4 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2814
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5053), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2814, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5350 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5350] == mem[_5350]
                            require mem[_5350 + 32] == mem[_5350 + 32]
                            require mem[_5350 + 64] == mem[_5350 + 64]
                            if mem[_5350 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5350 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5350 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5350 + 64]
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
                            _5742 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5742] == bool(mem[_5742])
                            if not mem[_5742]:
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
                            _910 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                            _951 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                            mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                            require _910 + (32 * _951) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _910 + 544
                            t = (6 * ceil32(return_data.size)) + 544
                            while idx < _951:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _951 - 1 < _951
                            _2816 = mem[(32 * _951 - 1) + (6 * ceil32(return_data.size)) + 544]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2816
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2816, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3912 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3928 = mem[_3912]
                            require mem[_3912] <= test266151307()
                            require _3912 + mem[_3912] + 31 < _3912 + return_data.size
                            _3944 = mem[_3912 + mem[_3912]]
                            require mem[_3912 + mem[_3912]] <= test266151307()
                            require _3912 + ceil32(return_data.size) + (32 * mem[_3912 + mem[_3912]]) + 32 <= test266151307() and (32 * mem[_3912 + mem[_3912]]) + 32 >= 0
                            mem[64] = _3912 + ceil32(return_data.size) + (32 * mem[_3912 + mem[_3912]]) + 32
                            mem[_3912 + ceil32(return_data.size)] = _3944
                            require _3928 + (32 * _3944) + 32 <= return_data.size
                            idx = 0
                            s = _3912 + _3928 + 32
                            t = _3912 + ceil32(return_data.size) + 32
                            while idx < _3944:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _5036 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_5036 + 32 len 96] = call.data[calldata.size len 96]
                            require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_5036]
                            mem[_5036 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_5036]
                            mem[_5036 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require 2 < mem[_5036]
                            mem[_5036 + 96] = stor11
                            require mem[_5036] - 1 < mem[_5036]
                            require 0 < mem[_5036]
                            if mem[_5036 + 44 len 20] == mem[(32 * mem[_5036] - 1) + _5036 + 44 len 20]:
                                require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require mem[_5036] - 1 < mem[_5036]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_5036] - 1) + _5036 + 44 len 20], _2816, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                mem[_5036 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5036 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[_5036 + 164] = 64
                                mem[_5036 + 196] = mem[_5036]
                                idx = 0
                                s = _5036 + 32
                                t = _5036 + 228
                                while idx < mem[_5036]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _5036 + (32 * mem[_5036]) + -mem[64] + 224]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7033 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7088 = mem[_7033]
                                require mem[_7033] <= test266151307()
                                require _7033 + mem[_7033] + 31 < _7033 + return_data.size
                                _7144 = mem[_7033 + mem[_7033]]
                                require mem[_7033 + mem[_7033]] <= test266151307()
                                require _7033 + ceil32(return_data.size) + (32 * mem[_7033 + mem[_7033]]) + 32 <= test266151307() and (32 * mem[_7033 + mem[_7033]]) + 32 >= 0
                                mem[64] = _7033 + ceil32(return_data.size) + (32 * mem[_7033 + mem[_7033]]) + 32
                                mem[_7033 + ceil32(return_data.size)] = _7144
                                require _7088 + (32 * _7144) + 32 <= return_data.size
                                idx = 0
                                s = _7033 + _7088 + 32
                                t = _7033 + ceil32(return_data.size) + 32
                                while idx < _7144:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _7144 - 1 < _7144
                                _7727 = mem[(32 * _7144 - 1) + _7033 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _7727
                                mem[mem[64] + 68] = 160
                                _7756 = mem[_5036]
                                mem[mem[64] + 164] = mem[_5036]
                                idx = 0
                                s = _5036 + 32
                                t = mem[64] + 196
                                while idx < _7756:
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _7727, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7756) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8102 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8110 = mem[_8102]
                                require mem[_8102] <= test266151307()
                                require _8102 + mem[_8102] + 31 < _8102 + return_data.size
                                _8118 = mem[_8102 + mem[_8102]]
                                require mem[_8102 + mem[_8102]] <= test266151307()
                                require _8102 + ceil32(return_data.size) + (32 * mem[_8102 + mem[_8102]]) + 32 <= test266151307() and (32 * mem[_8102 + mem[_8102]]) + 32 >= 0
                                mem[64] = _8102 + ceil32(return_data.size) + (32 * mem[_8102 + mem[_8102]]) + 32
                                mem[_8102 + ceil32(return_data.size)] = _8118
                                require _8110 + (32 * _8118) + 32 <= return_data.size
                                idx = 0
                                s = _8102 + _8110 + 32
                                t = _8102 + ceil32(return_data.size) + 32
                                while idx < _8118:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require mem[_5036] - 1 < mem[_5036]
                                _8528 = mem[(32 * mem[_5036] - 1) + _5036 + 32]
                                mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = _2816
                                mem[mem[64] + 100] = _7727
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8528), _2816, _7727, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8559 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8559] == mem[_8559]
                                require mem[_8559 + 32] == mem[_8559 + 32]
                                require mem[_8559 + 64] == mem[_8559 + 64]
                                if mem[_8559 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_8559 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8559 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8559 + 64]
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
                                _8683 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8683] == bool(mem[_8683])
                                if not mem[_8683]:
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
                            mem[(2 * ceil32(return_data.size)) + 512] = 3
                            mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                            mem[(2 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                            _890 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                            _942 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                            require _890 + (32 * _942) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _890 + 672
                            t = (4 * ceil32(return_data.size)) + 672
                            while idx < _942:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _942 - 1 < _942
                            _2798 = mem[(32 * _942 - 1) + (4 * ceil32(return_data.size)) + 672]
                            _2799 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2798
                            mem[mem[64] + 68] = 160
                            _2870 = mem[(2 * ceil32(return_data.size)) + 512]
                            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 544
                            t = mem[64] + 196
                            while idx < _2870:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_2799 + 100] = this.address
                            mem[_2799 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2799 + (32 * _2870) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3901 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3919 = mem[_3901]
                            require mem[_3901] <= test266151307()
                            require _3901 + mem[_3901] + 31 < _3901 + return_data.size
                            _3935 = mem[_3901 + mem[_3901]]
                            require mem[_3901 + mem[_3901]] <= test266151307()
                            require _3901 + ceil32(return_data.size) + (32 * mem[_3901 + mem[_3901]]) + 32 <= test266151307() and (32 * mem[_3901 + mem[_3901]]) + 32 >= 0
                            mem[64] = _3901 + ceil32(return_data.size) + (32 * mem[_3901 + mem[_3901]]) + 32
                            mem[_3901 + ceil32(return_data.size)] = _3935
                            require _3919 + (32 * _3935) + 32 <= return_data.size
                            idx = 0
                            s = _3901 + _3919 + 32
                            t = _3901 + ceil32(return_data.size) + 32
                            while idx < _3935:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                            require mem[(2 * ceil32(return_data.size)) + 512] - 1 < mem[(2 * ceil32(return_data.size)) + 512]
                            _5045 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 512] - 1) + (2 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2798
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5045), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2798, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5346 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5346] == mem[_5346]
                            require mem[_5346 + 32] == mem[_5346 + 32]
                            require mem[_5346 + 64] == mem[_5346 + 64]
                            if mem[_5346 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5346 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5346 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5346 + 64]
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
                            _5737 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5737] == bool(mem[_5737])
                            if not mem[_5737]:
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
                            _891 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                            require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                            _943 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                            require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544
                            mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                            require _891 + (32 * _943) + 32 <= return_data.size
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + _891 + 544
                            t = (4 * ceil32(return_data.size)) + 544
                            while idx < _943:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _943 - 1 < _943
                            _2800 = mem[(32 * _943 - 1) + (4 * ceil32(return_data.size)) + 544]
                            _2801 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2800
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
                            mem[_2801 + 100] = this.address
                            mem[_2801 + 132] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2801 + (32 * _2871) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3902 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3920 = mem[_3902]
                            require mem[_3902] <= test266151307()
                            require _3902 + mem[_3902] + 31 < _3902 + return_data.size
                            _3936 = mem[_3902 + mem[_3902]]
                            require mem[_3902 + mem[_3902]] <= test266151307()
                            require _3902 + ceil32(return_data.size) + (32 * mem[_3902 + mem[_3902]]) + 32 <= test266151307() and (32 * mem[_3902 + mem[_3902]]) + 32 >= 0
                            mem[64] = _3902 + ceil32(return_data.size) + (32 * mem[_3902 + mem[_3902]]) + 32
                            mem[_3902 + ceil32(return_data.size)] = _3936
                            require _3920 + (32 * _3936) + 32 <= return_data.size
                            idx = 0
                            s = _3902 + _3920 + 32
                            t = _3902 + ceil32(return_data.size) + 32
                            while idx < _3936:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _5020 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_5020 + 32 len 96] = call.data[calldata.size len 96]
                            require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_5020]
                            mem[_5020 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_5020]
                            mem[_5020 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require 2 < mem[_5020]
                            mem[_5020 + 96] = stor11
                            require mem[_5020] - 1 < mem[_5020]
                            require 0 < mem[_5020]
                            if mem[_5020 + 44 len 20] == mem[(32 * mem[_5020] - 1) + _5020 + 44 len 20]:
                                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require mem[_5020] - 1 < mem[_5020]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_5020] - 1) + _5020 + 44 len 20], _2800, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                mem[_5020 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5020 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[_5020 + 164] = 64
                                mem[_5020 + 196] = mem[_5020]
                                idx = 0
                                s = _5020 + 32
                                t = _5020 + 228
                                while idx < mem[_5020]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _5020 + (32 * mem[_5020]) + -mem[64] + 224]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7021 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7063 = mem[_7021]
                                require mem[_7021] <= test266151307()
                                require _7021 + mem[_7021] + 31 < _7021 + return_data.size
                                _7135 = mem[_7021 + mem[_7021]]
                                require mem[_7021 + mem[_7021]] <= test266151307()
                                require _7021 + ceil32(return_data.size) + (32 * mem[_7021 + mem[_7021]]) + 32 <= test266151307() and (32 * mem[_7021 + mem[_7021]]) + 32 >= 0
                                mem[64] = _7021 + ceil32(return_data.size) + (32 * mem[_7021 + mem[_7021]]) + 32
                                mem[_7021 + ceil32(return_data.size)] = _7135
                                require _7063 + (32 * _7135) + 32 <= return_data.size
                                idx = 0
                                s = _7021 + _7063 + 32
                                t = _7021 + ceil32(return_data.size) + 32
                                while idx < _7135:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _7135 - 1 < _7135
                                _7718 = mem[(32 * _7135 - 1) + _7021 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _7718
                                mem[mem[64] + 68] = 160
                                _7752 = mem[_5020]
                                mem[mem[64] + 164] = mem[_5020]
                                idx = 0
                                s = _5020 + 32
                                t = mem[64] + 196
                                while idx < _7752:
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _7718, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7752) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8097 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8106 = mem[_8097]
                                require mem[_8097] <= test266151307()
                                require _8097 + mem[_8097] + 31 < _8097 + return_data.size
                                _8114 = mem[_8097 + mem[_8097]]
                                require mem[_8097 + mem[_8097]] <= test266151307()
                                require _8097 + ceil32(return_data.size) + (32 * mem[_8097 + mem[_8097]]) + 32 <= test266151307() and (32 * mem[_8097 + mem[_8097]]) + 32 >= 0
                                mem[64] = _8097 + ceil32(return_data.size) + (32 * mem[_8097 + mem[_8097]]) + 32
                                mem[_8097 + ceil32(return_data.size)] = _8114
                                require _8106 + (32 * _8114) + 32 <= return_data.size
                                idx = 0
                                s = _8097 + _8106 + 32
                                t = _8097 + ceil32(return_data.size) + 32
                                while idx < _8114:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require mem[_5020] - 1 < mem[_5020]
                                _8520 = mem[(32 * mem[_5020] - 1) + _5020 + 32]
                                mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = _2800
                                mem[mem[64] + 100] = _7718
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8520), _2800, _7718, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8555 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8555] == mem[_8555]
                                require mem[_8555 + 32] == mem[_8555 + 32]
                                require mem[_8555 + 64] == mem[_8555 + 64]
                                if mem[_8555 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_8555 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8555 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8555 + 64]
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
                                _8679 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8679] == bool(mem[_8679])
                                if not mem[_8679]:
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
                                mem[(2 * ceil32(return_data.size)) + 512] = 3
                                mem[(2 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                                mem[(2 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                                _882 = mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (2 * ceil32(return_data.size)) + return_data.size + 640
                                _938 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                                mem[(4 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                                require _882 + (32 * _938) + 32 <= return_data.size
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + _882 + 672
                                t = (4 * ceil32(return_data.size)) + 672
                                while idx < _938:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _938 - 1 < _938
                                _2790 = mem[(32 * _938 - 1) + (4 * ceil32(return_data.size)) + 672]
                                _2791 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2790
                                mem[mem[64] + 68] = 160
                                _2866 = mem[(2 * ceil32(return_data.size)) + 512]
                                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 512]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 544
                                t = mem[64] + 196
                                while idx < _2866:
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
                                    args mem[mem[64] + 4 len _2791 + (32 * _2866) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3897 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3915 = mem[_3897]
                                require mem[_3897] <= test266151307()
                                require _3897 + mem[_3897] + 31 < _3897 + return_data.size
                                _3931 = mem[_3897 + mem[_3897]]
                                require mem[_3897 + mem[_3897]] <= test266151307()
                                require _3897 + ceil32(return_data.size) + (32 * mem[_3897 + mem[_3897]]) + 32 <= test266151307() and (32 * mem[_3897 + mem[_3897]]) + 32 >= 0
                                mem[64] = _3897 + ceil32(return_data.size) + (32 * mem[_3897 + mem[_3897]]) + 32
                                mem[_3897 + ceil32(return_data.size)] = _3931
                                require _3915 + (32 * _3931) + 32 <= return_data.size
                                idx = 0
                                s = _3897 + _3915 + 32
                                t = _3897 + ceil32(return_data.size) + 32
                                while idx < _3931:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                require mem[(2 * ceil32(return_data.size)) + 512] - 1 < mem[(2 * ceil32(return_data.size)) + 512]
                                _5041 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 512] - 1) + (2 * ceil32(return_data.size)) + 544]
                                mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 100] = _2790
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_5041), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2790, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5344 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5344] == mem[_5344]
                                require mem[_5344 + 32] == mem[_5344 + 32]
                                require mem[_5344 + 64] == mem[_5344 + 64]
                                if mem[_5344 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_5344 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5344 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5344 + 64]
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
                                _5735 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5735] == bool(mem[_5735])
                                if not mem[_5735]:
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
                                _883 = mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (2 * ceil32(return_data.size)) + return_data.size + 512
                                _939 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                                require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                                mem[(4 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require _883 + (32 * _939) + 32 <= return_data.size
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + _883 + 544
                                t = (4 * ceil32(return_data.size)) + 544
                                while idx < _939:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _939 - 1 < _939
                                _2792 = mem[(32 * _939 - 1) + (4 * ceil32(return_data.size)) + 544]
                                _2793 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2792
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
                                mem[_2793 + 100] = this.address
                                mem[_2793 + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _2793 + (32 * _2867) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3898 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3916 = mem[_3898]
                                require mem[_3898] <= test266151307()
                                require _3898 + mem[_3898] + 31 < _3898 + return_data.size
                                _3932 = mem[_3898 + mem[_3898]]
                                require mem[_3898 + mem[_3898]] <= test266151307()
                                require _3898 + ceil32(return_data.size) + (32 * mem[_3898 + mem[_3898]]) + 32 <= test266151307() and (32 * mem[_3898 + mem[_3898]]) + 32 >= 0
                                mem[64] = _3898 + ceil32(return_data.size) + (32 * mem[_3898 + mem[_3898]]) + 32
                                mem[_3898 + ceil32(return_data.size)] = _3932
                                require _3916 + (32 * _3932) + 32 <= return_data.size
                                idx = 0
                                s = _3898 + _3916 + 32
                                t = _3898 + ceil32(return_data.size) + 32
                                while idx < _3932:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _5012 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_5012 + 32 len 96] = call.data[calldata.size len 96]
                                require 0 < mem[(2 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_5012]
                                mem[_5012 + 32] = mem[(2 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_5012]
                                mem[_5012 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require 2 < mem[_5012]
                                mem[_5012 + 96] = stor11
                                require mem[_5012] - 1 < mem[_5012]
                                require 0 < mem[_5012]
                                if mem[_5012 + 44 len 20] == mem[(32 * mem[_5012] - 1) + _5012 + 44 len 20]:
                                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                    require mem[_5012] - 1 < mem[_5012]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_5012] - 1) + _5012 + 44 len 20], _2792, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                    mem[_5012 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_5012 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[_5012 + 164] = 64
                                    mem[_5012 + 196] = mem[_5012]
                                    idx = 0
                                    s = _5012 + 32
                                    t = _5012 + 228
                                    while idx < mem[_5012]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _5012 + (32 * mem[_5012]) + -mem[64] + 224]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7017 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7051 = mem[_7017]
                                    require mem[_7017] <= test266151307()
                                    require _7017 + mem[_7017] + 31 < _7017 + return_data.size
                                    _7131 = mem[_7017 + mem[_7017]]
                                    require mem[_7017 + mem[_7017]] <= test266151307()
                                    require _7017 + ceil32(return_data.size) + (32 * mem[_7017 + mem[_7017]]) + 32 <= test266151307() and (32 * mem[_7017 + mem[_7017]]) + 32 >= 0
                                    mem[64] = _7017 + ceil32(return_data.size) + (32 * mem[_7017 + mem[_7017]]) + 32
                                    mem[_7017 + ceil32(return_data.size)] = _7131
                                    require _7051 + (32 * _7131) + 32 <= return_data.size
                                    idx = 0
                                    s = _7017 + _7051 + 32
                                    t = _7017 + ceil32(return_data.size) + 32
                                    while idx < _7131:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7131 - 1 < _7131
                                    _7714 = mem[(32 * _7131 - 1) + _7017 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _7714
                                    mem[mem[64] + 68] = 160
                                    _7750 = mem[_5012]
                                    mem[mem[64] + 164] = mem[_5012]
                                    idx = 0
                                    s = _5012 + 32
                                    t = mem[64] + 196
                                    while idx < _7750:
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
                                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _7714, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7750) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8095 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8104 = mem[_8095]
                                    require mem[_8095] <= test266151307()
                                    require _8095 + mem[_8095] + 31 < _8095 + return_data.size
                                    _8112 = mem[_8095 + mem[_8095]]
                                    require mem[_8095 + mem[_8095]] <= test266151307()
                                    require _8095 + ceil32(return_data.size) + (32 * mem[_8095 + mem[_8095]]) + 32 <= test266151307() and (32 * mem[_8095 + mem[_8095]]) + 32 >= 0
                                    mem[64] = _8095 + ceil32(return_data.size) + (32 * mem[_8095 + mem[_8095]]) + 32
                                    mem[_8095 + ceil32(return_data.size)] = _8112
                                    require _8104 + (32 * _8112) + 32 <= return_data.size
                                    idx = 0
                                    s = _8095 + _8104 + 32
                                    t = _8095 + ceil32(return_data.size) + 32
                                    while idx < _8112:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require mem[(2 * ceil32(return_data.size)) + 416] - 1 < mem[(2 * ceil32(return_data.size)) + 416]
                                    require mem[_5012] - 1 < mem[_5012]
                                    _8516 = mem[(32 * mem[_5012] - 1) + _5012 + 32]
                                    mem[mem[64] + 4] = mem[(32 * mem[(2 * ceil32(return_data.size)) + 416] - 1) + (2 * ceil32(return_data.size)) + 460 len 20]
                                    mem[mem[64] + 68] = _2792
                                    mem[mem[64] + 100] = _7714
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8516), _2792, _7714, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8553 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8553] == mem[_8553]
                                    require mem[_8553 + 32] == mem[_8553 + 32]
                                    require mem[_8553 + 64] == mem[_8553 + 64]
                                    if mem[_8553 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_8553 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8553 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8553 + 64]
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
                                    _8677 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8677] == bool(mem[_8677])
                                    if not mem[_8677]:
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
                                mem[(4 * ceil32(return_data.size)) + 512] = 3
                                mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                                mem[(4 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                                _886 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                                _940 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                                mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                                require _886 + (32 * _940) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _886 + 672
                                t = (6 * ceil32(return_data.size)) + 672
                                while idx < _940:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _940 - 1 < _940
                                _2794 = mem[(32 * _940 - 1) + (6 * ceil32(return_data.size)) + 672]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2794
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2794, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3899 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3917 = mem[_3899]
                                require mem[_3899] <= test266151307()
                                require _3899 + mem[_3899] + 31 < _3899 + return_data.size
                                _3933 = mem[_3899 + mem[_3899]]
                                require mem[_3899 + mem[_3899]] <= test266151307()
                                require _3899 + ceil32(return_data.size) + (32 * mem[_3899 + mem[_3899]]) + 32 <= test266151307() and (32 * mem[_3899 + mem[_3899]]) + 32 >= 0
                                mem[64] = _3899 + ceil32(return_data.size) + (32 * mem[_3899 + mem[_3899]]) + 32
                                mem[_3899 + ceil32(return_data.size)] = _3933
                                require _3917 + (32 * _3933) + 32 <= return_data.size
                                idx = 0
                                s = _3899 + _3917 + 32
                                t = _3899 + ceil32(return_data.size) + 32
                                while idx < _3933:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require mem[(4 * ceil32(return_data.size)) + 512] - 1 < mem[(4 * ceil32(return_data.size)) + 512]
                                _5043 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 512] - 1) + (4 * ceil32(return_data.size)) + 544]
                                mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 100] = _2794
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_5043), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2794, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5345 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5345] == mem[_5345]
                                require mem[_5345 + 32] == mem[_5345 + 32]
                                require mem[_5345 + 64] == mem[_5345 + 64]
                                if mem[_5345 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_5345 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5345 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5345 + 64]
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
                                _5736 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5736] == bool(mem[_5736])
                                if not mem[_5736]:
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
                                _887 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                                _941 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                                mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require _887 + (32 * _941) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _887 + 544
                                t = (6 * ceil32(return_data.size)) + 544
                                while idx < _941:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _941 - 1 < _941
                                _2796 = mem[(32 * _941 - 1) + (6 * ceil32(return_data.size)) + 544]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2796
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2796, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3900 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3918 = mem[_3900]
                                require mem[_3900] <= test266151307()
                                require _3900 + mem[_3900] + 31 < _3900 + return_data.size
                                _3934 = mem[_3900 + mem[_3900]]
                                require mem[_3900 + mem[_3900]] <= test266151307()
                                require _3900 + ceil32(return_data.size) + (32 * mem[_3900 + mem[_3900]]) + 32 <= test266151307() and (32 * mem[_3900 + mem[_3900]]) + 32 >= 0
                                mem[64] = _3900 + ceil32(return_data.size) + (32 * mem[_3900 + mem[_3900]]) + 32
                                mem[_3900 + ceil32(return_data.size)] = _3934
                                require _3918 + (32 * _3934) + 32 <= return_data.size
                                idx = 0
                                s = _3900 + _3918 + 32
                                t = _3900 + ceil32(return_data.size) + 32
                                while idx < _3934:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _5016 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_5016 + 32 len 96] = call.data[calldata.size len 96]
                                require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_5016]
                                mem[_5016 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_5016]
                                mem[_5016 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require 2 < mem[_5016]
                                mem[_5016 + 96] = stor11
                                require mem[_5016] - 1 < mem[_5016]
                                require 0 < mem[_5016]
                                if mem[_5016 + 44 len 20] == mem[(32 * mem[_5016] - 1) + _5016 + 44 len 20]:
                                    require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require mem[_5016] - 1 < mem[_5016]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_5016] - 1) + _5016 + 44 len 20], _2796, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                    mem[_5016 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_5016 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[_5016 + 164] = 64
                                    mem[_5016 + 196] = mem[_5016]
                                    idx = 0
                                    s = _5016 + 32
                                    t = _5016 + 228
                                    while idx < mem[_5016]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _5016 + (32 * mem[_5016]) + -mem[64] + 224]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7019 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7057 = mem[_7019]
                                    require mem[_7019] <= test266151307()
                                    require _7019 + mem[_7019] + 31 < _7019 + return_data.size
                                    _7133 = mem[_7019 + mem[_7019]]
                                    require mem[_7019 + mem[_7019]] <= test266151307()
                                    require _7019 + ceil32(return_data.size) + (32 * mem[_7019 + mem[_7019]]) + 32 <= test266151307() and (32 * mem[_7019 + mem[_7019]]) + 32 >= 0
                                    mem[64] = _7019 + ceil32(return_data.size) + (32 * mem[_7019 + mem[_7019]]) + 32
                                    mem[_7019 + ceil32(return_data.size)] = _7133
                                    require _7057 + (32 * _7133) + 32 <= return_data.size
                                    idx = 0
                                    s = _7019 + _7057 + 32
                                    t = _7019 + ceil32(return_data.size) + 32
                                    while idx < _7133:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7133 - 1 < _7133
                                    _7716 = mem[(32 * _7133 - 1) + _7019 + ceil32(return_data.size) + 32]
                                    _7717 = mem[64]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _7716
                                    mem[mem[64] + 68] = 160
                                    _7751 = mem[_5016]
                                    mem[mem[64] + 164] = mem[_5016]
                                    idx = 0
                                    s = _5016 + 32
                                    t = mem[64] + 196
                                    while idx < _7751:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_7717 + 100] = this.address
                                    mem[_7717 + 132] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7717 + (32 * _7751) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8096 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8105 = mem[_8096]
                                    require mem[_8096] <= test266151307()
                                    require _8096 + mem[_8096] + 31 < _8096 + return_data.size
                                    _8113 = mem[_8096 + mem[_8096]]
                                    require mem[_8096 + mem[_8096]] <= test266151307()
                                    require _8096 + ceil32(return_data.size) + (32 * mem[_8096 + mem[_8096]]) + 32 <= test266151307() and (32 * mem[_8096 + mem[_8096]]) + 32 >= 0
                                    mem[64] = _8096 + ceil32(return_data.size) + (32 * mem[_8096 + mem[_8096]]) + 32
                                    mem[_8096 + ceil32(return_data.size)] = _8113
                                    require _8105 + (32 * _8113) + 32 <= return_data.size
                                    idx = 0
                                    s = _8096 + _8105 + 32
                                    t = _8096 + ceil32(return_data.size) + 32
                                    while idx < _8113:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require mem[_5016] - 1 < mem[_5016]
                                    _8518 = mem[(32 * mem[_5016] - 1) + _5016 + 32]
                                    mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                                    mem[mem[64] + 68] = _2796
                                    mem[mem[64] + 100] = _7716
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8518), _2796, _7716, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8554 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8554] == mem[_8554]
                                    require mem[_8554 + 32] == mem[_8554 + 32]
                                    require mem[_8554 + 64] == mem[_8554 + 64]
                                    if mem[_8554 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_8554 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8554 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8554 + 64]
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
                                    _8678 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8678] == bool(mem[_8678])
                                    if not mem[_8678]:
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
                            mem[(4 * ceil32(return_data.size)) + 512] = 3
                            mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                            mem[(4 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                            _901 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                            _946 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]) + 672
                            mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 640]
                            require _901 + (32 * _946) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _901 + 672
                            t = (6 * ceil32(return_data.size)) + 672
                            while idx < _946:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _946 - 1 < _946
                            _2806 = mem[(32 * _946 - 1) + (6 * ceil32(return_data.size)) + 672]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2806
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2806, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3907 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3923 = mem[_3907]
                            require mem[_3907] <= test266151307()
                            require _3907 + mem[_3907] + 31 < _3907 + return_data.size
                            _3939 = mem[_3907 + mem[_3907]]
                            require mem[_3907 + mem[_3907]] <= test266151307()
                            require _3907 + ceil32(return_data.size) + (32 * mem[_3907 + mem[_3907]]) + 32 <= test266151307() and (32 * mem[_3907 + mem[_3907]]) + 32 >= 0
                            mem[64] = _3907 + ceil32(return_data.size) + (32 * mem[_3907 + mem[_3907]]) + 32
                            mem[_3907 + ceil32(return_data.size)] = _3939
                            require _3923 + (32 * _3939) + 32 <= return_data.size
                            idx = 0
                            s = _3907 + _3923 + 32
                            t = _3907 + ceil32(return_data.size) + 32
                            while idx < _3939:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                            require mem[(4 * ceil32(return_data.size)) + 512] - 1 < mem[(4 * ceil32(return_data.size)) + 512]
                            _5049 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 512] - 1) + (4 * ceil32(return_data.size)) + 544]
                            mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                            mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 100] = _2806
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = 0
                            mem[mem[64] + 196] = this.address
                            mem[mem[64] + 228] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_5049), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2806, 0, 0, address(this.address), block.timestamp
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5348 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_5348] == mem[_5348]
                            require mem[_5348 + 32] == mem[_5348 + 32]
                            require mem[_5348 + 64] == mem[_5348 + 64]
                            if mem[_5348 + 64] <= 0:
                                revert with 0, 'amount too low'
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args PID, mem[_5348 + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if totalDeposits + mem[_5348 + 64] < totalDeposits:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDeposits += mem[_5348 + 64]
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
                            _5740 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5740] == bool(mem[_5740])
                            if not mem[_5740]:
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
                            _902 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                            _947 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                            require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]) + 544
                            mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)) >> 32 + 512]
                            require _902 + (32 * _947) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _902 + 544
                            t = (6 * ceil32(return_data.size)) + 544
                            while idx < _947:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require _947 - 1 < _947
                            _2808 = mem[(32 * _947 - 1) + (6 * ceil32(return_data.size)) + 544]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                            mem[mem[64] + 36] = _2808
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
                                args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), _2808, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3908 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3924 = mem[_3908]
                            require mem[_3908] <= test266151307()
                            require _3908 + mem[_3908] + 31 < _3908 + return_data.size
                            _3940 = mem[_3908 + mem[_3908]]
                            require mem[_3908 + mem[_3908]] <= test266151307()
                            require _3908 + ceil32(return_data.size) + (32 * mem[_3908 + mem[_3908]]) + 32 <= test266151307() and (32 * mem[_3908 + mem[_3908]]) + 32 >= 0
                            mem[64] = _3908 + ceil32(return_data.size) + (32 * mem[_3908 + mem[_3908]]) + 32
                            mem[_3908 + ceil32(return_data.size)] = _3940
                            require _3924 + (32 * _3940) + 32 <= return_data.size
                            idx = 0
                            s = _3908 + _3924 + 32
                            t = _3908 + ceil32(return_data.size) + 32
                            while idx < _3940:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _5028 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_5028 + 32 len 96] = call.data[calldata.size len 96]
                            require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                            require 0 < mem[_5028]
                            mem[_5028 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                            require 1 < mem[_5028]
                            mem[_5028 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            require 2 < mem[_5028]
                            mem[_5028 + 96] = stor11
                            require mem[_5028] - 1 < mem[_5028]
                            require 0 < mem[_5028]
                            if mem[_5028 + 44 len 20] == mem[(32 * mem[_5028] - 1) + _5028 + 44 len 20]:
                                require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require mem[_5028] - 1 < mem[_5028]
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_5028] - 1) + _5028 + 44 len 20], _2808, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                mem[_5028 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5028 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[_5028 + 164] = 64
                                mem[_5028 + 196] = mem[_5028]
                                idx = 0
                                s = _5028 + 32
                                t = _5028 + 228
                                while idx < mem[_5028]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _5028 + (32 * mem[_5028]) + -mem[64] + 224]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7029 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7076 = mem[_7029]
                                require mem[_7029] <= test266151307()
                                require _7029 + mem[_7029] + 31 < _7029 + return_data.size
                                _7140 = mem[_7029 + mem[_7029]]
                                require mem[_7029 + mem[_7029]] <= test266151307()
                                require _7029 + ceil32(return_data.size) + (32 * mem[_7029 + mem[_7029]]) + 32 <= test266151307() and (32 * mem[_7029 + mem[_7029]]) + 32 >= 0
                                mem[64] = _7029 + ceil32(return_data.size) + (32 * mem[_7029 + mem[_7029]]) + 32
                                mem[_7029 + ceil32(return_data.size)] = _7140
                                require _7076 + (32 * _7140) + 32 <= return_data.size
                                idx = 0
                                s = _7029 + _7076 + 32
                                t = _7029 + ceil32(return_data.size) + 32
                                while idx < _7140:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _7140 - 1 < _7140
                                _7723 = mem[(32 * _7140 - 1) + _7029 + ceil32(return_data.size) + 32]
                                _7724 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _7723
                                mem[mem[64] + 68] = 160
                                _7754 = mem[_5028]
                                mem[mem[64] + 164] = mem[_5028]
                                idx = 0
                                s = _5028 + 32
                                t = mem[64] + 196
                                while idx < _7754:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_7724 + 100] = this.address
                                mem[_7724 + 132] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7724 + (32 * _7754) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8100 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8108 = mem[_8100]
                                require mem[_8100] <= test266151307()
                                require _8100 + mem[_8100] + 31 < _8100 + return_data.size
                                _8116 = mem[_8100 + mem[_8100]]
                                require mem[_8100 + mem[_8100]] <= test266151307()
                                require _8100 + ceil32(return_data.size) + (32 * mem[_8100 + mem[_8100]]) + 32 <= test266151307() and (32 * mem[_8100 + mem[_8100]]) + 32 >= 0
                                mem[64] = _8100 + ceil32(return_data.size) + (32 * mem[_8100 + mem[_8100]]) + 32
                                mem[_8100 + ceil32(return_data.size)] = _8116
                                require _8108 + (32 * _8116) + 32 <= return_data.size
                                idx = 0
                                s = _8100 + _8108 + 32
                                t = _8100 + ceil32(return_data.size) + 32
                                while idx < _8116:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require mem[_5028] - 1 < mem[_5028]
                                _8524 = mem[(32 * mem[_5028] - 1) + _5028 + 32]
                                mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = _2808
                                mem[mem[64] + 100] = _7723
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_8524), _2808, _7723, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8557 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_8557] == mem[_8557]
                                require mem[_8557 + 32] == mem[_8557 + 32]
                                require mem[_8557 + 64] == mem[_8557 + 64]
                                if mem[_8557 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_8557 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_8557 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_8557 + 64]
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
                                _8681 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8681] == bool(mem[_8681])
                                if not mem[_8681]:
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
                                mem[(4 * ceil32(return_data.size)) + 512] = 3
                                mem[(4 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                                mem[(4 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                                _894 = mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (4 * ceil32(return_data.size)) + return_data.size + 640
                                _944 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                                mem[(6 * ceil32(return_data.size)) + 640] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                                require _894 + (32 * _944) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _894 + 672
                                t = (6 * ceil32(return_data.size)) + 672
                                while idx < _944:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _944 - 1 < _944
                                _2802 = mem[(32 * _944 - 1) + (6 * ceil32(return_data.size)) + 672]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = mem[(32 * _944 - 1) + (6 * ceil32(return_data.size)) + 672]
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), mem[(32 * _944 - 1) + (6 * ceil32(return_data.size)) + 672], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3903 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3921 = mem[_3903]
                                require mem[_3903] <= test266151307()
                                require _3903 + mem[_3903] + 31 < _3903 + return_data.size
                                _3937 = mem[_3903 + mem[_3903]]
                                require mem[_3903 + mem[_3903]] <= test266151307()
                                require _3903 + ceil32(return_data.size) + (32 * mem[_3903 + mem[_3903]]) + 32 <= test266151307() and (32 * mem[_3903 + mem[_3903]]) + 32 >= 0
                                mem[64] = _3903 + ceil32(return_data.size) + (32 * mem[_3903 + mem[_3903]]) + 32
                                mem[_3903 + ceil32(return_data.size)] = _3937
                                require _3921 + (32 * _3937) + 32 <= return_data.size
                                idx = 0
                                s = _3903 + _3921 + 32
                                t = _3903 + ceil32(return_data.size) + 32
                                while idx < _3937:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                require mem[(4 * ceil32(return_data.size)) + 512] - 1 < mem[(4 * ceil32(return_data.size)) + 512]
                                _5047 = mem[(32 * mem[(4 * ceil32(return_data.size)) + 512] - 1) + (4 * ceil32(return_data.size)) + 544]
                                mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                                mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 100] = _2802
                                mem[mem[64] + 132] = 0
                                mem[mem[64] + 164] = 0
                                mem[mem[64] + 196] = this.address
                                mem[mem[64] + 228] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_5047), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2802, 0, 0, address(this.address), block.timestamp
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5347 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_5347] == mem[_5347]
                                require mem[_5347 + 32] == mem[_5347 + 32]
                                require mem[_5347 + 64] == mem[_5347 + 64]
                                if mem[_5347 + 64] <= 0:
                                    revert with 0, 'amount too low'
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args PID, mem[_5347 + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalDeposits + mem[_5347 + 64] < totalDeposits:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalDeposits += mem[_5347 + 64]
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
                                _5738 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5738] == bool(mem[_5738])
                                if not mem[_5738]:
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
                                _895 = mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (4 * ceil32(return_data.size)) + return_data.size + 512
                                _945 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                                mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                                mem[(6 * ceil32(return_data.size)) + 512] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require _895 + (32 * _945) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _895 + 544
                                t = (6 * ceil32(return_data.size)) + 544
                                while idx < _945:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _945 - 1 < _945
                                _2804 = mem[(32 * _945 - 1) + (6 * ceil32(return_data.size)) + 544]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _2804
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _2804, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3904 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3922 = mem[_3904]
                                require mem[_3904] <= test266151307()
                                require _3904 + mem[_3904] + 31 < _3904 + return_data.size
                                _3938 = mem[_3904 + mem[_3904]]
                                require mem[_3904 + mem[_3904]] <= test266151307()
                                require _3904 + ceil32(return_data.size) + (32 * mem[_3904 + mem[_3904]]) + 32 <= test266151307() and (32 * mem[_3904 + mem[_3904]]) + 32 >= 0
                                mem[64] = _3904 + ceil32(return_data.size) + (32 * mem[_3904 + mem[_3904]]) + 32
                                mem[_3904 + ceil32(return_data.size)] = _3938
                                require _3922 + (32 * _3938) + 32 <= return_data.size
                                idx = 0
                                s = _3904 + _3922 + 32
                                t = _3904 + ceil32(return_data.size) + 32
                                while idx < _3938:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _5024 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_5024 + 32 len 96] = call.data[calldata.size len 96]
                                require 0 < mem[(4 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_5024]
                                mem[_5024 + 32] = mem[(4 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_5024]
                                mem[_5024 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require 2 < mem[_5024]
                                mem[_5024 + 96] = stor11
                                require mem[_5024] - 1 < mem[_5024]
                                require 0 < mem[_5024]
                                if mem[_5024 + 44 len 20] == mem[(32 * mem[_5024] - 1) + _5024 + 44 len 20]:
                                    require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require mem[_5024] - 1 < mem[_5024]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_5024] - 1) + _5024 + 44 len 20], _2804, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                    mem[_5024 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_5024 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[_5024 + 164] = 64
                                    mem[_5024 + 196] = mem[_5024]
                                    idx = 0
                                    s = _5024 + 32
                                    t = _5024 + 228
                                    while idx < mem[_5024]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _5024 + (32 * mem[_5024]) + -mem[64] + 224]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7023 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7069 = mem[_7023]
                                    require mem[_7023] <= test266151307()
                                    require _7023 + mem[_7023] + 31 < _7023 + return_data.size
                                    _7137 = mem[_7023 + mem[_7023]]
                                    require mem[_7023 + mem[_7023]] <= test266151307()
                                    require _7023 + ceil32(return_data.size) + (32 * mem[_7023 + mem[_7023]]) + 32 <= test266151307() and (32 * mem[_7023 + mem[_7023]]) + 32 >= 0
                                    mem[64] = _7023 + ceil32(return_data.size) + (32 * mem[_7023 + mem[_7023]]) + 32
                                    mem[_7023 + ceil32(return_data.size)] = _7137
                                    require _7069 + (32 * _7137) + 32 <= return_data.size
                                    idx = 0
                                    s = _7023 + _7069 + 32
                                    t = _7023 + ceil32(return_data.size) + 32
                                    while idx < _7137:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7137 - 1 < _7137
                                    _7720 = mem[(32 * _7137 - 1) + _7023 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _7720
                                    mem[mem[64] + 68] = 160
                                    _7753 = mem[_5024]
                                    mem[mem[64] + 164] = mem[_5024]
                                    idx = 0
                                    s = _5024 + 32
                                    t = mem[64] + 196
                                    while idx < _7753:
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
                                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _7720, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _7753) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8098 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8107 = mem[_8098]
                                    require mem[_8098] <= test266151307()
                                    require _8098 + mem[_8098] + 31 < _8098 + return_data.size
                                    _8115 = mem[_8098 + mem[_8098]]
                                    require mem[_8098 + mem[_8098]] <= test266151307()
                                    require _8098 + ceil32(return_data.size) + (32 * mem[_8098 + mem[_8098]]) + 32 <= test266151307() and (32 * mem[_8098 + mem[_8098]]) + 32 >= 0
                                    mem[64] = _8098 + ceil32(return_data.size) + (32 * mem[_8098 + mem[_8098]]) + 32
                                    mem[_8098 + ceil32(return_data.size)] = _8115
                                    require _8107 + (32 * _8115) + 32 <= return_data.size
                                    idx = 0
                                    s = _8098 + _8107 + 32
                                    t = _8098 + ceil32(return_data.size) + 32
                                    while idx < _8115:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require mem[(4 * ceil32(return_data.size)) + 416] - 1 < mem[(4 * ceil32(return_data.size)) + 416]
                                    require mem[_5024] - 1 < mem[_5024]
                                    _8522 = mem[(32 * mem[_5024] - 1) + _5024 + 32]
                                    mem[mem[64] + 4] = mem[(32 * mem[(4 * ceil32(return_data.size)) + 416] - 1) + (4 * ceil32(return_data.size)) + 460 len 20]
                                    mem[mem[64] + 68] = _2804
                                    mem[mem[64] + 100] = _7720
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_8522), _2804, _7720, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8556 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_8556] == mem[_8556]
                                    require mem[_8556 + 32] == mem[_8556 + 32]
                                    require mem[_8556 + 64] == mem[_8556 + 64]
                                    if mem[_8556 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_8556 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_8556 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_8556 + 64]
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
                                    _8680 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8680] == bool(mem[_8680])
                                    if not mem[_8680]:
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
                                mem[(6 * ceil32(return_data.size)) + 512] = 3
                                mem[(6 * ceil32(return_data.size)) + 544] = rewardTokenAddress
                                mem[(6 * ceil32(return_data.size)) + 576] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                                    _2834 = mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 671 < (6 * ceil32(return_data.size)) + return_data.size + 640
                                    _2862 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640] <= test266151307()
                                    require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 32 >= 0
                                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]) + 672
                                    mem[(7 * ceil32(return_data.size)) + 640] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 640]
                                    require _2834 + (32 * _2862) + 32 <= return_data.size
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + _2834 + 672
                                    t = (7 * ceil32(return_data.size)) + 672
                                    while idx < _2862:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _2862 - 1 < _2862
                                    _3877 = mem[(32 * _2862 - 1) + (7 * ceil32(return_data.size)) + 672]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _3877
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
                                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _3877, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5175 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5205 = mem[_5175]
                                    require mem[_5175] <= test266151307()
                                    require _5175 + mem[_5175] + 31 < _5175 + return_data.size
                                    _5207 = mem[_5175 + mem[_5175]]
                                    require mem[_5175 + mem[_5175]] <= test266151307()
                                    require _5175 + ceil32(return_data.size) + (32 * mem[_5175 + mem[_5175]]) + 32 <= test266151307() and (32 * mem[_5175 + mem[_5175]]) + 32 >= 0
                                    mem[64] = _5175 + ceil32(return_data.size) + (32 * mem[_5175 + mem[_5175]]) + 32
                                    mem[_5175 + ceil32(return_data.size)] = _5207
                                    require _5205 + (32 * _5207) + 32 <= return_data.size
                                    idx = 0
                                    s = _5175 + _5205 + 32
                                    t = _5175 + ceil32(return_data.size) + 32
                                    while idx < _5207:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                                    require mem[(6 * ceil32(return_data.size)) + 512] - 1 < mem[(6 * ceil32(return_data.size)) + 512]
                                    _7040 = mem[(32 * mem[(6 * ceil32(return_data.size)) + 512] - 1) + (6 * ceil32(return_data.size)) + 544]
                                    mem[mem[64] + 4] = mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 460 len 20]
                                    mem[mem[64] + 68] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 100] = _3877
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_7040), Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _3877, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7265 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_7265] == mem[_7265]
                                    require mem[_7265 + 32] == mem[_7265 + 32]
                                    require mem[_7265 + 64] == mem[_7265 + 64]
                                    if mem[_7265 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_7265 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_7265 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_7265 + 64]
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
                                    _7440 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7440] == bool(mem[_7440])
                                    if not mem[_7440]:
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
                                _2835 = mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
                                require mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 543 < (6 * ceil32(return_data.size)) + return_data.size + 512
                                _2863 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]
                                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512] <= test266151307()
                                require (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544 <= test266151307() and (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 32 >= 0
                                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 512]) + 544
                                mem[(7 * ceil32(return_data.size)) + 512] = _2863
                                require _2835 + (32 * _2863) + 32 <= return_data.size
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + _2835 + 544
                                t = (7 * ceil32(return_data.size)) + 544
                                while idx < _2863:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require _2863 - 1 < _2863
                                _3879 = mem[(32 * _2863 - 1) + (7 * ceil32(return_data.size)) + 544]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                mem[mem[64] + 36] = _3879
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
                                    args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _3879, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5176 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5206 = mem[_5176]
                                require mem[_5176] <= test266151307()
                                require _5176 + mem[_5176] + 31 < _5176 + return_data.size
                                _5208 = mem[_5176 + mem[_5176]]
                                require mem[_5176 + mem[_5176]] <= test266151307()
                                require _5176 + ceil32(return_data.size) + (32 * mem[_5176 + mem[_5176]]) + 32 <= test266151307() and (32 * mem[_5176 + mem[_5176]]) + 32 >= 0
                                mem[64] = _5176 + ceil32(return_data.size) + (32 * mem[_5176 + mem[_5176]]) + 32
                                mem[_5176 + ceil32(return_data.size)] = _5208
                                require _5206 + (32 * _5208) + 32 <= return_data.size
                                idx = 0
                                s = _5176 + _5206 + 32
                                t = _5176 + ceil32(return_data.size) + 32
                                while idx < _5208:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                _7027 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_7027 + 32 len 96] = call.data[calldata.size len 96]
                                require 0 < mem[(6 * ceil32(return_data.size)) + 416]
                                require 0 < mem[_7027]
                                mem[_7027 + 32] = mem[(6 * ceil32(return_data.size)) + 460 len 20]
                                require 1 < mem[_7027]
                                mem[_7027 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                require 2 < mem[_7027]
                                mem[_7027 + 96] = stor11
                                require mem[_7027] - 1 < mem[_7027]
                                require 0 < mem[_7027]
                                if mem[_7027 + 44 len 20] == mem[(32 * mem[_7027] - 1) + _7027 + 44 len 20]:
                                    require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                                    require mem[_7027] - 1 < mem[_7027]
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args address(mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 448]), mem[(32 * mem[_7027] - 1) + _7027 + 44 len 20], _3879, Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), 0, 0, address(this.address), block.timestamp
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
                                    mem[_7027 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_7027 + 132] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[_7027 + 164] = 64
                                    mem[_7027 + 196] = mem[_7027]
                                    idx = 0
                                    s = _7027 + 32
                                    t = _7027 + 228
                                    while idx < mem[_7027]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _7027 + (32 * mem[_7027]) + -mem[64] + 224]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7732 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7739 = mem[_7732]
                                    require mem[_7732] <= test266151307()
                                    require _7732 + mem[_7732] + 31 < _7732 + return_data.size
                                    _7745 = mem[_7732 + mem[_7732]]
                                    require mem[_7732 + mem[_7732]] <= test266151307()
                                    require _7732 + ceil32(return_data.size) + (32 * mem[_7732 + mem[_7732]]) + 32 <= test266151307() and (32 * mem[_7732 + mem[_7732]]) + 32 >= 0
                                    mem[64] = _7732 + ceil32(return_data.size) + (32 * mem[_7732 + mem[_7732]]) + 32
                                    mem[_7732 + ceil32(return_data.size)] = _7745
                                    require _7739 + (32 * _7745) + 32 <= return_data.size
                                    idx = 0
                                    s = _7732 + _7739 + 32
                                    t = _7732 + ceil32(return_data.size) + 32
                                    while idx < _7745:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require _7745 - 1 < _7745
                                    _8085 = mem[(32 * _7745 - 1) + _7732 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) / 2
                                    mem[mem[64] + 36] = _8085
                                    mem[mem[64] + 68] = 160
                                    _8099 = mem[_7027]
                                    mem[mem[64] + 164] = mem[_7027]
                                    idx = 0
                                    s = _7027 + 32
                                    t = mem[64] + 196
                                    while idx < _8099:
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
                                        args Mask(255, 1, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)), _8085, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _8099) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8533 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8534 = mem[_8533]
                                    require mem[_8533] <= test266151307()
                                    require _8533 + mem[_8533] + 31 < _8533 + return_data.size
                                    _8535 = mem[_8533 + mem[_8533]]
                                    require mem[_8533 + mem[_8533]] <= test266151307()
                                    require _8533 + ceil32(return_data.size) + (32 * mem[_8533 + mem[_8533]]) + 32 <= test266151307() and (32 * mem[_8533 + mem[_8533]]) + 32 >= 0
                                    mem[64] = _8533 + ceil32(return_data.size) + (32 * mem[_8533 + mem[_8533]]) + 32
                                    mem[_8533 + ceil32(return_data.size)] = _8535
                                    require _8534 + (32 * _8535) + 32 <= return_data.size
                                    idx = 0
                                    s = _8533 + _8534 + 32
                                    t = _8533 + ceil32(return_data.size) + 32
                                    while idx < _8535:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require mem[(6 * ceil32(return_data.size)) + 416] - 1 < mem[(6 * ceil32(return_data.size)) + 416]
                                    require mem[_7027] - 1 < mem[_7027]
                                    _9293 = mem[(32 * mem[_7027] - 1) + _7027 + 32]
                                    mem[mem[64] + 4] = mem[(32 * mem[(6 * ceil32(return_data.size)) + 416] - 1) + (6 * ceil32(return_data.size)) + 460 len 20]
                                    mem[mem[64] + 68] = _3879
                                    mem[mem[64] + 100] = _8085
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = 0
                                    mem[mem[64] + 196] = this.address
                                    mem[mem[64] + 228] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_9293), _3879, _8085, 0, 0, address(this.address), block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9328 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_9328] == mem[_9328]
                                    require mem[_9328 + 32] == mem[_9328 + 32]
                                    require mem[_9328 + 64] == mem[_9328 + 64]
                                    if mem[_9328 + 64] <= 0:
                                        revert with 0, 'amount too low'
                                    require ext_code.size(stakingContractAddress)
                                    call stakingContractAddress.deposit(uint256 rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args PID, mem[_9328 + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalDeposits + mem[_9328 + 64] < totalDeposits:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalDeposits += mem[_9328 + 64]
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
                                    _9342 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9342] == bool(mem[_9342])
                                    if not mem[_9342]:
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
