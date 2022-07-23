contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const decimals = 9

const symbol = '', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor7;
uint8 stor8;
uint256 stor9;
uint256 stor10;
uint256 _totalSupply;
uint256 rate;
address burnWalletAddress;
address marketingWalletAddress;
address teamWalletAddress;
address sub_e1fff237Address;
uint8 stor17;
uint8 stor17; offset 8
uint8 stor17; offset 16
uint8 stor17; offset 24
uint8 stor17; offset 32
uint8 stor18;
uint8 stor18; offset 8
uint8 stor18; offset 16
uint8 stor18; offset 24
uint8 stor18; offset 32
uint256 totalFee;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
uint8 sub_79c4bdc1;
address routerAddress; offset 8
address sub_8c336a25Address;
address pairAddress;
uint8 swapEnabled; offset 160
uint128 stor25; offset 160
address pairContractAddress;
uint256 swapThreshold;
uint8 stor27;

function swapThreshold() {
    return swapThreshold
}

function burnWallet() {
    return burnWalletAddress
}

function totalSupply() {
    return _totalSupply
}

function totalFee() {
    return totalFee
}

function rate() {
    return rate
}

function _totalSupply() {
    return _totalSupply
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function pairContract() {
    return pairContractAddress
}

function teamWallet() {
    return teamWalletAddress
}

function swapEnabled() {
    return bool(swapEnabled)
}

function marketingWallet() {
    return marketingWalletAddress
}

function sub_79c4bdc1(?) {
    return bool(sub_79c4bdc1)
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function sub_8c336a25(?) {
    return sub_8c336a25Address
}

function _maxWalletSize() {
    return _maxWalletSize
}

function pair() {
    return pairAddress
}

function blacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e1fff237(?) {
    return sub_e1fff237Address
}

function router() {
    return routerAddress
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function _buy() {
    return uint8(stor17.field_0), uint8(stor17.field_0), uint8(stor17.field_0), uint8(stor17.field_0), uint8(stor17.field_32)
}

function _sell() {
    return uint8(stor18.field_0), uint8(stor18.field_0), uint8(stor18.field_0), uint8(stor18.field_0), uint8(stor18.field_32)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not rate:
        revert with 0, 18
    return (stor2[address(arg1)] / rate)
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_64c86931(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    stor8 = uint8(bool(arg1))
    emit 0x291f39b9: bool(arg1), block.timestamp
}

function sub_0c4a2885(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    sub_79c4bdc1 = uint8(bool(arg1))
    emit 0x81aa86bc: bool(arg1), block.timestamp
}

function sub_488674a6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    stor4[address(arg1)] = 1
    stor5[address(arg1)] = 1
    emit 0x8d218396: address(arg1)
}

function sub_276f5e21(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    stor5[address(arg1)] = uint8(bool(arg2))
    emit 0xfd2a3ffa: address(arg1), bool(arg2)
}

function sub_8b15be75(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    stor4[address(arg1)] = uint8(bool(arg2))
    emit 0xa77310cc: address(arg1), bool(arg2)
}

function sub_a408a5b5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    stor7[address(arg1)] = uint8(bool(arg2))
    emit 0xc5eaa480: address(arg1), bool(arg2)
}

function sub_4f012d8b(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if arg1 > 10000:
        revert with 0, 17
    swapThreshold = 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a23321cf5bf6000 * arg1
    stor25 = Mask(96, 0, bool(arg2))
    emit 0x5d0828ff: arg1, bool(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b5f0f141(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if teamWalletAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set same address than actual Wallet'
    teamWalletAddress = address(arg1)
    emit 0x5ccfd30f: teamWalletAddress, address(arg1)
}

function sub_d5412f38(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if sub_e1fff237Address == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set same address than actual Wallet'
    sub_e1fff237Address = address(arg1)
    emit 0x6f7bcd8e: sub_e1fff237Address, address(arg1)
}

function sub_d9321814(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if marketingWalletAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set same address than actual Wallet'
    marketingWalletAddress = address(arg1)
    emit 0x9992b4e5: marketingWalletAddress, address(arg1)
}

function sub_c10d51e1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if stor8:
        revert with 0, 'Trading already enabled'
    if arg1 > 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set more than 5 deadBlocks'
    stor8 = 1
    stor9 = block.number
    swapEnabled = 1
    sub_79c4bdc1 = 1
    stor10 = arg1
    emit 0xeb835a4f: arg1, block.timestamp
}

function ownerSetLimits(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if arg1 < 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set Max Transaction below 0.5%'
    if arg2 < 10:
        revert with 0, 'Cannot set Max Wallet below 1%'
    if arg1 > 1000:
        revert with 0, 17
    _maxTxAmount = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e55ff5219979c000 * arg1
    if arg2 > 1000:
        revert with 0, 17
    _maxWalletSize = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e55ff5219979c000 * arg2
    emit 0xa6454bdf: arg1, arg2
}

function sub_443b734a(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    uint8(stor17.field_0) = uint8(arg1)
    uint8(stor17.field_8) = uint8(arg2)
    uint8(stor17.field_16) = uint8(arg3)
    uint8(stor17.field_24) = uint8(arg4)
    if uint8(arg1) > -uint8(arg2) + 255:
        revert with 0, 17
    if uint8(uint8(arg2) + uint8(arg1)) > -uint8(arg3) + 255:
        revert with 0, 17
    if uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))) > -uint8(arg4) + 255:
        revert with 0, 17
    uint8(stor17.field_32) = uint8(uint8(arg4) + uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))))
    emit 0x1692d07e: arg1 << 248, arg2 << 248, arg3 << 248, uint8(arg4)
}

