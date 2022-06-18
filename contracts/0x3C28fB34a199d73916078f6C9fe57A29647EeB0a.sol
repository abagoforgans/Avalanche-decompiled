contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Saitama Inu', 0

const totalSupply = 1000 * 10^18

const decimals = 9

const symbol = 'SAITAMA', 0


address stor0;
mapping of uint8 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 swapLimit;
uint256 sub_2f2dae7f;
uint8 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
mapping of uint8 stor18;
address stor19;
address stor20;
address stor21;
address uniswapV2PairAddress;
uint256 stor23;
uint256 stor24;
uint8 stor25;
uint8 stor25; offset 8
uint256 stor262B;
uint256 stor6A96;

function sub_2f2dae7f(?) {
    return sub_2f2dae7f
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapLimit() {
    return swapLimit
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (stor0 == arg1)
}

function setMaxBuyTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    stor23 = arg1
}

function updateProtection(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    stor11 = arg1
}

function setMaxSellTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    stor24 = arg1
}

function updateSwapLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    swapLimit = arg1
}

function sub_bdb2c382(?) {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    swapLimit = arg1
    sub_2f2dae7f = arg2
}

function updateSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    stor8 = uint8(arg1)
}

function openTrading(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    stor10 = block.number
    stor11 = arg1
    uint8(stor25.field_0) = 1
}

function authorize(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, '!D'
    stor1[address(arg1)] = uint8(arg2)
}

function manageWreck(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    stor18[address(arg1)] = uint8(arg2)
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    stor20 = arg1
    stor19 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!D'
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setIsExcludedFromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    stor5[address(arg1)] = uint8(arg2)
}

function transferOtherTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function sub_6883b831(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    if arg1:
        call stor19 with:
           value arg1 / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor20 with:
           value arg1 / 2 wei
             gas 2300 * is_zero(value) wei
    else:
        call stor19 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor20 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTaxes(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 >= 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sum of sell fees must be less than 50'
    if arg4 > !arg5:
        revert with 0, 17
    if arg4 + arg5 < arg4:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 + arg5 > !arg6:
        revert with 0, 17
    if arg6 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 + arg5 + arg6 >= 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sum of buy fees must be less than 50'
    stor13 = arg1
    stor12 = arg2
    stor14 = arg3
    stor16 = arg4
    stor15 = arg5
    stor17 = arg6
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor9 < stor6A96:
        if not stor9 / 1000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor2[address(arg1)] / stor9 / 1000 * 10^18)
    if 1000 * 10^18 < stor262B:
        if not stor9 / 1000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor2[address(arg1)] / stor9 / 1000 * 10^18)
    if stor6A96 > stor9:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor9 < stor6A96:
        revert with 0, 17
    if stor262B > 1000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 1000 * 10^18 < stor262B:
        revert with 0, 17
    if stor9 - stor6A96 < stor9 / 1000 * 10^18:
        if not stor9 / 1000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor2[address(arg1)] / stor9 / 1000 * 10^18)
    if not -stor262B + 1000 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor9 - stor6A96 / -stor262B + 1000 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor2[address(arg1)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18)
}

