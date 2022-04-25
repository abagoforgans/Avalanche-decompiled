contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Test'

const decimals = 9

const symbol = 'test'


address owner;
mapping of uint256 stor2;
uint256 totalSupply;
uint256 stor5;
uint256 _eViralBurned;
mapping of uint256 allowance;
address stor14;
address stor15;
address stor16;
address stor17;
uint8 stor18; offset 160
uint8 stor18; offset 168
uint8 stor18; offset 176
uint8 stor18; offset 184
uint64 stor18; offset 192
address uniswapV2PairAddress;
uint256 stor19;

function totalSupply() {
    return totalSupply
}

function _eViralBurned() {
    return _eViralBurned
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapEnabled() {
    return bool(uint8(stor18.field_184))
}

function tradeAllowed() {
    return bool(uint8(stor18.field_160))
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function releaseEViral() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint8(stor18.field_168)
    uint8(stor18.field_160) = 1
}

function setCooldownEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint64(stor18.field_192) = uint64(arg1)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if stor2[address(arg1)] > stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor5 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (stor2[address(arg1)] / stor5 / totalSupply)
}

function manualsend() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor14 with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor15 with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor16 with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Amount must be greater than 0'
    if not totalSupply:
        stor19 = 0
        emit MaxTxAmountUpdated(0);
    else:
        if arg1 * totalSupply / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        stor19 = arg1 * totalSupply / 100
        emit MaxTxAmountUpdated((arg1 * totalSupply / 100));
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function manualswap() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2[address(this.address)] > stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor5 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    uint8(stor18.field_176) = 1
    require ext_code.size(stor17)
    staticcall stor17.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not this.address:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
    if not stor17:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
    allowance[address(this.address)][stor17] = stor2[address(this.address)] / stor5 / totalSupply
    emit Approval((stor2[address(this.address)] / stor5 / totalSupply), this.address, stor17);
    mem[580 len 0] = None
    require ext_code.size(stor17)
    call stor17.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args stor2[address(this.address)] / stor5 / totalSupply, 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor18.field_176) = 0
}



}