function sub_6e66836a(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    uint8(stor18.field_0) = uint8(arg1)
    uint8(stor18.field_8) = uint8(arg2)
    uint8(stor18.field_16) = uint8(arg3)
    uint8(stor18.field_24) = uint8(arg4)
    if uint8(arg1) > -uint8(arg2) + 255:
        revert with 0, 17
    if uint8(uint8(arg2) + uint8(arg1)) > -uint8(arg3) + 255:
        revert with 0, 17
    if uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))) > -uint8(arg4) + 255:
        revert with 0, 17
    uint8(stor18.field_32) = uint8(uint8(arg4) + uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))))
    emit 0xfa9bba7b: arg1 << 248, arg2 << 248, arg3 << 248, uint8(arg4)
}

function rebase(int256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if stor27:
        revert with 0, 'Try again'
    if arg1:
        if arg1 >= 0:
            if _totalSupply > !arg1:
                revert with 0, 17
        else:
            if arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if _totalSupply < -arg1:
                revert with 0, 17
        _totalSupply += arg1
        if test266151307() < _totalSupply:
            _totalSupply = test266151307()
        if _totalSupply < 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minimum Supply must be 1 or higher'
        if not _totalSupply:
            revert with 0, 18
        rate = -84007913129639936 / _totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return _totalSupply
}

