contract main {




// =====================  Runtime code  =====================


const name = '', 0

const sub_0b224601(?) = 15

const totalSupply = (277777777777500000 * 24 * 3600)

const decimals = 9

const sub_486893a5(?) = 15

const symbol = '', 0

const sub_d30caef6(?) = 15


address owner;
mapping of uint256 timelock;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 buyTax;
uint256 sellTax;
uint256 tax;
uint256 stor9;
address stor10;
uint8 stor11; offset 160
address stor11;
address stor12;
uint8 stor13; offset 160
uint8 stor13; offset 168
uint128 stor13; offset 168
address stor13;
uint256 stor14;
uint256 storD9D1;

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function buyTax() {
    return buyTax
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function tax() {
    return tax
}

function timelock(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return timelock[arg1]
}

function sellTax() {
    return sellTax
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function blacklistBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 1
}

function removeFromBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 0
}

function lockFunction(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2:
        revert with 0, 33
    timelock[arg1] = 0
}

function whitelistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = uint8(arg2)
}

function sub_24c16b7f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 15:
        revert with 0, 'New Buy tax have to be under 15'
    buyTax = arg1
    emit 0x7dcc5c53: arg1
}

function sub_debae15e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 15:
        revert with 0, 'New sell tax have to be under 15'
    sellTax = arg1
    emit 0x10caeb50: arg1
}

function sub_06c6142f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New transfer tax have to be under 15'
    tax = arg1
    emit 0x10caeb50: arg1
}

function emergencyPause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not storD9D1:
        revert with 0, 'Function is timelocked'
    if timelock[2] > block.timestamp:
        revert with 0, 'Function is timelocked'
    Mask(88, 0, stor13.field_168) = Mask(88, 0, not uint8(stor13.field_168))
    timelock[2] = 0
}

function unlockFunction(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2:
        revert with 0, 33
    require 0 == timelock[arg1]
    if block.timestamp > -1:
        revert with 0, 17
    if arg1 > 2:
        revert with 0, 33
    timelock[arg1] = block.timestamp
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not timelock[0]:
        revert with 0, 'Function is timelocked'
    if timelock[0] > block.timestamp:
        revert with 0, 'Function is timelocked'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    timelock[0] = 0
}

function changeMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not timelock[1]:
        revert with 0, 'Function is timelocked'
    if timelock[1] > block.timestamp:
        revert with 0, 'Function is timelocked'
    if not arg1:
        revert with 0, 'Marketing Wallet can not be zero'
    stor10 = arg1
    timelock[1] = 0
}