function sub_f8e5884b(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!OWNER'
    if stor2[address(this.address)] > stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor9 < stor6A96:
        if not stor9 / 1000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor2[address(this.address)] / stor9 / 1000 * 10^18:
            uint8(stor25.field_8) = 1
            mem[320] = this.address
            require ext_code.size(stor21)
            staticcall stor21.WETH() with:
                    gas gas_remaining wei
            mem[384] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[352] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not stor21:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor21] = 0
            emit Approval(0, this.address, stor21);
            mem[ceil32(return_data.size) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 388] = 0
            idx = 0
            s = ceil32(return_data.size) + 580
            t = 320
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor21)
            call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
        else:
            if stor2[address(this.address)] / stor9 / 1000 * 10^18 and arg1 > -1 / stor2[address(this.address)] / stor9 / 1000 * 10^18:
                revert with 0, 17
            if not stor2[address(this.address)] / stor9 / 1000 * 10^18:
                revert with 0, 18
            if stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / stor2[address(this.address)] / stor9 / 1000 * 10^18 != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            uint8(stor25.field_8) = 1
            mem[320] = this.address
            require ext_code.size(stor21)
            staticcall stor21.WETH() with:
                    gas gas_remaining wei
            mem[384] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[352] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not stor21:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor21] = stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / 100
            emit Approval((stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / 100), this.address, stor21);
            mem[ceil32(return_data.size) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / 100
            idx = 0
            s = ceil32(return_data.size) + 580
            t = 320
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor21)
            call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint8(stor25.field_8) = 0
        if 100 < arg1:
            revert with 0, 17
        if not stor2[address(this.address)] / stor9 / 1000 * 10^18:
            swapLimit = 0
        else:
            if stor2[address(this.address)] / stor9 / 1000 * 10^18 and -arg1 + 100 > -1 / stor2[address(this.address)] / stor9 / 1000 * 10^18:
                revert with 0, 17
            if not stor2[address(this.address)] / stor9 / 1000 * 10^18:
                revert with 0, 18
            if (100 * stor2[address(this.address)] / stor9 / 1000 * 10^18) - (arg1 * stor2[address(this.address)] / stor9 / 1000 * 10^18) / stor2[address(this.address)] / stor9 / 1000 * 10^18 != -arg1 + 100:
                revert with 0, 'SafeMath: multiplication overflow'
            swapLimit = (100 * stor2[address(this.address)] / stor9 / 1000 * 10^18) - (arg1 * stor2[address(this.address)] / stor9 / 1000 * 10^18) / 100
    else:
        if 1000 * 10^18 < stor262B:
            if not stor9 / 1000 * 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor2[address(this.address)] / stor9 / 1000 * 10^18:
                uint8(stor25.field_8) = 1
                mem[320] = this.address
                require ext_code.size(stor21)
                staticcall stor21.WETH() with:
                        gas gas_remaining wei
                mem[384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[352] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not stor21:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor21] = 0
                emit Approval(0, this.address, stor21);
                mem[ceil32(return_data.size) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 388] = 0
                idx = 0
                s = ceil32(return_data.size) + 580
                t = 320
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor21)
                call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
            else:
                if stor2[address(this.address)] / stor9 / 1000 * 10^18 and arg1 > -1 / stor2[address(this.address)] / stor9 / 1000 * 10^18:
                    revert with 0, 17
                if not stor2[address(this.address)] / stor9 / 1000 * 10^18:
                    revert with 0, 18
                if stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / stor2[address(this.address)] / stor9 / 1000 * 10^18 != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                uint8(stor25.field_8) = 1
                mem[320] = this.address
                require ext_code.size(stor21)
                staticcall stor21.WETH() with:
                        gas gas_remaining wei
                mem[384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[352] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not stor21:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor21] = stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / 100
                emit Approval((stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / 100), this.address, stor21);
                mem[ceil32(return_data.size) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / 100
                idx = 0
                s = ceil32(return_data.size) + 580
                t = 320
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor21)
                call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint8(stor25.field_8) = 0
            if 100 < arg1:
                revert with 0, 17
            if not stor2[address(this.address)] / stor9 / 1000 * 10^18:
                swapLimit = 0
            else:
                if stor2[address(this.address)] / stor9 / 1000 * 10^18 and -arg1 + 100 > -1 / stor2[address(this.address)] / stor9 / 1000 * 10^18:
                    revert with 0, 17
                if not stor2[address(this.address)] / stor9 / 1000 * 10^18:
                    revert with 0, 18
                if (100 * stor2[address(this.address)] / stor9 / 1000 * 10^18) - (arg1 * stor2[address(this.address)] / stor9 / 1000 * 10^18) / stor2[address(this.address)] / stor9 / 1000 * 10^18 != -arg1 + 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                swapLimit = (100 * stor2[address(this.address)] / stor9 / 1000 * 10^18) - (arg1 * stor2[address(this.address)] / stor9 / 1000 * 10^18) / 100
        else:
            if stor6A96 > stor9:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor9 < stor6A96:
                revert with 0, 17
            if stor262B > 1000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 1000 * 10^18 < stor262B:
                revert with 0, 17
            if stor9 - stor6A96 < stor9 / 1000 * 10^18:
                if not stor9 / 1000 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor2[address(this.address)] / stor9 / 1000 * 10^18:
                    uint8(stor25.field_8) = 1
                    mem[512] = this.address
                    require ext_code.size(stor21)
                    staticcall stor21.WETH() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not stor21:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor21] = 0
                    emit Approval(0, this.address, stor21);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = 0
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor21)
                    call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                else:
                    if stor2[address(this.address)] / stor9 / 1000 * 10^18 and arg1 > -1 / stor2[address(this.address)] / stor9 / 1000 * 10^18:
                        revert with 0, 17
                    if not stor2[address(this.address)] / stor9 / 1000 * 10^18:
                        revert with 0, 18
                    if stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / stor2[address(this.address)] / stor9 / 1000 * 10^18 != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    uint8(stor25.field_8) = 1
                    mem[512] = this.address
                    require ext_code.size(stor21)
                    staticcall stor21.WETH() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not stor21:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor21] = stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / 100
                    emit Approval((stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / 100), this.address, stor21);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / 100
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor21)
                    call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor2[address(this.address)] / stor9 / 1000 * 10^18 * arg1 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uint8(stor25.field_8) = 0
                if 100 < arg1:
                    revert with 0, 17
                if not stor2[address(this.address)] / stor9 / 1000 * 10^18:
                    swapLimit = 0
                else:
                    if stor2[address(this.address)] / stor9 / 1000 * 10^18 and -arg1 + 100 > -1 / stor2[address(this.address)] / stor9 / 1000 * 10^18:
                        revert with 0, 17
                    if not stor2[address(this.address)] / stor9 / 1000 * 10^18:
                        revert with 0, 18
                    if (100 * stor2[address(this.address)] / stor9 / 1000 * 10^18) - (arg1 * stor2[address(this.address)] / stor9 / 1000 * 10^18) / stor2[address(this.address)] / stor9 / 1000 * 10^18 != -arg1 + 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    swapLimit = (100 * stor2[address(this.address)] / stor9 / 1000 * 10^18) - (arg1 * stor2[address(this.address)] / stor9 / 1000 * 10^18) / 100
            else:
                if not -stor262B + 1000 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor9 - stor6A96 / -stor262B + 1000 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18:
                    uint8(stor25.field_8) = 1
                    mem[512] = this.address
                    require ext_code.size(stor21)
                    staticcall stor21.WETH() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not stor21:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor21] = 0
                    emit Approval(0, this.address, stor21);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = 0
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor21)
                    call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                else:
                    if stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18 and arg1 > -1 / stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18:
                        revert with 0, 17
                    if not stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18:
                        revert with 0, 18
                    if stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18 * arg1 / stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18 != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    uint8(stor25.field_8) = 1
                    mem[512] = this.address
                    require ext_code.size(stor21)
                    staticcall stor21.WETH() with:
                            gas gas_remaining wei
                    mem[576] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[544] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not stor21:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor21] = stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18 * arg1 / 100
                    emit Approval((stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18 * arg1 / 100), this.address, stor21);
                    mem[ceil32(return_data.size) + 576] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 580] = stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18 * arg1 / 100
                    idx = 0
                    s = ceil32(return_data.size) + 772
                    t = 512
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor21)
                    call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18 * arg1 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 772 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uint8(stor25.field_8) = 0
                if 100 < arg1:
                    revert with 0, 17
                if not stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18:
                    swapLimit = 0
                else:
                    if stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18 and -arg1 + 100 > -1 / stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18:
                        revert with 0, 17
                    if not stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18:
                        revert with 0, 18
                    if (100 * stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18) - (arg1 * stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18) / stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18 != -arg1 + 100:
                        revert with 0, 'SafeMath: multiplication overflow'
                    swapLimit = (100 * stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18) - (arg1 * stor2[address(this.address)] / stor9 - stor6A96 / -stor262B + 1000 * 10^18) / 100
}



}
