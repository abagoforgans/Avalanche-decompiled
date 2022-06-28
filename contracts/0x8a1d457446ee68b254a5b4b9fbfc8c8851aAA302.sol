contract main {




// =====================  Runtime code  =====================


#
#  - drip()
#  - sub_c91f0c53(?)
#  - dump()
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner;
address stor201;
address operatorAddress; offset 8
address stakingPoolAddress;
address sub_811be779Address;
address sub_f36d9149Address;
address underlyingTokenAddress;
uint256 totalCirculating;
uint256 totalAvailableSupply;
uint256 sub_51d1b100;
uint256 sub_e1dfd7fa;
uint256 sub_07ed4eb2;
uint256 sub_19ae4c98;
uint256 sub_4fd013d4;
uint256 sub_2087a1b0;
uint256 sub_d4cb212e;
mapping of uint256 sub_11efba13;
mapping of uint256 sub_0794d0b6;
mapping of uint256 stor219;
mapping of uint256 claimableTokens;
mapping of address sub_7a4b7065;
array of struct sub_b40464ec;
array of address stor62990654154726600339334015877042376583875791486893517356681850948570880723791;

function name() payable {
    return name[0 len name.length]
}

function sub_0794d0b6(?) payable {
    require calldata.size - 4 >= 32
    return sub_0794d0b6[arg1]
}

function sub_07ed4eb2(?) payable {
    return sub_07ed4eb2
}

function stakingPool() payable {
    return stakingPoolAddress
}

function sub_11efba13(?) payable {
    return sub_11efba13[msg.sender]
}

function totalSupply() payable {
    return totalSupply
}

function sub_19ae4c98(?) payable {
    return sub_19ae4c98
}

function getClaimableTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return claimableTokens[address(arg1)]
}

function sub_2087a1b0(?) payable {
    return sub_2087a1b0
}

function underlyingToken() payable {
    return underlyingTokenAddress
}

function sub_303f0acb(?) payable {
    return sub_b40464ec.length
}

function decimals() payable {
    return decimals
}

function getStakingPool() payable {
    return stakingPoolAddress
}

function totalCirculating() payable {
    return totalCirculating
}

function sub_4fd013d4(?) payable {
    return sub_4fd013d4
}

function sub_51d1b100(?) payable {
    return sub_51d1b100
}

function sub_52dd60fa(?) payable {
    return sub_0794d0b6[stor208]
}

function sub_55ae421d(?) payable {
    return sub_f36d9149Address
}