function liftMaxTx() {
    if not uint8(stor13.field_160):
        revert with 0, 'Trading is not enabled yet'
    if 600 > !stor9:
        revert with 0, 17
    if stor9 + 600 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Transaction limit can only be lifted 10 mins after trading is enabled'
    stor14 = 277777777777500000 * 24 * 3600
    emit MaxTxAmountUpdated((277777777777500000 * 24 * 3600));
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function manualsend() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) > 0x1249249249249249249249249249249249249249249249249249249249249249:
        revert with 0, 17
    call address(stor11.field_0) with:
       value 14 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor10 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function transferERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You can't withdraw kawa tokens from owned by contract.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'balance is low'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor10, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function manualswap() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor11.field_160) = 1
    mem[128] = this.address
    require ext_code.size(stor12)
    staticcall stor12.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not stor12:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor12] = balanceOf[this.address]
    emit Approval(balanceOf[this.address], this.address, stor12);
    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
    idx = 0
    s = ceil32(return_data.size) + 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor12)
    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor11.field_160) = 0
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor13.field_160):
        revert with 0, 'trading is already open'
    stor12 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    allowance[address(this.address)][0x7a250d5630b4cf539739df2c5dacb4c659f2488d] = 277777777777500000 * 24 * 3600
    emit Approval((277777777777500000 * 24 * 3600), this.address, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d);
    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    address(stor13.field_0) = ext_call.return_data[12 len 20]
    require ext_code.size(stor12)
    call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(this.address), balanceOf[address(this.address)], 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    stor14 = 277777777777500 * 3600
    uint8(stor13.field_160) = 1
    require ext_code.size(address(stor13.field_0))
    call address(stor13.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor12, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor9 = block.timestamp
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Balance less then transfer'
    if stor5[address(msg.sender)]:
        revert with 0, 'Blacklisted can't trade'
    tax = 0
    if not stor4[address(msg.sender)]:
        if not stor4[address(arg1)]:
            if uint8(stor13.field_168):
                revert with 0, 'Trading is paused'
            if arg2 > stor14:
                revert with 0, 'Amount exceed max trnx amount'
            if address(stor13.field_0) != arg1:
                if 1 < buyTax / 100:
                    revert with 0, 17
                if arg2 and -(buyTax / 100) + 1 > -1 / arg2:
                    revert with 0, 17
                if balanceOf[address(arg1)] > !(arg2 - (buyTax / 100 * arg2)):
                    revert with 0, 17
                if balanceOf[address(arg1)] + arg2 - (buyTax / 100 * arg2) > 5555555555550000 * 24 * 3600:
                    revert with 0, 'max Wallet limit exceeded'
            if eth.balance(this.address) > 10^18:
                if eth.balance(this.address) > 0x1249249249249249249249249249249249249249249249249249249249249249:
                    revert with 0, 17
                call address(stor11.field_0) with:
                   value 14 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor10 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            if address(stor13.field_0) == msg.sender:
                tax = buyTax
            else:
                if address(stor13.field_0) == arg1:
                    tax = sellTax
                    if not uint8(stor11.field_160):
                        if balanceOf[this.address] > 277777777777500 * 3600:
                            uint8(stor11.field_160) = 1
                            mem[128] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not stor12:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor12] = balanceOf[this.address]
                            emit Approval(balanceOf[this.address], this.address, stor12);
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
                            idx = 0
                            s = ceil32(return_data.size) + 388
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor12)
                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor11.field_160) = 0
    if arg2 and tax > -1 / arg2:
        revert with 0, 17
    if arg2 < arg2 * tax / 100:
        revert with 0, 17
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !(arg2 - (arg2 * tax / 100)):
        revert with 0, 17
    if balanceOf[arg1] + arg2 - (arg2 * tax / 100) < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * tax / 100)
    if balanceOf[this.address] > !(arg2 * tax / 100):
        revert with 0, 17
    if balanceOf[this.address] + (arg2 * tax / 100) < balanceOf[this.address]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[this.address] += arg2 * tax / 100
    emit Transfer((arg2 - (arg2 * tax / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Balance less then transfer'
    if stor5[address(arg1)]:
        revert with 0, 'Blacklisted can't trade'
    tax = 0
    if stor4[address(arg1)]:
        if arg3 and tax > -1 / arg3:
            revert with 0, 17
        if arg3 < arg3 * tax / 100:
            revert with 0, 17
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !(arg3 - (arg3 * tax / 100)):
            revert with 0, 17
        if balanceOf[arg2] + arg3 - (arg3 * tax / 100) < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * tax / 100)
        if balanceOf[this.address] > !(arg3 * tax / 100):
            revert with 0, 17
        if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[this.address] += arg3 * tax / 100
        emit Transfer((arg3 - (arg3 * tax / 100)), arg1, arg2);
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[232 len 24] >> 64, 0
    else:
        if stor4[address(arg2)]:
            if arg3 and tax > -1 / arg3:
                revert with 0, 17
            if arg3 < arg3 * tax / 100:
                revert with 0, 17
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !(arg3 - (arg3 * tax / 100)):
                revert with 0, 17
            if balanceOf[arg2] + arg3 - (arg3 * tax / 100) < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * tax / 100)
            if balanceOf[this.address] > !(arg3 * tax / 100):
                revert with 0, 17
            if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[this.address] += arg3 * tax / 100
            emit Transfer((arg3 - (arg3 * tax / 100)), arg1, arg2);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[232 len 24] >> 64, 0
        else:
            if uint8(stor13.field_168):
                revert with 0, 'Trading is paused'
            if arg3 > stor14:
                revert with 0, 'Amount exceed max trnx amount'
            if address(stor13.field_0) != arg2:
                if 1 < buyTax / 100:
                    revert with 0, 17
                if arg3 and -(buyTax / 100) + 1 > -1 / arg3:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - (buyTax / 100 * arg3)):
                    revert with 0, 17
                if balanceOf[address(arg2)] + arg3 - (buyTax / 100 * arg3) > 5555555555550000 * 24 * 3600:
                    revert with 0, 'max Wallet limit exceeded'
            if eth.balance(this.address) > 10^18:
                if eth.balance(this.address) > 0x1249249249249249249249249249249249249249249249249249249249249249:
                    revert with 0, 17
                call address(stor11.field_0) with:
                   value 14 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor10 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            if address(stor13.field_0) == arg1:
                tax = buyTax
                if arg3 and tax > -1 / arg3:
                    revert with 0, 17
                if arg3 < arg3 * tax / 100:
                    revert with 0, 17
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !(arg3 - (arg3 * tax / 100)):
                    revert with 0, 17
                if balanceOf[arg2] + arg3 - (arg3 * tax / 100) < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * tax / 100)
                if balanceOf[this.address] > !(arg3 * tax / 100):
                    revert with 0, 17
                if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[this.address] += arg3 * tax / 100
                emit Transfer((arg3 - (arg3 * tax / 100)), arg1, arg2);
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[232 len 24] >> 64, 0
            else:
                if address(stor13.field_0) != arg2:
                    if arg3 and tax > -1 / arg3:
                        revert with 0, 17
                    if arg3 < arg3 * tax / 100:
                        revert with 0, 17
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !(arg3 - (arg3 * tax / 100)):
                        revert with 0, 17
                    if balanceOf[arg2] + arg3 - (arg3 * tax / 100) < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * tax / 100)
                    if balanceOf[this.address] > !(arg3 * tax / 100):
                        revert with 0, 17
                    if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[this.address] += arg3 * tax / 100
                    emit Transfer((arg3 - (arg3 * tax / 100)), arg1, arg2);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[232 len 24] >> 64, 0
                else:
                    tax = sellTax
                    if uint8(stor11.field_160):
                        if arg3 and tax > -1 / arg3:
                            revert with 0, 17
                        if arg3 < arg3 * tax / 100:
                            revert with 0, 17
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !(arg3 - (arg3 * tax / 100)):
                            revert with 0, 17
                        if balanceOf[arg2] + arg3 - (arg3 * tax / 100) < balanceOf[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * tax / 100)
                        if balanceOf[this.address] > !(arg3 * tax / 100):
                            revert with 0, 17
                        if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] += arg3 * tax / 100
                        emit Transfer((arg3 - (arg3 * tax / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[232 len 24] >> 64, 0
                    else:
                        if balanceOf[this.address] <= 277777777777500 * 3600:
                            if arg3 and tax > -1 / arg3:
                                revert with 0, 17
                            if arg3 < arg3 * tax / 100:
                                revert with 0, 17
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !(arg3 - (arg3 * tax / 100)):
                                revert with 0, 17
                            if balanceOf[arg2] + arg3 - (arg3 * tax / 100) < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * tax / 100)
                            if balanceOf[this.address] > !(arg3 * tax / 100):
                                revert with 0, 17
                            if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[this.address] += arg3 * tax / 100
                            emit Transfer((arg3 - (arg3 * tax / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[232 len 24] >> 64, 0
                        else:
                            uint8(stor11.field_160) = 1
                            mem[128] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not stor12:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor12] = balanceOf[this.address]
                            emit Approval(balanceOf[this.address], this.address, stor12);
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
                            idx = 0
                            s = ceil32(return_data.size) + 388
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor12)
                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor11.field_160) = 0
                            if arg3 and tax > -1 / arg3:
                                revert with 0, 17
                            if arg3 < arg3 * tax / 100:
                                revert with 0, 17
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !(arg3 - (arg3 * tax / 100)):
                                revert with 0, 17
                            if balanceOf[arg2] + arg3 - (arg3 * tax / 100) < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * tax / 100)
                            if balanceOf[this.address] > !(arg3 * tax / 100):
                                revert with 0, 17
                            if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[this.address] += arg3 * tax / 100
                            emit Transfer((arg3 - (arg3 * tax / 100)), arg1, arg2);
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 32, block.timestamp) >> 32 >> 64,
                                            0
    ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 3)))))
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xc17bae2a(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd30caef6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xd30caef6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 15
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)]
                if unknown_0xdebae15e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg1 > 15:
                        revert with 0, 'New sell tax have to be under 15'
                    sellTax = arg1
                    emit 0x10caeb50: arg1
                else:
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not timelock[0]:
                            revert with 0, 'Function is timelocked'
                        if timelock[0] > block.timestamp:
                            revert with 0, 'Function is timelocked'
                        emit OwnershipTransferred(owner, address(arg1));
                        owner = address(arg1)
                        timelock[0] = 0
                    else:
                        require unknown_0xf7448a31(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if this.address == address(arg1):
                            revert with 0, 'You can't withdraw kawa tokens from owned by contract.'
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 > ext_call.return_data[0]:
                            revert with 0, 'balance is low'
                        require ext_code.size(address(arg1))
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor10, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0xc17bae2a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 < 3
                    return timelock[arg1]
                if unknown_0xc3c8cd80(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    uint8(stor11.field_160) = 1
                    mem[160] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.WETH() with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[192] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not stor12:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor12] = balanceOf[this.address]
                    emit Approval(balanceOf[this.address], this.address, stor12);
                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                    idx = 0
                    s = ceil32(return_data.size) + 420
                    t = 160
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor12)
                    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor11.field_160) = 0
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc9567bf9(?????):
                        require unknown_0xcc1776d3(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sellTax
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uint8(stor13.field_160):
                        revert with 0, 'trading is already open'
                    stor12 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    allowance[address(this.address)][0x7a250d5630b4cf539739df2c5dacb4c659f2488d] = 277777777777500000 * 24 * 3600
                    emit Approval((277777777777500000 * 24 * 3600), this.address, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d);
                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
                    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    address(stor13.field_0) = ext_call.return_data[12 len 20]
                    require ext_code.size(stor12)
                    call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args address(this.address), balanceOf[address(this.address)], 0, 0, owner, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    stor14 = 277777777777500 * 3600
                    uint8(stor13.field_160) = 1
                    require ext_code.size(address(stor13.field_0))
                    call address(stor13.field_0).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor12, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    stor9 = block.timestamp
        if unknown_0xaa53099d(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xaa53099d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 < 3
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg1 > 2:
                    revert with 0, 33
                require 0 == timelock[arg1]
                if block.timestamp > -1:
                    revert with 0, 17
                if arg1 > 2:
                    revert with 0, 33
                timelock[arg1] = block.timestamp
            else:
                if unknown_0xb4fa3b98(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 < 3
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg1 > 2:
                        revert with 0, 33
                    timelock[arg1] = 0
                else:
                    if unknown_0xb9a45aac(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor4[address(arg1)] = uint8(bool(arg2))
                    else:
                        require unknown_0xbb85c6d1(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not timelock[1]:
                            revert with 0, 'Function is timelocked'
                        if timelock[1] > block.timestamp:
                            revert with 0, 'Function is timelocked'
                        if not address(arg1):
                            revert with 0, 'Marketing Wallet can not be zero'
                        stor10 = address(arg1)
                        timelock[1] = 0
        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return owner
        if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return '', 0
        if unknown_0x99c8d556(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return tax
        require unknown_0xa9059cbb(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if arg2 <= 0:
            revert with 0, 'Transfer amount must be greater than zero'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'Balance less then transfer'
        if stor5[address(msg.sender)]:
            revert with 0, 'Blacklisted can't trade'
        tax = 0
        if not stor4[address(msg.sender)]:
            if not stor4[address(arg1)]:
                if uint8(stor13.field_168):
                    revert with 0, 'Trading is paused'
                if arg2 > stor14:
                    revert with 0, 'Amount exceed max trnx amount'
                if address(stor13.field_0) != address(arg1):
                    if 1 < buyTax / 100:
                        revert with 0, 17
                    if arg2 and -(buyTax / 100) + 1 > -1 / arg2:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - (buyTax / 100 * arg2)):
                        revert with 0, 17
                    if balanceOf[address(arg1)] + arg2 - (buyTax / 100 * arg2) > 5555555555550000 * 24 * 3600:
                        revert with 0, 'max Wallet limit exceeded'
                if eth.balance(this.address) > 10^18:
                    if eth.balance(this.address) > 0x1249249249249249249249249249249249249249249249249249249249249249:
                        revert with 0, 17
                    call address(stor11.field_0) with:
                       value 14 * eth.balance(this.address) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor10 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                if address(stor13.field_0) == msg.sender:
                    tax = buyTax
                else:
                    if address(stor13.field_0) == address(arg1):
                        tax = sellTax
                        if not uint8(stor11.field_160):
                            if balanceOf[this.address] > 277777777777500 * 3600:
                                uint8(stor11.field_160) = 1
                                mem[160] = this.address
                                require ext_code.size(stor12)
                                staticcall stor12.WETH() with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not stor12:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor12] = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, stor12);
                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor12)
                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor11.field_160) = 0
        if arg2 and tax > -1 / arg2:
            revert with 0, 17
        if arg2 < arg2 * tax / 100:
            revert with 0, 17
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > !(arg2 - (arg2 * tax / 100)):
            revert with 0, 17
        if balanceOf[address(arg1)] + arg2 - (arg2 * tax / 100) < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * tax / 100)
        if balanceOf[this.address] > !(arg2 * tax / 100):
            revert with 0, 17
        if balanceOf[this.address] + (arg2 * tax / 100) < balanceOf[this.address]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[this.address] += arg2 * tax / 100
        emit Transfer((arg2 - (arg2 * tax / 100)), msg.sender, address(arg1));
    else:
        if unknown_0x2ab30838(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x4f7041a5(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x2ab30838(?????):
                    if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 9
                    if uint32(call.func_hash) >> 224 != unknown_0x3af32abf(?????):
                        require unknown_0x486893a5(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return 15
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor4[address(arg1)])
                require not msg.value
                if not uint8(stor13.field_160):
                    revert with 0, 'Trading is not enabled yet'
                if 600 > !stor9:
                    revert with 0, 17
                if stor9 + 600 >= block.timestamp:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Transaction limit can only be lifted 10 mins after trading is enabled'
                stor14 = 277777777777500000 * 24 * 3600
                emit MaxTxAmountUpdated((277777777777500000 * 24 * 3600));
            else:
                if unknown_0x4f7041a5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return buyTax
                if unknown_0x51858e27(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not storD9D1:
                        revert with 0, 'Function is timelocked'
                    if timelock[2] > block.timestamp:
                        revert with 0, 'Function is timelocked'
                    Mask(88, 0, stor13.field_168) = Mask(88, 0, not uint8(stor13.field_168))
                    timelock[2] = 0
                else:
                    if unknown_0x537df3b6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor5[address(arg1)] = 0
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x6fc3eaec(?????):
                            require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return balanceOf[address(arg1)]
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if eth.balance(this.address) > 0x1249249249249249249249249249249249249249249249249249249249249249:
                            revert with 0, 17
                        call address(stor11.field_0) with:
                           value 14 * eth.balance(this.address) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor10 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
        if unknown_0x0b224601(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x06c6142f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg1 > 15:
                    revert with 0, 'New transfer tax have to be under 15'
                tax = arg1
                emit 0x10caeb50: arg1
            if name() == uint32(call.func_hash) >> 224:
                require not msg.value
                return '', 0
            if blacklistBot(address arg1) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor5[address(arg1)] = 1
            require approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, address(arg1));
        else:
            if unknown_0x0b224601(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 15
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return (277777777777500000 * 24 * 3600)
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                require unknown_0x24c16b7f(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg1 > 15:
                    revert with 0, 'New Buy tax have to be under 15'
                buyTax = arg1
                emit 0x7dcc5c53: arg1
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if arg3 <= 0:
                revert with 0, 'Transfer amount must be greater than zero'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'Balance less then transfer'
            if stor5[address(arg1)]:
                revert with 0, 'Blacklisted can't trade'
            tax = 0
            if stor4[address(arg1)]:
                if arg3 and tax > -1 / arg3:
                    revert with 0, 17
                if arg3 < arg3 * tax / 100:
                    revert with 0, 17
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * tax / 100)):
                    revert with 0, 17
                if balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100)
                if balanceOf[this.address] > !(arg3 * tax / 100):
                    revert with 0, 17
                if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[this.address] += arg3 * tax / 100
                emit Transfer((arg3 - (arg3 * tax / 100)), address(arg1), address(arg2));
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if stor4[address(arg2)]:
                    if arg3 and tax > -1 / arg3:
                        revert with 0, 17
                    if arg3 < arg3 * tax / 100:
                        revert with 0, 17
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * tax / 100)):
                        revert with 0, 17
                    if balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100)
                    if balanceOf[this.address] > !(arg3 * tax / 100):
                        revert with 0, 17
                    if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[this.address] += arg3 * tax / 100
                    emit Transfer((arg3 - (arg3 * tax / 100)), address(arg1), address(arg2));
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if uint8(stor13.field_168):
                        revert with 0, 'Trading is paused'
                    if arg3 > stor14:
                        revert with 0, 'Amount exceed max trnx amount'
                    if address(stor13.field_0) != address(arg2):
                        if 1 < buyTax / 100:
                            revert with 0, 17
                        if arg3 and -(buyTax / 100) + 1 > -1 / arg3:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (buyTax / 100 * arg3)):
                            revert with 0, 17
                        if balanceOf[address(arg2)] + arg3 - (buyTax / 100 * arg3) > 5555555555550000 * 24 * 3600:
                            revert with 0, 'max Wallet limit exceeded'
                    if eth.balance(this.address) > 10^18:
                        if eth.balance(this.address) > 0x1249249249249249249249249249249249249249249249249249249249249249:
                            revert with 0, 17
                        call address(stor11.field_0) with:
                           value 14 * eth.balance(this.address) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor10 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    if address(stor13.field_0) == address(arg1):
                        tax = buyTax
                        if arg3 and tax > -1 / arg3:
                            revert with 0, 17
                        if arg3 < arg3 * tax / 100:
                            revert with 0, 17
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * tax / 100)):
                            revert with 0, 17
                        if balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100)
                        if balanceOf[this.address] > !(arg3 * tax / 100):
                            revert with 0, 17
                        if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] += arg3 * tax / 100
                        emit Transfer((arg3 - (arg3 * tax / 100)), address(arg1), address(arg2));
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if address(stor13.field_0) != address(arg2):
                            if arg3 and tax > -1 / arg3:
                                revert with 0, 17
                            if arg3 < arg3 * tax / 100:
                                revert with 0, 17
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * tax / 100)):
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100)
                            if balanceOf[this.address] > !(arg3 * tax / 100):
                                revert with 0, 17
                            if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[this.address] += arg3 * tax / 100
                            emit Transfer((arg3 - (arg3 * tax / 100)), address(arg1), address(arg2));
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                        else:
                            tax = sellTax
                            if uint8(stor11.field_160):
                                if arg3 and tax > -1 / arg3:
                                    revert with 0, 17
                                if arg3 < arg3 * tax / 100:
                                    revert with 0, 17
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * tax / 100)):
                                    revert with 0, 17
                                if balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100) < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100)
                                if balanceOf[this.address] > !(arg3 * tax / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[this.address] += arg3 * tax / 100
                                emit Transfer((arg3 - (arg3 * tax / 100)), address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                            else:
                                if balanceOf[this.address] <= 277777777777500 * 3600:
                                    if arg3 and tax > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 < arg3 * tax / 100:
                                        revert with 0, 17
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * tax / 100)):
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100) < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100)
                                    if balanceOf[this.address] > !(arg3 * tax / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[this.address] += arg3 * tax / 100
                                    emit Transfer((arg3 - (arg3 * tax / 100)), address(arg1), address(arg2));
                                    if arg3 > allowance[address(arg1)][msg.sender]:
                                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                                else:
                                    uint8(stor11.field_160) = 1
                                    mem[160] = this.address
                                    require ext_code.size(stor12)
                                    staticcall stor12.WETH() with:
                                            gas gas_remaining wei
                                    mem[224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[192] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not stor12:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor12] = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, stor12);
                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                                    idx = 0
                                    s = ceil32(return_data.size) + 420
                                    t = 160
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor12)
                                    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor11.field_160) = 0
                                    if arg3 and tax > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 < arg3 * tax / 100:
                                        revert with 0, 17
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * tax / 100)):
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100) < balanceOf[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * tax / 100)
                                    if balanceOf[this.address] > !(arg3 * tax / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (arg3 * tax / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[this.address] += arg3 * tax / 100
                                    emit Transfer((arg3 - (arg3 * tax / 100)), address(arg1), address(arg2));
                                    if arg3 > allowance[address(arg1)][msg.sender]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 32, block.timestamp) >> 32 >> 64,
                                                    0
            ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 3)))))
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0, 17
            if not address(arg1):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
            emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
    return 1
}



}