function sub_117917e4(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, '!YOU ARE NOT THE OWNER'
    if _totalSupply / 1000 and arg2 > -1 / _totalSupply / 1000:
        revert with 0, 17
    if not arg1:
        if owner != msg.sender:
            revert with 0, '!YOU ARE NOT THE OWNER'
        if stor27:
            revert with 0, 'Try again'
        if _totalSupply / 1000 * arg2:
            if _totalSupply / 1000 * arg2 >= 0:
                if _totalSupply > !(_totalSupply / 1000 * arg2):
                    revert with 0, 17
            else:
                if _totalSupply / 1000 * arg2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if _totalSupply < -1 * _totalSupply / 1000 * arg2:
                    revert with 0, 17
            _totalSupply += _totalSupply / 1000 * arg2
            if test266151307() < _totalSupply:
                _totalSupply = test266151307()
            if _totalSupply < 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minimum Supply must be 1 or higher'
            if not _totalSupply:
                revert with 0, 18
            rate = -84007913129639936 / _totalSupply
            require ext_code.size(pairContractAddress)
            call pairContractAddress.sync() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if -1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / _totalSupply / 1000 * arg2 and bool(_totalSupply / 1000 * arg2 > 0):
            revert with 0, 17
        if bool(_totalSupply / 1000 * arg2 < 0) and _totalSupply / 1000 * arg2 < 0x8000000000000000000000000000000000000000000000000000000000000001:
            revert with 0, 17
        if owner != msg.sender:
            revert with 0, '!YOU ARE NOT THE OWNER'
        if stor27:
            revert with 0, 'Try again'
        if -1 * _totalSupply / 1000 * arg2:
            if -1 * _totalSupply / 1000 * arg2 >= 0:
                if _totalSupply > !(-1 * _totalSupply / 1000 * arg2):
                    revert with 0, 17
            else:
                if -1 * _totalSupply / 1000 * arg2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if _totalSupply < test266151307() * _totalSupply / 1000 * arg2:
                    revert with 0, 17
            _totalSupply += -1 * _totalSupply / 1000 * arg2
            if test266151307() < _totalSupply:
                _totalSupply = test266151307()
            if _totalSupply < 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minimum Supply must be 1 or higher'
            if not _totalSupply:
                revert with 0, 18
            rate = -84007913129639936 / _totalSupply
            require ext_code.size(pairContractAddress)
            call pairContractAddress.sync() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return _totalSupply
}

