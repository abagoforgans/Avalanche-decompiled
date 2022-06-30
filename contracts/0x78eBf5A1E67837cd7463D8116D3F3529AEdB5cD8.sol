contract main {




// =====================  Runtime code  =====================


#
#  - sub_3e1f7117(?)
#  - sub_cf7614de(?)
#
address owner;
array of uint256 name;
array of uint256 tokenname;
address operatorAddress;
uint32 stor155;
address charityWalletAddress;
uint256 stor155;
address sub_55ae421dAddress;
address sub_bc1bb2a7Address;
address stakingPoolAddress;
address sub_811be779Address;
address holdingTokenAddress;
address stor161;
uint256 accountedBalance;
uint256 sub_7facfd63;
uint256 minFunding;
uint256 totalInterestEarned;
uint256 sub_20b849d5;
uint256 sub_b2961886;
uint256 sub_db722742;
uint256 sub_e3b9fceb;
uint256 stor173;
array of struct contributors;
address cTokenAddress;
address sub_73f27aa8Address;
mapping of uint256 balanceOf;
mapping of uint256 balanceOfUSD;
uint8 isOpen;
address stor182; offset 8
array of uint256 stor100854416345316802056184364750193678299985834698244506585272914753650503820705;

function name() payable {
    return name[0 len name.length]
}

function accountedBalance() payable {
    return accountedBalance
}

function stakingPool() payable {
    return stakingPoolAddress
}

function sub_146f1602(?) payable {
    return sub_7facfd63
}

function minFunding() payable {
    return minFunding
}

function sub_20b849d5(?) payable {
    return sub_20b849d5
}

function getAccountedBalance() payable {
    return accountedBalance
}

function contributors(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < contributors.length
    return contributors[arg1].field_0
}

function isOpen() payable {
    return bool(isOpen)
}

function sub_55ae421d(?) payable {
    return sub_55ae421dAddress
}

function operator() payable {
    return operatorAddress
}

function cToken() payable {
    return cTokenAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_73f27aa8(?) payable {
    return sub_73f27aa8Address
}

function charityWallet() payable {
    return address(charityWalletAddress)
}

function tokenname() payable {
    return tokenname[0 len tokenname.length]
}

function sub_7facfd63(?) payable {
    return sub_7facfd63
}

function sub_811be779(?) payable {
    return sub_811be779Address
}

function owner() payable {
    return owner
}

function getCharityWallet() payable {
    return address(charityWalletAddress)
}

function holdingToken() payable {
    return holdingTokenAddress
}

function sub_b2961886(?) payable {
    return sub_b2961886
}

function balanceOfUSD(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOfUSD[address(arg1)]
}

function totalInterestEarned() payable {
    return totalInterestEarned
}

function sub_bc1bb2a7(?) payable {
    return sub_bc1bb2a7Address
}

function sub_db722742(?) payable {
    return sub_db722742
}

function sub_e3b9fceb(?) payable {
    return sub_e3b9fceb
}

function _fallback() payable {
    revert
}

function postUpgrade() payable {
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'is-operator-or-owner'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStakingPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'is-operator-or-owner'
    stakingPoolAddress = arg1
}

function sub_0f0ce930(?) payable {
    require ext_code.size(stor182)
    staticcall stor182.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[32]
}

function token() payable {
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function supplyRatePerBlock() payable {
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.0xae9d70b0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balance() payable {
    require ext_code.size(cTokenAddress)
    call cTokenAddress.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'is-operator-or-owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x774f776e61626c653a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[205 len 23]
    operatorAddress = arg1
}

function interestEarned() payable {
    require ext_code.size(cTokenAddress)
    call cTokenAddress.balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= accountedBalance:
        return 0
    if accountedBalance > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - accountedBalance)
}

function decimals() payable {
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
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

function estimatedInterestRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.0xae9d70b0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg1 * ext_call.return_data[0])
}

function getContributors() payable {
    if not contributors.length:
        mem[(32 * contributors.length) + 128] = 32
        mem[(32 * contributors.length) + 160] = contributors.length
        mem[(32 * contributors.length) + 192 len floor32(contributors.length)] = mem[128 len floor32(contributors.length)]
        return memory
          from (32 * contributors.length) + 128
           len (96 * contributors.length) + 64
    mem[128] = address(contributors.field_0)
    idx = 128
    s = 0
    while (32 * contributors.length) + 96 > idx:
        mem[idx + 32] = contributors[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * contributors.length) + 192 len floor32(contributors.length)] = mem[128 len floor32(contributors.length)]
    return Array(len=contributors.length, data=mem[128 len floor32(contributors.length)], mem[(32 * contributors.length) + floor32(contributors.length) + 192 len (32 * contributors.length) - floor32(contributors.length)]), 
}

function withdrawAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'Funding/no-funds'
    if balanceOf[address(msg.sender)] <= arg1:
        balanceOf[address(msg.sender)] = 0
    else:
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg1
    if accountedBalance <= arg1:
        accountedBalance = 0
    else:
        if arg1 > accountedBalance:
            revert with 0, 'SafeMath: subtraction overflow'
        accountedBalance -= arg1
    require ext_code.size(cTokenAddress)
    call cTokenAddress.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Funding/redeem'
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Funding/transfer'
    emit Withdrawn(arg1, msg.sender);
}