function operator() payable {
    return operatorAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7a4b7065(?) payable {
    require calldata.size - 4 >= 32
    staticcall 'console.log'.0xfcec75e0 with:
            gas gas_remaining wei
           args 0, 96, address(arg1), sub_7a4b7065[address(arg1)], 24, Mask(192, 0, 'checking if in registry:')
    return sub_7a4b7065[address(arg1)]
}

function totalAvailableSupply() payable {
    return totalAvailableSupply
}

function sub_811be779(?) payable {
    return sub_811be779Address
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_b40464ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b40464ec.length
    return sub_b40464ec[arg1].field_0
}

function balance() payable {
    return balanceOf[address(msg.sender)]
}

function claimableTokens() payable {
    return claimableTokens[msg.sender]
}

function sub_d4cb212e(?) payable {
    return sub_d4cb212e
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e1dfd7fa(?) payable {
    return sub_e1dfd7fa
}

function getUnderlyingToken() payable {
    return underlyingTokenAddress
}

function sub_f1698830(?) payable {
    require calldata.size - 4 >= 32
    return sub_11efba13[address(arg1)]
}

function sub_f36d9149(?) payable {
    return sub_f36d9149Address
}

function postUpgrade() payable {
  stop
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

function sub_f2d623ac(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'sFunding/is-operator-or-owner'
    sub_11efba13[address(arg1)] = 0
}

function sub_f5896bc7(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_b40464ec.length:
        mem[0] = 224
        if sub_b40464ec[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_81ceb435(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'sFunding/is-operator-or-owner'
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, arg1, 19, Mask(152, 0, 'setting token phase')
    sub_51d1b100 = arg1
    return arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'sFunding/is-operator-or-owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x654f776e61626c653a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[205 len 23]
    operatorAddress = arg1
}

function sub_7305ab9c(?) payable {
    idx = 0
    s = 0
    while idx < sub_b40464ec.length:
        mem[0] = sub_b40464ec[idx].field_0
        mem[32] = 223
        require ext_code.size(sub_7a4b7065[stor224[idx].field_0])
        staticcall sub_7a4b7065[stor224[idx].field_0].totalInterestEarned() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return (_16 * sub_b40464ec.length)
}

function sub_5b64440b(?) payable {
    require calldata.size - 4 >= 32
    if not stor219[arg1]:
        if not sub_19ae4c98:
            revert with 0, 'SafeMath: division by zero'
        return (0 / sub_19ae4c98)
    if 10^18 * stor219[arg1] / stor219[arg1] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not sub_19ae4c98:
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * stor219[arg1] / sub_19ae4c98)
}

function pow(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        return 1
    if 1 == arg2:
        return arg1
    if not arg1:
        if arg2:
            return 0
    idx = 1
    s = arg1
    while idx < arg2:
        if not s:
            idx = idx + 1
            s = 0
            continue 
        if arg1 * s / s != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        idx = idx + 1
        s = arg1 * s
        continue 
    return s
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x2e45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_2f7ae8ae(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'sFunding/is-operator-or-owner'
    staticcall 'console.log'.0xfcec75e0 with:
            gas gas_remaining wei
           args 0, 96, address(arg1), sub_7a4b7065[address(arg1)], 24, Mask(192, 0, 'checking if in registry:')
    if sub_7a4b7065[address(arg1)] == arg1:
        staticcall 'console.log'.log(string arg1) with:
                gas gas_remaining wei
               args 0, 'charity already added...'
    else:
        staticcall 'console.log'.log(string arg1) with:
                gas gas_remaining wei
               args 0, '..'
        sub_7a4b7065[address(arg1)] = arg1
        sub_b40464ec.length++
        stor8B43[stor224.length] = arg1
    return sub_7a4b7065[address(arg1)]
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function claimTokens() payable {
    staticcall 'console.log'.0x7c81217 with:
            gas gas_remaining wei
           args 0, 96, msg.sender, claimableTokens[msg.sender], 15, Mask(120, 0, 'claiming tokens')
    staticcall 'console.log'.0x7c81217 with:
            gas gas_remaining wei
           args 0, 96, stor201, balanceOf[stor201], 12, Mask(96, 0, 'total tokens')
    claimableTokens[msg.sender] = 0
    if not msg.sender:
        revert with 0, 32, 36, 0x7445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[720 len 28]
    if not operatorAddress:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[718 len 30]
    allowance[address(msg.sender)][stor201] = claimableTokens[msg.sender]
    emit Approval(claimableTokens[msg.sender], msg.sender, operatorAddress);
    if not msg.sender:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[719 len 29]
    if claimableTokens[msg.sender] > balanceOf[stor201]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[686 len 26],
                    mem[738 len 6]
    balanceOf[stor201] -= claimableTokens[msg.sender]
    if claimableTokens[msg.sender] + balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = claimableTokens[msg.sender] + balanceOf[msg.sender]
    emit Transfer(claimableTokens[msg.sender], operatorAddress, msg.sender);
}

function sub_d57e79a9(?) payable {
    require calldata.size - 4 >= 32
    if claimableTokens[msg.sender] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x736e6f7420656e6f75676820636c61696d61626c652062616c616e636520666f7220616d6f756e,
                    mem[203 len 25]
    staticcall 'console.log'.0x7c81217 with:
            gas gas_remaining wei
           args 0, 96, msg.sender, arg1, 15, Mask(120, 0, 'claiming tokens')
    claimableTokens[msg.sender] -= arg1
    if not msg.sender:
        revert with 0, 32, 36, 0x7445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[460 len 28]
    if not operatorAddress:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[458 len 30]
    allowance[address(msg.sender)][stor201] = arg1
    emit Approval(arg1, msg.sender, operatorAddress);
    if not msg.sender:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[459 len 29]
    if arg1 > balanceOf[stor201]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[426 len 26],
                    mem[478 len 6]
    balanceOf[stor201] -= arg1
    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = arg1 + balanceOf[msg.sender]
    emit Transfer(arg1, operatorAddress, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_88d742c2(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 17
    mem[128] = 0x434c41494d494e4720494e544552455354000000000000000000000000000000
    mem[196] = 32
    mem[228] = 17
    mem[260] = 0x5354000000000000000000000000000000
    mem[160] = 100
    mem[196 len 28] = 0
    mem[192 len 4] = log(string arg1)
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args 0, 0, 17, 0x5354000000000000000000000000000000
    mem[328] = msg.sender
    mem[360] = sub_f36d9149Address
    mem[392] = arg1
    mem[292] = 100
    mem[64] = 424
    mem[328 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[324 len 4] = log(address arg1, address arg2, address arg3)
    staticcall 'console.log'.log(address arg1, address arg2, address arg3) with:
            gas gas_remaining wei
           args msg.sender, sub_f36d9149Address, arg1
    idx = 0
    while idx < sub_b40464ec.length:
        mem[0] = 224
        if sub_b40464ec[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        mem[456 len 60] = 0x6f66662d636861696e207472616e7366657220746f20636861726974792077616c6c6574202d206e6f7420746f756368696e6720616e797468696e
        idx = 0
        while idx < 60:
            mem[idx + 620] = mem[idx + 456]
            idx = idx + 32
            continue 
        mem[652] = mem[656 len 28]
        staticcall 'console.log'.log(string arg1) with:
                gas gas_remaining wei
               args 0, 32, 60, mem[620 len 64]
    if sub_f36d9149Address == arg1:
        staticcall 'console.log'.log(string arg1) with:
                gas gas_remaining wei
               args 0, 32, 60, 0x6f66662d636861696e207472616e7366657220746f20636861726974792077616c6c6574202d206e6f7420746f756368696e6720616e797468696e00, mem[516 len 4], Mask(224, -256, mem[516 len 4]) << 256
    else:
        if msg.sender == sub_f36d9149Address:
            if sub_11efba13[address(arg1)]:
                require ext_code.size(underlyingTokenAddress)
                staticcall underlyingTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, ext_call.return_data[0], 18, 0x6465723a0000000000000000000000000000
                sub_11efba13[address(arg1)] = 0
                require ext_code.size(underlyingTokenAddress)
                call underlyingTokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), sub_11efba13[address(arg1)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer failed'
}

function sub_7d7a87a0(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender == operatorAddress:
        staticcall 'console.log'.log(string arg1, address arg2) with:
                gas gas_remaining wei
               args 0, 64, address(arg1), 27, Mask(216, 0, 'removing charity from lists')
        sub_7a4b7065[address(arg1)] = 0
        require var22001 < sub_b40464ec.length
        if sub_b40464ec[var24001].field_0 == arg1:
            if var24004 < sub_b40464ec.length:
                idx = var24004
                while idx < sub_b40464ec.length - 1:
                    require idx + 1 < sub_b40464ec.length
                    require idx < sub_b40464ec.length
                    mem[0] = 224
                    sub_b40464ec[idx].field_0 = sub_b40464ec[idx].field_256
                    idx = idx + 1
                    continue 
                require sub_b40464ec.length
                sub_b40464ec[sub_b40464ec.length].field_0 = 0
                sub_b40464ec.length--
        else:
            idx = var24004
            while idx < sub_b40464ec.length - 1:
                require idx + 1 < sub_b40464ec.length
                mem[0] = 224
                if sub_b40464ec[idx].field_256 != arg1:
                    idx = idx + 1
                    continue 
                if idx + 1 < sub_b40464ec.length:
                    s = idx + 1
                    while s < sub_b40464ec.length - 1:
                        require s + 1 < sub_b40464ec.length
                        require s < sub_b40464ec.length
                        mem[0] = 224
                        sub_b40464ec[s].field_0 = sub_b40464ec[s].field_256
                        s = s + 1
                        continue 
                    require sub_b40464ec.length
                    sub_b40464ec[sub_b40464ec.length].field_0 = 0
                    sub_b40464ec.length--
            if sub_b40464ec.length < sub_b40464ec.length:
                idx = sub_b40464ec.length
                while idx < sub_b40464ec.length - 1:
                    require idx + 1 < sub_b40464ec.length
                    require idx < sub_b40464ec.length
                    mem[0] = 224
                    sub_b40464ec[idx].field_0 = sub_b40464ec[idx].field_256
                    idx = idx + 1
                    continue 
                require sub_b40464ec.length
                sub_b40464ec[sub_b40464ec.length].field_0 = 0
                sub_b40464ec.length--
    else:
        if owner != msg.sender:
            revert with 0, 'sFunding/is-operator-or-owner'
        staticcall 'console.log'.log(string arg1, address arg2) with:
                gas gas_remaining wei
               args 0, 64, address(arg1), 27, Mask(216, 0, 'removing charity from lists')
        sub_7a4b7065[address(arg1)] = 0
        require var25001 < sub_b40464ec.length
        if sub_b40464ec[var27001].field_0 == arg1:
            if var27004 < sub_b40464ec.length:
                idx = var27004
                while idx < sub_b40464ec.length - 1:
                    require idx + 1 < sub_b40464ec.length
                    require idx < sub_b40464ec.length
                    mem[0] = 224
                    sub_b40464ec[idx].field_0 = sub_b40464ec[idx].field_256
                    idx = idx + 1
                    continue 
                require sub_b40464ec.length
                sub_b40464ec[sub_b40464ec.length].field_0 = 0
                sub_b40464ec.length--
        else:
            idx = var27004
            while idx < sub_b40464ec.length - 1:
                require idx + 1 < sub_b40464ec.length
                mem[0] = 224
                if sub_b40464ec[idx].field_256 != arg1:
                    idx = idx + 1
                    continue 
                if idx + 1 < sub_b40464ec.length:
                    s = idx + 1
                    while s < sub_b40464ec.length - 1:
                        require s + 1 < sub_b40464ec.length
                        require s < sub_b40464ec.length
                        mem[0] = 224
                        sub_b40464ec[s].field_0 = sub_b40464ec[s].field_256
                        s = s + 1
                        continue 
                    require sub_b40464ec.length
                    sub_b40464ec[sub_b40464ec.length].field_0 = 0
                    sub_b40464ec.length--
            if sub_b40464ec.length < sub_b40464ec.length:
                idx = sub_b40464ec.length
                while idx < sub_b40464ec.length - 1:
                    require idx + 1 < sub_b40464ec.length
                    require idx < sub_b40464ec.length
                    mem[0] = 224
                    sub_b40464ec[idx].field_0 = sub_b40464ec[idx].field_256
                    idx = idx + 1
                    continue 
                require sub_b40464ec.length
                sub_b40464ec[sub_b40464ec.length].field_0 = 0
                sub_b40464ec.length--
}



}