function sub_d2cab5ec(?) {
    stor27 = 1
    if not rate:
        revert with 0, 18
    if uint8(stor17.field_24) > -uint8(stor18.field_24) + 255:
        revert with 0, 17
    if uint8(stor17.field_16) > -uint8(stor18.field_16) + 255:
        revert with 0, 17
    if uint8(stor17.field_8) > -uint8(stor18.field_8) + 255:
        revert with 0, 17
    if uint8(stor17.field_0) > -uint8(stor18.field_0) + 255:
        revert with 0, 17
    if uint8(stor17.field_32) > -uint8(stor18.field_32) + 255:
        revert with 0, 17
    if not uint8(uint8(stor18.field_32) + uint8(stor17.field_32)):
        revert with 0, 18
    if stor2[address(this.address)] / rate <= _maxTxAmount:
        if stor2[address(this.address)] / rate / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) and uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) > -1 / stor2[address(this.address)] / rate / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)):
            revert with 0, 17
        if stor2[address(this.address)] / rate < stor2[address(this.address)] / rate / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) * uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2:
            revert with 0, 17
        mem[128] = this.address
        require ext_code.size(routerAddress)
        staticcall routerAddress.0x73b295c2 with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = (stor2[address(this.address)] / rate) - (stor2[address(this.address)] / rate / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) * uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2)
        idx = 0
        s = ceil32(return_data.size) + 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (stor2[address(this.address)] / rate) - (stor2[address(this.address)] / rate / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) * uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) < uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2:
            revert with 0, 17
        if eth.balance(this.address) and uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) > -1 / eth.balance(this.address):
            revert with 0, 17
        if not uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            revert with 0, 18
        if eth.balance(this.address) and uint8(uint8(stor18.field_0) + uint8(stor17.field_0)) > -1 / eth.balance(this.address):
            revert with 0, 17
        if not uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            revert with 0, 18
        if eth.balance(this.address) and uint8(uint8(stor18.field_16) + uint8(stor17.field_16)) > -1 / eth.balance(this.address):
            revert with 0, 17
        if not uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            revert with 0, 18
        if eth.balance(this.address) and uint8(uint8(stor18.field_8) + uint8(stor17.field_8)) > -1 / eth.balance(this.address):
            revert with 0, 17
        if not uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            revert with 0, 18
        if eth.balance(this.address) * uint8(uint8(stor18.field_16) + uint8(stor17.field_16)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            call marketingWalletAddress with:
               value eth.balance(this.address) * uint8(uint8(stor18.field_16) + uint8(stor17.field_16)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) * uint8(uint8(stor18.field_0) + uint8(stor17.field_0)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            call sub_e1fff237Address with:
               value eth.balance(this.address) * uint8(uint8(stor18.field_0) + uint8(stor17.field_0)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) * uint8(uint8(stor18.field_8) + uint8(stor17.field_8)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            call teamWalletAddress with:
               value eth.balance(this.address) * uint8(uint8(stor18.field_8) + uint8(stor17.field_8)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if Mask(255, 1, stor2[address(this.address)] / rate / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) * uint8(uint8(stor18.field_24) + uint8(stor17.field_24))):
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value eth.balance(this.address) * uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2) / 2 wei
                 gas gas_remaining wei
                args this.address, Mask(255, 1, stor2[address(this.address)] / rate / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) * uint8(uint8(stor18.field_24) + uint8(stor17.field_24))), 0, 0, owner, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
    else:
        if _maxTxAmount / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) and uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) > -1 / _maxTxAmount / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)):
            revert with 0, 17
        if _maxTxAmount < _maxTxAmount / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) * uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2:
            revert with 0, 17
        mem[128] = this.address
        require ext_code.size(routerAddress)
        staticcall routerAddress.0x73b295c2 with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = _maxTxAmount - (_maxTxAmount / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) * uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2)
        idx = 0
        s = ceil32(return_data.size) + 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _maxTxAmount - (_maxTxAmount / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) * uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) < uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2:
            revert with 0, 17
        if eth.balance(this.address) and uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) > -1 / eth.balance(this.address):
            revert with 0, 17
        if not uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            revert with 0, 18
        if eth.balance(this.address) and uint8(uint8(stor18.field_0) + uint8(stor17.field_0)) > -1 / eth.balance(this.address):
            revert with 0, 17
        if not uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            revert with 0, 18
        if eth.balance(this.address) and uint8(uint8(stor18.field_16) + uint8(stor17.field_16)) > -1 / eth.balance(this.address):
            revert with 0, 17
        if not uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            revert with 0, 18
        if eth.balance(this.address) and uint8(uint8(stor18.field_8) + uint8(stor17.field_8)) > -1 / eth.balance(this.address):
            revert with 0, 17
        if not uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            revert with 0, 18
        if eth.balance(this.address) * uint8(uint8(stor18.field_16) + uint8(stor17.field_16)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            call marketingWalletAddress with:
               value eth.balance(this.address) * uint8(uint8(stor18.field_16) + uint8(stor17.field_16)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) * uint8(uint8(stor18.field_0) + uint8(stor17.field_0)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            call sub_e1fff237Address with:
               value eth.balance(this.address) * uint8(uint8(stor18.field_0) + uint8(stor17.field_0)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) * uint8(uint8(stor18.field_8) + uint8(stor17.field_8)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2):
            call teamWalletAddress with:
               value eth.balance(this.address) * uint8(uint8(stor18.field_8) + uint8(stor17.field_8)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if Mask(255, 1, _maxTxAmount / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) * uint8(uint8(stor18.field_24) + uint8(stor17.field_24))):
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value eth.balance(this.address) * uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) - (uint8(uint8(stor18.field_24) + uint8(stor17.field_24)) / 2) / 2 wei
                 gas gas_remaining wei
                args this.address, Mask(255, 1, _maxTxAmount / uint8(uint8(stor18.field_32) + uint8(stor17.field_32)) * uint8(uint8(stor18.field_24) + uint8(stor17.field_24))), 0, 0, owner, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
    stor27 = 0
}



}
