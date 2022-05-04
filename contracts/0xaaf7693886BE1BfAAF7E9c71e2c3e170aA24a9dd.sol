contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
array of uint256 symbol;
array of uint256 name;
uint256 decimals;
uint256 _totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;
address mimERC20Address;
uint256 totalPreSale;
uint256 totalPreSaleLeft;
uint256 mimPrice;
uint256 maxPurchase;
mapping of uint256 buyerQuota;
mapping of uint8 stor16;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function ifWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor16[address(arg1)])
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function maxPurchase() {
    return maxPurchase
}

function totalPreSaleLeft() {
    return totalPreSaleLeft
}

function BuyerQuota(address arg1) {
    require calldata.size - 4 >= 32
    return buyerQuota[arg1]
}

function mimPrice() {
    return mimPrice
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require bool(stor7[address(msg.sender)]) != 1
    return allowance[address(arg1)][address(arg2)]
}

function totalPreSale() {
    return totalPreSale
}

function mimERC20() {
    return mimERC20Address
}

function _fallback() payable {
  stop
}

function totalSupply() {
    return (_totalSupply - balanceOf[0])
}

function setMIMAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0.field_0)
    mimERC20Address = arg1
}

function setMax(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0.field_0)
    require arg1 > 0
    maxPurchase = arg1
}

function setMIMPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0.field_0)
    require arg1 > 0
    mimPrice = arg1
}

function ifFreeze(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)]), stor8[address(arg1)], stor9[address(arg1)] - block.timestamp
}

function unpause() {
    require msg.sender == address(stor0.field_0)
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == address(stor0.field_0)
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
    return 1
}

function setWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0.field_0)
    require not stor16[address(arg1)]
    stor16[address(arg1)] = 1
}

function setCEO(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0.field_0)
    require arg1
    emit CEOTransferred(address(stor0.field_0), arg1);
    address(stor0.field_0) = arg1
}

function unFreeze() {
    require not uint8(stor0.field_160)
    require bool(stor7[address(msg.sender)]) == 1
    require stor9[address(msg.sender)] < block.timestamp
    stor7[address(msg.sender)] = 0
    stor8[address(msg.sender)] = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require bool(stor7[address(msg.sender)]) != 1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawBalance() {
    require msg.sender == address(stor0.field_0)
    call address(stor0.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function freeze(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == address(stor0.field_0)
    require balanceOf[address(arg1)] >= arg2
    stor7[address(arg1)] = 1
    stor9[address(arg1)] = block.timestamp + arg3
    stor8[address(arg1)] = arg2
}

function transferAnyERC20Token(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == address(stor0.field_0)
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setWhitelists(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == address(stor0.field_0)
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require not stor16[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        stor16[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require bool(stor7[address(msg.sender)]) != 1
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[168 len 24],
                    mem[216 len 8]
    balanceOf[address(arg1)] -= arg3
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mutlipleTransferAnyERC20Token(address arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    require msg.sender == address(stor0.field_0)
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        _16 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _16
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg3.length) + 164], _16
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor7[address(msg.sender)]:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[168 len 24],
                        mem[216 len 8]
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if balanceOf[address(msg.sender)] > stor8[address(msg.sender)]:
            if stor8[address(msg.sender)] > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[168 len 24],
                            mem[216 len 8]
            require arg2 <= balanceOf[address(msg.sender)] - stor8[address(msg.sender)]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mutipleSendETH(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == address(stor0.field_0)
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        if s + mem[(32 * idx) + (32 * arg1.length) + 160] < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    require msg.value >= s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'Failed to send Ether'
        idx = idx + 1
        continue 
}

function sub_e912b7bd(?) {
    require calldata.size - 4 >= 32
    require not uint8(stor0.field_160)
    if not stor16[address(msg.sender)]:
        revert with 0, 'Not on whitelist!'
    if buyerQuota[address(msg.sender)] + arg1 < buyerQuota[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if buyerQuota[address(msg.sender)] + arg1 > maxPurchase:
        revert with 0, 'Exceed MaxPurachse'
    if not mimPrice:
        require ext_code.size(mimERC20Address)
        call mimERC20Address.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'Insufficient approved MIM'
    else:
        require mimPrice
        if mimPrice * arg1 / mimPrice != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(mimERC20Address)
        call mimERC20Address.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < mimPrice * arg1 / 10^9:
            revert with 0, 'Insufficient approved MIM'
    if not mimPrice:
        require ext_code.size(mimERC20Address)
        call mimERC20Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0
    else:
        require mimPrice
        if mimPrice * arg1 / mimPrice != arg1:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(mimERC20Address)
        call mimERC20Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), mimPrice * arg1 / 10^9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalPreSaleLeft < arg1:
        revert with 0, 'Not enough IDO quota left'
    if _totalSupply + arg1 < _totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    _totalSupply += arg1
    if arg1 > totalPreSaleLeft:
        revert with 0, 'SafeMath: subtraction overflow'
    totalPreSaleLeft -= arg1
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    if buyerQuota[address(msg.sender)] + arg1 < buyerQuota[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    buyerQuota[address(msg.sender)] += arg1
    emit 0x84108313: msg.sender, arg1
    return 0
}



}