function withdraw() payable {
    if balanceOf[msg.sender] > balanceOf[address(msg.sender)]:
        revert with 0, 'Funding/no-funds'
    if balanceOf[address(msg.sender)] <= balanceOf[msg.sender]:
        balanceOf[address(msg.sender)] = 0
    else:
        if balanceOf[msg.sender] > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= balanceOf[msg.sender]
    if accountedBalance <= balanceOf[msg.sender]:
        accountedBalance = 0
    else:
        if balanceOf[msg.sender] > accountedBalance:
            revert with 0, 'SafeMath: subtraction overflow'
        accountedBalance -= balanceOf[msg.sender]
    require ext_code.size(cTokenAddress)
    call cTokenAddress.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args balanceOf[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Funding/redeem'
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balanceOf[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Funding/transfer'
    emit Withdrawn(balanceOf[msg.sender], msg.sender);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not isOpen:
        revert with 0, 'Funding/open'
    if minFunding:
        if arg1 < minFunding:
            revert with 0, 'Funding/small-amount'
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Funding/t-fail'
    idx = 0
    while idx < contributors.length:
        mem[0] = 175
        if contributors[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'Funding/deposit-zero'
        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        if arg1 + accountedBalance < accountedBalance:
            revert with 0, 'SafeMath: addition overflow'
        accountedBalance += arg1
        require ext_code.size(cTokenAddress)
        staticcall cTokenAddress.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args cTokenAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Funding/approve'
        require ext_code.size(cTokenAddress)
        call cTokenAddress.mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Funding/supply'
        emit Deposited(arg1, msg.sender);
    contributors.length++
    storDEF9[stor175.length] = msg.sender or Mask(96, 160, storDEF9[stor175.length])
    if not arg1:
        revert with 0, 'Funding/deposit-zero'
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    if arg1 + accountedBalance < accountedBalance:
        revert with 0, 'SafeMath: addition overflow'
    accountedBalance += arg1
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args cTokenAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Funding/approve'
    require ext_code.size(cTokenAddress)
    call cTokenAddress.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Funding/supply'
    emit Deposited(arg1, msg.sender);
}

function sponsor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not isOpen:
        revert with 0, 'Funding/open'
    if minFunding:
        if arg1 < minFunding:
            revert with 0, 'Funding/small-amount'
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Funding/t-fail'
    idx = 0
    while idx < contributors.length:
        mem[0] = 175
        if contributors[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'Funding/deposit-zero'
        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        if arg1 + accountedBalance < accountedBalance:
            revert with 0, 'SafeMath: addition overflow'
        accountedBalance += arg1
        require ext_code.size(cTokenAddress)
        staticcall cTokenAddress.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args cTokenAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Funding/approve'
        require ext_code.size(cTokenAddress)
        call cTokenAddress.mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Funding/supply'
        emit Deposited(arg1, msg.sender);
    contributors.length++
    storDEF9[stor175.length] = msg.sender or Mask(96, 160, storDEF9[stor175.length])
    if not arg1:
        revert with 0, 'Funding/deposit-zero'
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    if arg1 + accountedBalance < accountedBalance:
        revert with 0, 'SafeMath: addition overflow'
    accountedBalance += arg1
    require ext_code.size(cTokenAddress)
    staticcall cTokenAddress.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args cTokenAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Funding/approve'
    require ext_code.size(cTokenAddress)
    call cTokenAddress.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Funding/supply'
    emit Deposited(arg1, msg.sender);
}

function sub_9fd53034(?) payable {
    if sub_73f27aa8Address != msg.sender:
        revert with 0, 'is-help-token'
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, stor173, 12, 0
    if stor173:
        require ext_code.size(cTokenAddress)
        call cTokenAddress.redeemUnderlying(uint256 arg1) with:
             gas gas_remaining wei
            args stor173
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Funding/redeem'
        require ext_code.size(cTokenAddress)
        staticcall cTokenAddress.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if holdingTokenAddress == ext_call.return_data[12 len 20]:
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args sub_55ae421dAddress, stor173
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Funding/transfer'
        else:
            staticcall 'console.log'.0x7c81217 with:
                    gas gas_remaining wei
                   args 0, 96, sub_bc1bb2a7Address, stor173, 9, Mask(72, 0, '
SWAPPING')
            if not stor173:
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_bc1bb2a7Address, stor173
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Funding/approve'
                require ext_code.size(stor161)
                call stor161.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), holdingTokenAddress, stor173, 0, sub_55ae421dAddress
            else:
                if 50 * stor173 / stor173 != 50:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[685 len 31]
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_bc1bb2a7Address, stor173
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Funding/approve'
                require ext_code.size(stor161)
                call stor161.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), holdingTokenAddress, stor173, 50 * stor173 / 100, sub_55ae421dAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        sub_b2961886 = 0
        stor173 = 0
        emit Rewarded(stor173, address(charityWalletAddress));
}

function sub_cfb10ee7(?) payable {
    require calldata.size - 4 >= 32
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, arg1, 20, 0x6f6e416d6f756e74000000000000000000000000
    if arg1:
        require ext_code.size(cTokenAddress)
        staticcall cTokenAddress.underlying() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_811be779Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Funding/developer approve'
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_811be779Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Funding/developer transfer'
            if not arg1:
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if holdingTokenAddress == address(ext_call.return_data[0]):
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stakingPoolAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stakingPoolAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking transfer'
                else:
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking swap approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking swap transfer'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_bc1bb2a7Address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking swapper approve'
                    require ext_code.size(stor161)
                    call stor161.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), holdingTokenAddress, 0, 0, stakingPoolAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                staticcall 'console.log'.log(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args Mask(224, 0, stor155), uint32(stor155), sub_55ae421dAddress
                if sub_55ae421dAddress != address(charityWalletAddress):
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(charityWalletAddress), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(charityWalletAddress), arg1
                else:
                    staticcall 'console.log'.0x7c81217 with:
                            gas gas_remaining wei
                           args 0, 96, address(this.address), arg1, 18, 0x726163740000000000000000000000000000
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
            else:
                if 25 * arg1 / arg1 != 25:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[489 len 31]
                if holdingTokenAddress == address(ext_call.return_data[0]):
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stakingPoolAddress, 25 * arg1 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stakingPoolAddress, 25 * arg1 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking transfer'
                else:
                    if not 25 * arg1 / 1000:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 25 * arg1 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Funding/staking swap approve'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, 25 * arg1 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Funding/staking swap transfer'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_bc1bb2a7Address, 25 * arg1 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Funding/staking swapper approve'
                        require ext_code.size(stor161)
                        call stor161.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), holdingTokenAddress, 25 * arg1 / 1000, 0, stakingPoolAddress
                    else:
                        if 50 * 25 * arg1 / 1000 / 25 * arg1 / 1000 != 50:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 31]
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 25 * arg1 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Funding/staking swap approve'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, 25 * arg1 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Funding/staking swap transfer'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_bc1bb2a7Address, 25 * arg1 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Funding/staking swapper approve'
                        require ext_code.size(stor161)
                        call stor161.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), holdingTokenAddress, 25 * arg1 / 1000, 50 * 25 * arg1 / 1000 / 100, stakingPoolAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                staticcall 'console.log'.log(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args Mask(224, 0, stor155), uint32(stor155), sub_55ae421dAddress
                if sub_55ae421dAddress != address(charityWalletAddress):
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(charityWalletAddress), arg1 - (25 * arg1 / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(charityWalletAddress), arg1 - (25 * arg1 / 1000)
                else:
                    staticcall 'console.log'.0x7c81217 with:
                            gas gas_remaining wei
                           args 0, 96, address(this.address), arg1 - (25 * arg1 / 1000), 18, 0x726163740000000000000000000000000000
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg1 - (25 * arg1 / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1 - (25 * arg1 / 1000)
        else:
            if 25 * arg1 / arg1 != 25:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[425 len 31]
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_811be779Address, 25 * arg1 / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Funding/developer approve'
            require ext_code.size(cTokenAddress)
            staticcall cTokenAddress.underlying() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_811be779Address, 25 * arg1 / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Funding/developer transfer'
            if not arg1:
                require ext_code.size(cTokenAddress)
                staticcall cTokenAddress.underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if holdingTokenAddress == address(ext_call.return_data[0]):
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stakingPoolAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stakingPoolAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking transfer'
                else:
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking swap approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking swap transfer'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_bc1bb2a7Address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking swapper approve'
                    require ext_code.size(stor161)
                    call stor161.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), holdingTokenAddress, 0, 0, stakingPoolAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                staticcall 'console.log'.log(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args Mask(224, 0, stor155), uint32(stor155), sub_55ae421dAddress
                if sub_55ae421dAddress != address(charityWalletAddress):
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(charityWalletAddress), arg1 - (25 * arg1 / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(charityWalletAddress), arg1 - (25 * arg1 / 1000)
                else:
                    staticcall 'console.log'.0x7c81217 with:
                            gas gas_remaining wei
                           args 0, 96, address(this.address), arg1 - (25 * arg1 / 1000), 18, 0x726163740000000000000000000000000000
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg1 - (25 * arg1 / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1 - (25 * arg1 / 1000)
            else:
                if 25 * arg1 / arg1 != 25:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[489 len 31]
                if holdingTokenAddress == address(ext_call.return_data[0]):
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stakingPoolAddress, 25 * arg1 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, stakingPoolAddress, 25 * arg1 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/staking transfer'
                else:
                    if not 25 * arg1 / 1000:
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 25 * arg1 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Funding/staking swap approve'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, 25 * arg1 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Funding/staking swap transfer'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_bc1bb2a7Address, 25 * arg1 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Funding/staking swapper approve'
                        require ext_code.size(stor161)
                        call stor161.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), holdingTokenAddress, 25 * arg1 / 1000, 0, stakingPoolAddress
                    else:
                        if 50 * 25 * arg1 / 1000 / 25 * arg1 / 1000 != 50:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[553 len 31]
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 25 * arg1 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Funding/staking swap approve'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, 25 * arg1 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Funding/staking swap transfer'
                        require ext_code.size(cTokenAddress)
                        staticcall cTokenAddress.underlying() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args sub_bc1bb2a7Address, 25 * arg1 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Funding/staking swapper approve'
                        require ext_code.size(stor161)
                        call stor161.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), holdingTokenAddress, 25 * arg1 / 1000, 50 * 25 * arg1 / 1000 / 100, stakingPoolAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                staticcall 'console.log'.log(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args Mask(224, 0, stor155), uint32(stor155), sub_55ae421dAddress
                if sub_55ae421dAddress != address(charityWalletAddress):
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(charityWalletAddress), arg1 - (2 * 25 * arg1 / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(charityWalletAddress), arg1 - (2 * 25 * arg1 / 1000)
                else:
                    staticcall 'console.log'.0x7c81217 with:
                            gas gas_remaining wei
                           args 0, 96, address(this.address), arg1 - (2 * 25 * arg1 / 1000), 18, 0x726163740000000000000000000000000000
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg1 - (2 * 25 * arg1 / 1000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Funding/approve'
                    require ext_code.size(cTokenAddress)
                    staticcall cTokenAddress.underlying() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1 - (2 * 25 * arg1 / 1000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Funding/t-fail'
        emit Rewarded(arg1, address(charityWalletAddress));
}



}
