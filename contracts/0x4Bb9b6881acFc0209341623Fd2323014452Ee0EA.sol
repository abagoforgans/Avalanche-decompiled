contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#  - checkReward()
#  - reinvest()
#
const decimals = 18


array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
address owner;
uint256 numberOfAllowedDepositors;
mapping of uint8 stor7;
uint256 totalDeposits;
address depositTokenAddress;
address rewardTokenAddress;
address devAddr;
address denAddr;
uint256 MIN_TOKENS_TO_REINVEST;
uint256 MAX_TOKENS_TO_DEPOSIT_WITHOUT_REINVEST;
uint8 DEPOSITS_ENABLED;
uint256 BURN_FEE_BIPS;
uint256 DEN_FEE_BIPS;
address stakingContractAddress;
uint256 stor24;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function DEN_FEE_BIPS() payable {
    return DEN_FEE_BIPS
}

function numberOfAllowedDepositors() payable {
    return numberOfAllowedDepositors
}

function allowedDepositors(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function MAX_TOKENS_TO_DEPOSIT_WITHOUT_REINVEST() payable {
    return MAX_TOKENS_TO_DEPOSIT_WITHOUT_REINVEST
}

function totalDeposits() payable {
    return totalDeposits
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function BURN_FEE_BIPS() payable {
    return BURN_FEE_BIPS
}

function denAddr() payable {
    return denAddr
}

function DEPOSITS_ENABLED() payable {
    return bool(DEPOSITS_ENABLED)
}

function MIN_TOKENS_TO_REINVEST() payable {
    return MIN_TOKENS_TO_REINVEST
}

function depositToken() payable {
    return depositTokenAddress
}

function devAddr() payable {
    return devAddr
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
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

function updateDevAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        revert with 0, 'AlphaStrategy::onlyDev'
    emit 0xa8e91499: devAddr, arg1
    devAddr = arg1
}

function updateMinTokensToReinvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit UpdateMinTokensToReinvest(MIN_TOKENS_TO_REINVEST, arg1);
    MIN_TOKENS_TO_REINVEST = arg1
}

function updateDepositsEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require bool(DEPOSITS_ENABLED) != arg1
    DEPOSITS_ENABLED = uint8(arg1)
    emit DepositsEnabled(arg1);
}

function updateMaxTokensToDepositWithoutReinvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xa5dae505: MAX_TOKENS_TO_DEPOSIT_WITHOUT_REINVEST, arg1
    MAX_TOKENS_TO_DEPOSIT_WITHOUT_REINVEST = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, '_approve::owner zero address'
    if not arg1:
        revert with 0, '_approve::spender zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function updateDenFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 + BURN_FEE_BIPS < arg1:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 + BURN_FEE_BIPS <= 10000
    emit UpdateDevFee(DEN_FEE_BIPS, arg1);
    DEN_FEE_BIPS = arg1
}

function updateBurnFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 + DEN_FEE_BIPS < arg1:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 + DEN_FEE_BIPS <= 10000
    emit UpdateAdminFee(BURN_FEE_BIPS, arg1);
    BURN_FEE_BIPS = arg1
}

function estimateDeployedBalance() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0x93f1a40b with:
            gas gas_remaining wei
           args stor24, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.0x5312ea8e with:
         gas gas_remaining wei
        args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    totalDeposits = 0
}

function recoverAVAX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(0, arg1);
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
}

function allowDepositor(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7[address(arg1)]:
        revert with 0, 'Permissioned::allowDepositor'
    stor7[address(arg1)] = 1
    if numberOfAllowedDepositors + 1 < numberOfAllowedDepositors:
        revert with 0, 'SafeMath: addition overflow'
    numberOfAllowedDepositors++
    emit 0xc0a1035c: arg1
}

function revokeAllowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Recovered(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x775f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[216 len 12]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    46,
                    0x445f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63,
                    mem[174 len 18],
                    mem[210 len 14]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function removeDepositor(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if numberOfAllowedDepositors <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x645065726d697373696f6e65643a3a72656d6f76654465706f7369746f722c206e6f20616c6c6f776564206465706f7369746f72,
                    mem[216 len 12]
    if bool(stor7[address(arg1)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x735065726d697373696f6e65643a3a72656d6f76654465706f7369746f722c206e6f7420616c6c6f7765,
                    mem[206 len 22]
    stor7[address(arg1)] = 0
    if 1 > numberOfAllowedDepositors:
        revert with 0, 'SafeMath: subtraction underflow'
    numberOfAllowedDepositors--
    emit 0xe86f6608: arg1
}

function getDepositTokensForShares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 0
    require totalSupply
    if totalSupply * totalDeposits / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalSupply * totalDeposits:
        return 0
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if arg1:
            if arg1 * totalDeposits / arg1 != totalDeposits:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (arg1 * totalDeposits / totalSupply)
    revert
}

function getSharesForDepositTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return arg1
    require totalSupply
    if totalSupply * totalDeposits / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalSupply * totalDeposits:
        return arg1
    if not arg1:
        if totalDeposits <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalDeposits:
            return (0 / totalDeposits)
    else:
        if arg1:
            if arg1 * totalSupply / arg1 != totalSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalDeposits <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalDeposits:
                return (arg1 * totalSupply / totalDeposits)
    revert
}

function rescueDeployedFunds(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.0x5312ea8e with:
         gas gas_remaining wei
        args stor24
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction underflow'
    if 0 < arg1:
        revert with 0, 32, 39, 0x73416c706861436f6d706f756e6465724a6f653a3a7265736375654465706c6f79656446756e64, mem[267 len 25]
    totalDeposits = ext_call.return_data[0]
    emit Reinvest(totalDeposits, totalSupply);
    if bool(DEPOSITS_ENABLED) == 1:
        if arg2 == 1:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require DEPOSITS_ENABLED
            DEPOSITS_ENABLED = 0
            emit DepositsEnabled(0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if msg.sender == arg1:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        52,
                        0x775f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[216 len 12]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        46,
                        0x445f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63,
                        mem[174 len 18],
                        mem[210 len 14]
    else:
        if allowance[address(arg1)][address(msg.sender)] == -1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            52,
                            0x775f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[216 len 12]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            46,
                            0x445f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63,
                            mem[174 len 18],
                            mem[210 len 14]
        else:
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            47,
                            0x737472616e7366657246726f6d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[175 len 17],
                            mem[209 len 15]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            if not arg2:
                revert with 0, 
                            32,
                            52,
                            0x775f7472616e73666572546f6b656e733a2063616e6e6f74207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[312 len 12]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            46,
                            0x445f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63,
                            mem[270 len 18],
                            mem[306 len 14]
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
    if totalSupply:
        require totalSupply
        if totalSupply * totalDeposits / totalSupply != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply * totalDeposits:
            if not arg1:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if 0 / totalSupply > 0:
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x441a3e70 with:
                         gas gas_remaining wei
                        args stor24, 0 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(depositTokenAddress)
                    call depositTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 32, 36, 0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, mem[264 len 28]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x655f6275726e3a206275726e20616d6f756e7420657863656564732066726f6d2062616c616e63,
                                    mem[231 len 25],
                                    mem[281 len 7]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 
                                    32,
                                    39,
                                    0x645f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c,
                                    mem[327 len 25],
                                    mem[377 len 7]
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if 0 / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction underflow'
                    totalDeposits -= 0 / totalSupply
                    emit Withdraw((0 / totalSupply), msg.sender);
            else:
                require arg1
                if arg1 * totalDeposits / arg1 != totalDeposits:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x79536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if arg1 * totalDeposits / totalSupply > 0:
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x441a3e70 with:
                         gas gas_remaining wei
                        args stor24, arg1 * totalDeposits / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(depositTokenAddress)
                    call depositTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * totalDeposits / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 32, 36, 0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45, mem[264 len 28]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x655f6275726e3a206275726e20616d6f756e7420657863656564732066726f6d2062616c616e63,
                                    mem[231 len 25],
                                    mem[281 len 7]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 
                                    32,
                                    39,
                                    0x645f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c,
                                    mem[327 len 25],
                                    mem[377 len 7]
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if arg1 * totalDeposits / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction underflow'
                    totalDeposits -= arg1 * totalDeposits / totalSupply
                    emit Withdraw((arg1 * totalDeposits / totalSupply), msg.sender);
}



}
