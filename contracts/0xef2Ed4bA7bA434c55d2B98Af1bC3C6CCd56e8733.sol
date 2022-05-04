contract main {




// =====================  Runtime code  =====================


const avaxBalance = eth.balance(this.address)


address _owner;
address fundzAddr;
uint256 stor2;
uint256 tokenPriceAvax;
uint256 tokenDecimal;
uint256 avaxDecimal;
uint256 startedAt;
uint256 endAt;
mapping of uint256 balances;
mapping of uint256 tokenExchanged;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function tokenExchanged(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenExchanged[arg1]
}

function tokenDecimal() {
    return tokenDecimal
}

function tokenPriceAvax() {
    return tokenPriceAvax
}

function endAt() {
    return endAt
}

function owner() {
    return _owner
}

function avaxDecimal() {
    return avaxDecimal
}

function _owner() {
    return _owner
}

function fundzAddr() {
    return fundzAddr
}

function startedAt() {
    return startedAt
}

function changeEndDate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endAt = arg1
}

function changeStartDate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startedAt = arg1
}

function updateTokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPriceAvax = arg1
}

function updateTokenDecimal(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenDecimal = arg1
}

function sub_f621fddb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fundzAddr = address(arg1)
}

function tokenBalance() {
    require ext_code.size(fundzAddr)
    staticcall fundzAddr.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawAvax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(fundzAddr)
    staticcall fundzAddr.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(fundzAddr)
    call fundzAddr.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function ExchangeAVAXforTokenMannual() payable {
    if block.timestamp < startedAt:
        revert with 0, 'Sale not yet started'
    if block.timestamp >= endAt:
        revert with 0, 'Sale Ended'
    if not tokenDecimal:
        if not msg.value:
            if not tokenPriceAvax:
                revert with 0, 18
            if not 0 / tokenPriceAvax:
                stor2 = 0
                require ext_code.size(fundzAddr)
                staticcall fundzAddr.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'Contract has low token balance :('
            else:
                if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                    revert with 0, 17
                if not 0 / tokenPriceAvax:
                    revert with 0, 18
                if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                    revert with 0, 1
                stor2 = 0 / tokenPriceAvax
                require ext_code.size(fundzAddr)
                staticcall fundzAddr.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0 / tokenPriceAvax:
                    revert with 0, 'Contract has low token balance :('
        else:
            if msg.value and 1 > -1 / msg.value:
                revert with 0, 17
            if not msg.value:
                revert with 0, 18
            if msg.value / msg.value != 1:
                revert with 0, 1
            if not tokenPriceAvax:
                revert with 0, 18
            if not msg.value / tokenPriceAvax:
                stor2 = 0
                require ext_code.size(fundzAddr)
                staticcall fundzAddr.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'Contract has low token balance :('
            else:
                if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                    revert with 0, 17
                if not msg.value / tokenPriceAvax:
                    revert with 0, 18
                if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                    revert with 0, 1
                stor2 = msg.value / tokenPriceAvax
                require ext_code.size(fundzAddr)
                staticcall fundzAddr.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < msg.value / tokenPriceAvax:
                    revert with 0, 'Contract has low token balance :('
    else:
        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
            if not tokenDecimal:
                if not msg.value:
                    if not tokenPriceAvax:
                        revert with 0, 18
                    if not 0 / tokenPriceAvax:
                        if not 10^tokenDecimal:
                            revert with 0, 18
                        stor2 = 0 / 10^tokenDecimal
                        require ext_code.size(fundzAddr)
                        staticcall fundzAddr.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                            revert with 0, 'Contract has low token balance :('
                    else:
                        if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                            revert with 0, 17
                        if not 0 / tokenPriceAvax:
                            revert with 0, 18
                        if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                            revert with 0, 1
                        if not 10^tokenDecimal:
                            revert with 0, 18
                        stor2 = 0 / tokenPriceAvax / 10^tokenDecimal
                        require ext_code.size(fundzAddr)
                        staticcall fundzAddr.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0 / tokenPriceAvax / 10^tokenDecimal:
                            revert with 0, 'Contract has low token balance :('
                else:
                    if msg.value and 1 > -1 / msg.value:
                        revert with 0, 17
                    if not msg.value:
                        revert with 0, 18
                    if msg.value / msg.value != 1:
                        revert with 0, 1
                    if not tokenPriceAvax:
                        revert with 0, 18
                    if not msg.value / tokenPriceAvax:
                        if not 10^tokenDecimal:
                            revert with 0, 18
                        stor2 = 0 / 10^tokenDecimal
                        require ext_code.size(fundzAddr)
                        staticcall fundzAddr.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                            revert with 0, 'Contract has low token balance :('
                    else:
                        if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                            revert with 0, 17
                        if not msg.value / tokenPriceAvax:
                            revert with 0, 18
                        if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                            revert with 0, 1
                        if not 10^tokenDecimal:
                            revert with 0, 18
                        stor2 = msg.value / tokenPriceAvax / 10^tokenDecimal
                        require ext_code.size(fundzAddr)
                        staticcall fundzAddr.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < msg.value / tokenPriceAvax / 10^tokenDecimal:
                            revert with 0, 'Contract has low token balance :('
            else:
                if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                    if not tokenDecimal:
                        if not msg.value:
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not 0 / tokenPriceAvax:
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                stor2 = 0 / 10^tokenDecimal
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                    revert with 0, 'Contract has low token balance :('
                            else:
                                if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                    revert with 0, 17
                                if not 0 / tokenPriceAvax:
                                    revert with 0, 18
                                if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                    revert with 0, 1
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                    revert with 0, 'Contract has low token balance :('
                        else:
                            if msg.value and 1 > -1 / msg.value:
                                revert with 0, 17
                            if not msg.value:
                                revert with 0, 18
                            if msg.value / msg.value != 1:
                                revert with 0, 1
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not msg.value / tokenPriceAvax:
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                stor2 = 0 / 10^tokenDecimal
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                    revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value / tokenPriceAvax:
                                    revert with 0, 17
                                if not msg.value / tokenPriceAvax:
                                    revert with 0, 18
                                if msg.value / tokenPriceAvax * 10^tokenDecimal / msg.value / tokenPriceAvax != 10^tokenDecimal:
                                    revert with 0, 1
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                stor2 = msg.value / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < msg.value / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                    revert with 0, 'Contract has low token balance :('
                    else:
                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value and 10^tokenDecimal > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if msg.value * 10^tokenDecimal / msg.value != 10^tokenDecimal:
                                    revert with 0, 1
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / msg.value * 10^tokenDecimal / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                        else:
                            s = 10
                            t = 1
                            idx = tokenDecimal
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 0, 17
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value and s * t > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if msg.value * s * t / msg.value != s * t:
                                    revert with 0, 1
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not msg.value * s * t / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value * s * t / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * s * t / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * s * t / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / msg.value * s * t / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                else:
                    s = 10
                    t = 1
                    idx = tokenDecimal
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not tokenDecimal:
                        if not msg.value:
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not 0 / tokenPriceAvax:
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                stor2 = 0 / 10^tokenDecimal
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                    revert with 0, 'Contract has low token balance :('
                            else:
                                if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                    revert with 0, 17
                                if not 0 / tokenPriceAvax:
                                    revert with 0, 18
                                if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                    revert with 0, 1
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                stor2 = 0 / tokenPriceAvax * s * t / 10^tokenDecimal
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / tokenPriceAvax * s * t / 10^tokenDecimal:
                                    revert with 0, 'Contract has low token balance :('
                        else:
                            if msg.value and 1 > -1 / msg.value:
                                revert with 0, 17
                            if not msg.value:
                                revert with 0, 18
                            if msg.value / msg.value != 1:
                                revert with 0, 1
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not msg.value / tokenPriceAvax:
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                stor2 = 0 / 10^tokenDecimal
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                    revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value / tokenPriceAvax and s * t > -1 / msg.value / tokenPriceAvax:
                                    revert with 0, 17
                                if not msg.value / tokenPriceAvax:
                                    revert with 0, 18
                                if msg.value / tokenPriceAvax * s * t / msg.value / tokenPriceAvax != s * t:
                                    revert with 0, 1
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                stor2 = msg.value / tokenPriceAvax * s * t / 10^tokenDecimal
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < msg.value / tokenPriceAvax * s * t / 10^tokenDecimal:
                                    revert with 0, 'Contract has low token balance :('
                    else:
                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / tokenPriceAvax * s * t / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * s * t / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value and 10^tokenDecimal > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if msg.value * 10^tokenDecimal / msg.value != 10^tokenDecimal:
                                    revert with 0, 1
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and s * t > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / msg.value * 10^tokenDecimal / tokenPriceAvax != s * t:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                        else:
                            u = 10
                            v = 1
                            idx = tokenDecimal
                            while idx > 1:
                                if u > -1 / u:
                                    revert with 0, 17
                                if not bool(idx):
                                    u = u * u
                                    v = v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                u = u * u
                                v = u * v
                                idx = uint255(idx) * 0.5
                                continue 
                            if v > -1 / u:
                                revert with 0, 17
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / tokenPriceAvax * s * t / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * s * t / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value and u * v > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if msg.value * u * v / msg.value != u * v:
                                    revert with 0, 1
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not msg.value * u * v / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value * u * v / tokenPriceAvax and s * t > -1 / msg.value * u * v / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * u * v / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * u * v / tokenPriceAvax * s * t / msg.value * u * v / tokenPriceAvax != s * t:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = msg.value * u * v / tokenPriceAvax * s * t / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < msg.value * u * v / tokenPriceAvax * s * t / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
        else:
            s = 10
            t = 1
            idx = tokenDecimal
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not tokenDecimal:
                if not msg.value:
                    if not tokenPriceAvax:
                        revert with 0, 18
                    if not 0 / tokenPriceAvax:
                        if not s * t:
                            revert with 0, 18
                        stor2 = 0 / s * t
                        require ext_code.size(fundzAddr)
                        staticcall fundzAddr.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0 / s * t:
                            revert with 0, 'Contract has low token balance :('
                    else:
                        if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                            revert with 0, 17
                        if not 0 / tokenPriceAvax:
                            revert with 0, 18
                        if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                            revert with 0, 1
                        if not s * t:
                            revert with 0, 18
                        stor2 = 0 / tokenPriceAvax / s * t
                        require ext_code.size(fundzAddr)
                        staticcall fundzAddr.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0 / tokenPriceAvax / s * t:
                            revert with 0, 'Contract has low token balance :('
                else:
                    if msg.value and 1 > -1 / msg.value:
                        revert with 0, 17
                    if not msg.value:
                        revert with 0, 18
                    if msg.value / msg.value != 1:
                        revert with 0, 1
                    if not tokenPriceAvax:
                        revert with 0, 18
                    if not msg.value / tokenPriceAvax:
                        if not s * t:
                            revert with 0, 18
                        stor2 = 0 / s * t
                        require ext_code.size(fundzAddr)
                        staticcall fundzAddr.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0 / s * t:
                            revert with 0, 'Contract has low token balance :('
                    else:
                        if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                            revert with 0, 17
                        if not msg.value / tokenPriceAvax:
                            revert with 0, 18
                        if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                            revert with 0, 1
                        if not s * t:
                            revert with 0, 18
                        stor2 = msg.value / tokenPriceAvax / s * t
                        require ext_code.size(fundzAddr)
                        staticcall fundzAddr.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < msg.value / tokenPriceAvax / s * t:
                            revert with 0, 'Contract has low token balance :('
            else:
                if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                    if not tokenDecimal:
                        if not msg.value:
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not 0 / tokenPriceAvax:
                                if not s * t:
                                    revert with 0, 18
                                stor2 = 0 / s * t
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / s * t:
                                    revert with 0, 'Contract has low token balance :('
                            else:
                                if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                    revert with 0, 17
                                if not 0 / tokenPriceAvax:
                                    revert with 0, 18
                                if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                    revert with 0, 1
                                if not s * t:
                                    revert with 0, 18
                                stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / s * t
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / s * t:
                                    revert with 0, 'Contract has low token balance :('
                        else:
                            if msg.value and 1 > -1 / msg.value:
                                revert with 0, 17
                            if not msg.value:
                                revert with 0, 18
                            if msg.value / msg.value != 1:
                                revert with 0, 1
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not msg.value / tokenPriceAvax:
                                if not s * t:
                                    revert with 0, 18
                                stor2 = 0 / s * t
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / s * t:
                                    revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value / tokenPriceAvax:
                                    revert with 0, 17
                                if not msg.value / tokenPriceAvax:
                                    revert with 0, 18
                                if msg.value / tokenPriceAvax * 10^tokenDecimal / msg.value / tokenPriceAvax != 10^tokenDecimal:
                                    revert with 0, 1
                                if not s * t:
                                    revert with 0, 18
                                stor2 = msg.value / tokenPriceAvax * 10^tokenDecimal / s * t
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < msg.value / tokenPriceAvax * 10^tokenDecimal / s * t:
                                    revert with 0, 'Contract has low token balance :('
                    else:
                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / s * t:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / s * t:
                                        revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value and 10^tokenDecimal > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if msg.value * 10^tokenDecimal / msg.value != 10^tokenDecimal:
                                    revert with 0, 1
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / s * t:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / msg.value * 10^tokenDecimal / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / s * t:
                                        revert with 0, 'Contract has low token balance :('
                        else:
                            u = 10
                            v = 1
                            idx = tokenDecimal
                            while idx > 1:
                                if u > -1 / u:
                                    revert with 0, 17
                                if not bool(idx):
                                    u = u * u
                                    v = v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                u = u * u
                                v = u * v
                                idx = uint255(idx) * 0.5
                                continue 
                            if v > -1 / u:
                                revert with 0, 17
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / s * t:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / s * t:
                                        revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value and u * v > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if msg.value * u * v / msg.value != u * v:
                                    revert with 0, 1
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not msg.value * u * v / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / s * t:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value * u * v / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * u * v / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * u * v / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / msg.value * u * v / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / s * t:
                                        revert with 0, 'Contract has low token balance :('
                else:
                    u = 10
                    v = 1
                    idx = tokenDecimal
                    while idx > 1:
                        if u > -1 / u:
                            revert with 0, 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 0, 17
                    if not tokenDecimal:
                        if not msg.value:
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not 0 / tokenPriceAvax:
                                if not s * t:
                                    revert with 0, 18
                                stor2 = 0 / s * t
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / s * t:
                                    revert with 0, 'Contract has low token balance :('
                            else:
                                if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                    revert with 0, 17
                                if not 0 / tokenPriceAvax:
                                    revert with 0, 18
                                if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                    revert with 0, 1
                                if not s * t:
                                    revert with 0, 18
                                stor2 = 0 / tokenPriceAvax * u * v / s * t
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / tokenPriceAvax * u * v / s * t:
                                    revert with 0, 'Contract has low token balance :('
                        else:
                            if msg.value and 1 > -1 / msg.value:
                                revert with 0, 17
                            if not msg.value:
                                revert with 0, 18
                            if msg.value / msg.value != 1:
                                revert with 0, 1
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not msg.value / tokenPriceAvax:
                                if not s * t:
                                    revert with 0, 18
                                stor2 = 0 / s * t
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / s * t:
                                    revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value / tokenPriceAvax and u * v > -1 / msg.value / tokenPriceAvax:
                                    revert with 0, 17
                                if not msg.value / tokenPriceAvax:
                                    revert with 0, 18
                                if msg.value / tokenPriceAvax * u * v / msg.value / tokenPriceAvax != u * v:
                                    revert with 0, 1
                                if not s * t:
                                    revert with 0, 18
                                stor2 = msg.value / tokenPriceAvax * u * v / s * t
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < msg.value / tokenPriceAvax * u * v / s * t:
                                    revert with 0, 'Contract has low token balance :('
                    else:
                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / s * t:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / tokenPriceAvax * u * v / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * u * v / s * t:
                                        revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value and 10^tokenDecimal > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if msg.value * 10^tokenDecimal / msg.value != 10^tokenDecimal:
                                    revert with 0, 1
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / s * t:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and u * v > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / msg.value * 10^tokenDecimal / tokenPriceAvax != u * v:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / s * t:
                                        revert with 0, 'Contract has low token balance :('
                        else:
                            w = 10
                            x = 1
                            idx = tokenDecimal
                            while idx > 1:
                                if w > -1 / w:
                                    revert with 0, 17
                                if not bool(idx):
                                    w = w * w
                                    x = x
                                    idx = uint255(idx) * 0.5
                                    continue 
                                w = w * w
                                x = w * x
                                idx = uint255(idx) * 0.5
                                continue 
                            if x > -1 / w:
                                revert with 0, 17
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / s * t:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / tokenPriceAvax * u * v / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * u * v / s * t:
                                        revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value and w * x > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if msg.value * w * x / msg.value != w * x:
                                    revert with 0, 1
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not msg.value * w * x / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / s * t:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value * w * x / tokenPriceAvax and u * v > -1 / msg.value * w * x / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * w * x / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * w * x / tokenPriceAvax * u * v / msg.value * w * x / tokenPriceAvax != u * v:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = msg.value * w * x / tokenPriceAvax * u * v / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < msg.value * w * x / tokenPriceAvax * u * v / s * t:
                                        revert with 0, 'Contract has low token balance :('
    require ext_code.size(fundzAddr)
    call fundzAddr.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    if balances[msg.sender] > !msg.value:
        revert with 0, 17
    if balances[msg.sender] + msg.value < balances[msg.sender]:
        revert with 0, 1
    balances[msg.sender] += msg.value
    emit TokenTransfer(msg.sender, stor2);
    if tokenExchanged[msg.sender] > !stor2:
        revert with 0, 17
    if tokenExchanged[msg.sender] + stor2 < tokenExchanged[msg.sender]:
        revert with 0, 1
    tokenExchanged[msg.sender] += stor2
    call _owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if block.timestamp < startedAt:
            revert with 0, 'Sale not yet started, come back later!'
        if block.timestamp >= endAt:
            revert with 0, 'Sale Ended :('
        if not tokenDecimal:
            if not msg.value:
                if not tokenPriceAvax:
                    revert with 0, 18
                if not 0 / tokenPriceAvax:
                    stor2 = 0
                    require ext_code.size(fundzAddr)
                    staticcall fundzAddr.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Contract has low token balance :('
                else:
                    if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                        revert with 0, 17
                    if not 0 / tokenPriceAvax:
                        revert with 0, 18
                    if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                        revert with 0, 1
                    stor2 = 0 / tokenPriceAvax
                    require ext_code.size(fundzAddr)
                    staticcall fundzAddr.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0 / tokenPriceAvax:
                        revert with 0, 'Contract has low token balance :('
            else:
                if msg.value and 1 > -1 / msg.value:
                    revert with 0, 17
                if not msg.value:
                    revert with 0, 18
                if msg.value / msg.value != 1:
                    revert with 0, 1
                if not tokenPriceAvax:
                    revert with 0, 18
                if not msg.value / tokenPriceAvax:
                    stor2 = 0
                    require ext_code.size(fundzAddr)
                    staticcall fundzAddr.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Contract has low token balance :('
                else:
                    if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                        revert with 0, 17
                    if not msg.value / tokenPriceAvax:
                        revert with 0, 18
                    if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                        revert with 0, 1
                    stor2 = msg.value / tokenPriceAvax
                    require ext_code.size(fundzAddr)
                    staticcall fundzAddr.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < msg.value / tokenPriceAvax:
                        revert with 0, 'Contract has low token balance :('
        else:
            if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                if not tokenDecimal:
                    if not msg.value:
                        if not tokenPriceAvax:
                            revert with 0, 18
                        if not 0 / tokenPriceAvax:
                            if not 10^tokenDecimal:
                                revert with 0, 18
                            stor2 = 0 / 10^tokenDecimal
                            require ext_code.size(fundzAddr)
                            staticcall fundzAddr.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                revert with 0, 'Contract has low token balance :('
                        else:
                            if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                                revert with 0, 17
                            if not 0 / tokenPriceAvax:
                                revert with 0, 18
                            if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                                revert with 0, 1
                            if not 10^tokenDecimal:
                                revert with 0, 18
                            stor2 = 0 / tokenPriceAvax / 10^tokenDecimal
                            require ext_code.size(fundzAddr)
                            staticcall fundzAddr.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0 / tokenPriceAvax / 10^tokenDecimal:
                                revert with 0, 'Contract has low token balance :('
                    else:
                        if msg.value and 1 > -1 / msg.value:
                            revert with 0, 17
                        if not msg.value:
                            revert with 0, 18
                        if msg.value / msg.value != 1:
                            revert with 0, 1
                        if not tokenPriceAvax:
                            revert with 0, 18
                        if not msg.value / tokenPriceAvax:
                            if not 10^tokenDecimal:
                                revert with 0, 18
                            stor2 = 0 / 10^tokenDecimal
                            require ext_code.size(fundzAddr)
                            staticcall fundzAddr.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                revert with 0, 'Contract has low token balance :('
                        else:
                            if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                                revert with 0, 17
                            if not msg.value / tokenPriceAvax:
                                revert with 0, 18
                            if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                                revert with 0, 1
                            if not 10^tokenDecimal:
                                revert with 0, 18
                            stor2 = msg.value / tokenPriceAvax / 10^tokenDecimal
                            require ext_code.size(fundzAddr)
                            staticcall fundzAddr.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < msg.value / tokenPriceAvax / 10^tokenDecimal:
                                revert with 0, 'Contract has low token balance :('
                else:
                    if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                        if not tokenDecimal:
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value and 1 > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if msg.value / msg.value != 1:
                                    revert with 0, 1
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not msg.value / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value / tokenPriceAvax * 10^tokenDecimal / msg.value / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = msg.value / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < msg.value / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                        else:
                            if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value and 10^tokenDecimal > -1 / msg.value:
                                        revert with 0, 17
                                    if not msg.value:
                                        revert with 0, 18
                                    if msg.value * 10^tokenDecimal / msg.value != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / msg.value * 10^tokenDecimal / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                            else:
                                s = 10
                                t = 1
                                idx = tokenDecimal
                                while idx > 1:
                                    if s > -1 / s:
                                        revert with 0, 17
                                    if not bool(idx):
                                        s = s * s
                                        t = t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    s = s * s
                                    t = s * t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if t > -1 / s:
                                    revert with 0, 17
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value and s * t > -1 / msg.value:
                                        revert with 0, 17
                                    if not msg.value:
                                        revert with 0, 18
                                    if msg.value * s * t / msg.value != s * t:
                                        revert with 0, 1
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not msg.value * s * t / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if msg.value * s * t / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * s * t / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * s * t / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / msg.value * s * t / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                    else:
                        s = 10
                        t = 1
                        idx = tokenDecimal
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not tokenDecimal:
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / tokenPriceAvax * s * t / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * s * t / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value and 1 > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if msg.value / msg.value != 1:
                                    revert with 0, 1
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not msg.value / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = 0 / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value / tokenPriceAvax and s * t > -1 / msg.value / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value / tokenPriceAvax * s * t / msg.value / tokenPriceAvax != s * t:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    stor2 = msg.value / tokenPriceAvax * s * t / 10^tokenDecimal
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < msg.value / tokenPriceAvax * s * t / 10^tokenDecimal:
                                        revert with 0, 'Contract has low token balance :('
                        else:
                            if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / tokenPriceAvax * s * t / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / tokenPriceAvax * s * t / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value and 10^tokenDecimal > -1 / msg.value:
                                        revert with 0, 17
                                    if not msg.value:
                                        revert with 0, 18
                                    if msg.value * 10^tokenDecimal / msg.value != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax and s * t > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / msg.value * 10^tokenDecimal / tokenPriceAvax != s * t:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                            else:
                                u = 10
                                v = 1
                                idx = tokenDecimal
                                while idx > 1:
                                    if u > -1 / u:
                                        revert with 0, 17
                                    if not bool(idx):
                                        u = u * u
                                        v = v
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    u = u * u
                                    v = u * v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if v > -1 / u:
                                    revert with 0, 17
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / tokenPriceAvax * s * t / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / tokenPriceAvax * s * t / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value and u * v > -1 / msg.value:
                                        revert with 0, 17
                                    if not msg.value:
                                        revert with 0, 18
                                    if msg.value * u * v / msg.value != u * v:
                                        revert with 0, 1
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not msg.value * u * v / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if msg.value * u * v / tokenPriceAvax and s * t > -1 / msg.value * u * v / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * u * v / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * u * v / tokenPriceAvax * s * t / msg.value * u * v / tokenPriceAvax != s * t:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = msg.value * u * v / tokenPriceAvax * s * t / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < msg.value * u * v / tokenPriceAvax * s * t / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
            else:
                s = 10
                t = 1
                idx = tokenDecimal
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not tokenDecimal:
                    if not msg.value:
                        if not tokenPriceAvax:
                            revert with 0, 18
                        if not 0 / tokenPriceAvax:
                            if not s * t:
                                revert with 0, 18
                            stor2 = 0 / s * t
                            require ext_code.size(fundzAddr)
                            staticcall fundzAddr.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0 / s * t:
                                revert with 0, 'Contract has low token balance :('
                        else:
                            if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                                revert with 0, 17
                            if not 0 / tokenPriceAvax:
                                revert with 0, 18
                            if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                                revert with 0, 1
                            if not s * t:
                                revert with 0, 18
                            stor2 = 0 / tokenPriceAvax / s * t
                            require ext_code.size(fundzAddr)
                            staticcall fundzAddr.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0 / tokenPriceAvax / s * t:
                                revert with 0, 'Contract has low token balance :('
                    else:
                        if msg.value and 1 > -1 / msg.value:
                            revert with 0, 17
                        if not msg.value:
                            revert with 0, 18
                        if msg.value / msg.value != 1:
                            revert with 0, 1
                        if not tokenPriceAvax:
                            revert with 0, 18
                        if not msg.value / tokenPriceAvax:
                            if not s * t:
                                revert with 0, 18
                            stor2 = 0 / s * t
                            require ext_code.size(fundzAddr)
                            staticcall fundzAddr.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0 / s * t:
                                revert with 0, 'Contract has low token balance :('
                        else:
                            if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                                revert with 0, 17
                            if not msg.value / tokenPriceAvax:
                                revert with 0, 18
                            if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                                revert with 0, 1
                            if not s * t:
                                revert with 0, 18
                            stor2 = msg.value / tokenPriceAvax / s * t
                            require ext_code.size(fundzAddr)
                            staticcall fundzAddr.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < msg.value / tokenPriceAvax / s * t:
                                revert with 0, 'Contract has low token balance :('
                else:
                    if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                        if not tokenDecimal:
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / s * t:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / s * t:
                                        revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value and 1 > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if msg.value / msg.value != 1:
                                    revert with 0, 1
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not msg.value / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / s * t:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value / tokenPriceAvax * 10^tokenDecimal / msg.value / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = msg.value / tokenPriceAvax * 10^tokenDecimal / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < msg.value / tokenPriceAvax * 10^tokenDecimal / s * t:
                                        revert with 0, 'Contract has low token balance :('
                        else:
                            if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value and 10^tokenDecimal > -1 / msg.value:
                                        revert with 0, 17
                                    if not msg.value:
                                        revert with 0, 18
                                    if msg.value * 10^tokenDecimal / msg.value != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / msg.value * 10^tokenDecimal / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / s * t:
                                            revert with 0, 'Contract has low token balance :('
                            else:
                                u = 10
                                v = 1
                                idx = tokenDecimal
                                while idx > 1:
                                    if u > -1 / u:
                                        revert with 0, 17
                                    if not bool(idx):
                                        u = u * u
                                        v = v
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    u = u * u
                                    v = u * v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if v > -1 / u:
                                    revert with 0, 17
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value and u * v > -1 / msg.value:
                                        revert with 0, 17
                                    if not msg.value:
                                        revert with 0, 18
                                    if msg.value * u * v / msg.value != u * v:
                                        revert with 0, 1
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not msg.value * u * v / tokenPriceAvax:
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if msg.value * u * v / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * u * v / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * u * v / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / msg.value * u * v / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / s * t:
                                            revert with 0, 'Contract has low token balance :('
                    else:
                        u = 10
                        v = 1
                        idx = tokenDecimal
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        if not tokenDecimal:
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / s * t:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / tokenPriceAvax * u * v / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * u * v / s * t:
                                        revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value and 1 > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if msg.value / msg.value != 1:
                                    revert with 0, 1
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not msg.value / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = 0 / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < 0 / s * t:
                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value / tokenPriceAvax and u * v > -1 / msg.value / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value / tokenPriceAvax * u * v / msg.value / tokenPriceAvax != u * v:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    stor2 = msg.value / tokenPriceAvax * u * v / s * t
                                    require ext_code.size(fundzAddr)
                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < msg.value / tokenPriceAvax * u * v / s * t:
                                        revert with 0, 'Contract has low token balance :('
                        else:
                            if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / tokenPriceAvax * u * v / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / tokenPriceAvax * u * v / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value and 10^tokenDecimal > -1 / msg.value:
                                        revert with 0, 17
                                    if not msg.value:
                                        revert with 0, 18
                                    if msg.value * 10^tokenDecimal / msg.value != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax and u * v > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / msg.value * 10^tokenDecimal / tokenPriceAvax != u * v:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / s * t:
                                            revert with 0, 'Contract has low token balance :('
                            else:
                                w = 10
                                x = 1
                                idx = tokenDecimal
                                while idx > 1:
                                    if w > -1 / w:
                                        revert with 0, 17
                                    if not bool(idx):
                                        w = w * w
                                        x = x
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    w = w * w
                                    x = w * x
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if x > -1 / w:
                                    revert with 0, 17
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / tokenPriceAvax * u * v / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / tokenPriceAvax * u * v / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value and w * x > -1 / msg.value:
                                        revert with 0, 17
                                    if not msg.value:
                                        revert with 0, 18
                                    if msg.value * w * x / msg.value != w * x:
                                        revert with 0, 1
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not msg.value * w * x / tokenPriceAvax:
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if msg.value * w * x / tokenPriceAvax and u * v > -1 / msg.value * w * x / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * w * x / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * w * x / tokenPriceAvax * u * v / msg.value * w * x / tokenPriceAvax != u * v:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = msg.value * w * x / tokenPriceAvax * u * v / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < msg.value * w * x / tokenPriceAvax * u * v / s * t:
                                            revert with 0, 'Contract has low token balance :('
        require ext_code.size(fundzAddr)
        call fundzAddr.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        emit TokenTransfer(msg.sender, stor2);
        if tokenExchanged[msg.sender] > !stor2:
            revert with 0, 17
        if tokenExchanged[msg.sender] + stor2 < tokenExchanged[msg.sender]:
            revert with 0, 1
        tokenExchanged[msg.sender] += stor2
        call _owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if balances[msg.sender] > !msg.value:
            revert with 0, 17
        if balances[msg.sender] + msg.value < balances[msg.sender]:
            revert with 0, 1
        balances[msg.sender] += msg.value
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd21a748c(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return _owner
                if unknown_0x9b814944(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return avaxDecimal
                if uint32(call.func_hash) >> 224 != unknown_0x9e1a4d19(?????):
                    if unknown_0xb2bdfa7b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return _owner
                    require unknown_0xb5a9fc35(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return fundzAddr
                require not msg.value
                require ext_code.size(fundzAddr)
                staticcall fundzAddr.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if unknown_0xd21a748c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return eth.balance(this.address)
            if unknown_0xdb6c00f2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                call address(arg1) with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xf21f537d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return startedAt
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    if unknown_0xf621fddb(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if _owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        fundzAddr = address(arg1)
                    else:
                        require unknown_0xf6a620b8(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if _owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        tokenDecimal = arg1
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(_owner, address(arg1));
                    _owner = address(arg1)
        else:
            if unknown_0x5caed029(?????) > uint32(call.func_hash) >> 224:
                if changeStartDate(uint256 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    startedAt = arg1
                else:
                    if unknown_0x27e235e3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return balances[arg1]
                    if unknown_0x39be86e8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return tokenExchanged[arg1]
                    if unknown_0x45737b1e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if _owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        endAt = arg1
                    else:
                        require unknown_0x49df728c(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if _owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(fundzAddr)
                        staticcall fundzAddr.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(fundzAddr)
                        call fundzAddr.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_call.return_data[0]
            else:
                if unknown_0x5caed029(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return tokenDecimal
                if unknown_0x676c0d77(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    tokenPriceAvax = arg1
                else:
                    if unknown_0x6ddb52e8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return tokenPriceAvax
                    if unknown_0x7cc3ae8c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return endAt
                    require unknown_0x83a317c1(?????) == uint32(call.func_hash) >> 224
                    if block.timestamp < startedAt:
                        revert with 0, 'Sale not yet started'
                    if block.timestamp >= endAt:
                        revert with 0, 'Sale Ended'
                    if not tokenDecimal:
                        if not msg.value:
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not 0 / tokenPriceAvax:
                                stor2 = 0
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'Contract has low token balance :('
                            else:
                                if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                                    revert with 0, 17
                                if not 0 / tokenPriceAvax:
                                    revert with 0, 18
                                if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                                    revert with 0, 1
                                stor2 = 0 / tokenPriceAvax
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0 / tokenPriceAvax:
                                    revert with 0, 'Contract has low token balance :('
                        else:
                            if msg.value and 1 > -1 / msg.value:
                                revert with 0, 17
                            if not msg.value:
                                revert with 0, 18
                            if msg.value / msg.value != 1:
                                revert with 0, 1
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not msg.value / tokenPriceAvax:
                                stor2 = 0
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'Contract has low token balance :('
                            else:
                                if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                                    revert with 0, 17
                                if not msg.value / tokenPriceAvax:
                                    revert with 0, 18
                                if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                                    revert with 0, 1
                                stor2 = msg.value / tokenPriceAvax
                                require ext_code.size(fundzAddr)
                                staticcall fundzAddr.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < msg.value / tokenPriceAvax:
                                    revert with 0, 'Contract has low token balance :('
                    else:
                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                            if not tokenDecimal:
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / tokenPriceAvax / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / tokenPriceAvax / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value and 1 > -1 / msg.value:
                                        revert with 0, 17
                                    if not msg.value:
                                        revert with 0, 18
                                    if msg.value / msg.value != 1:
                                        revert with 0, 1
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not msg.value / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = 0 / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        stor2 = msg.value / tokenPriceAvax / 10^tokenDecimal
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < msg.value / tokenPriceAvax / 10^tokenDecimal:
                                            revert with 0, 'Contract has low token balance :('
                            else:
                                if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                    if not tokenDecimal:
                                        if not msg.value:
                                            if not tokenPriceAvax:
                                                revert with 0, 18
                                            if not 0 / tokenPriceAvax:
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                stor2 = 0 / 10^tokenDecimal
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                                    revert with 0, 'Contract has low token balance :('
                                            else:
                                                if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not 0 / tokenPriceAvax:
                                                    revert with 0, 18
                                                if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                                    revert with 0, 1
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                                    revert with 0, 'Contract has low token balance :('
                                        else:
                                            if msg.value and 1 > -1 / msg.value:
                                                revert with 0, 17
                                            if not msg.value:
                                                revert with 0, 18
                                            if msg.value / msg.value != 1:
                                                revert with 0, 1
                                            if not tokenPriceAvax:
                                                revert with 0, 18
                                            if not msg.value / tokenPriceAvax:
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                stor2 = 0 / 10^tokenDecimal
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                                    revert with 0, 'Contract has low token balance :('
                                            else:
                                                if msg.value / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not msg.value / tokenPriceAvax:
                                                    revert with 0, 18
                                                if msg.value / tokenPriceAvax * 10^tokenDecimal / msg.value / tokenPriceAvax != 10^tokenDecimal:
                                                    revert with 0, 1
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                stor2 = msg.value / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < msg.value / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                                    revert with 0, 'Contract has low token balance :('
                                    else:
                                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                            if not msg.value:
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not 0 / tokenPriceAvax:
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = 0 / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                            else:
                                                if msg.value and 10^tokenDecimal > -1 / msg.value:
                                                    revert with 0, 17
                                                if not msg.value:
                                                    revert with 0, 18
                                                if msg.value * 10^tokenDecimal / msg.value != 10^tokenDecimal:
                                                    revert with 0, 1
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = 0 / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / msg.value * 10^tokenDecimal / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                        else:
                                            s = 10
                                            t = 1
                                            idx = tokenDecimal
                                            while idx > 1:
                                                if s > -1 / s:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    s = s * s
                                                    t = t
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                s = s * s
                                                t = s * t
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if t > -1 / s:
                                                revert with 0, 17
                                            if not msg.value:
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not 0 / tokenPriceAvax:
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = 0 / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                            else:
                                                if msg.value and s * t > -1 / msg.value:
                                                    revert with 0, 17
                                                if not msg.value:
                                                    revert with 0, 18
                                                if msg.value * s * t / msg.value != s * t:
                                                    revert with 0, 1
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not msg.value * s * t / tokenPriceAvax:
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = 0 / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if msg.value * s * t / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * s * t / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * s * t / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / msg.value * s * t / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    s = 10
                                    t = 1
                                    idx = tokenDecimal
                                    while idx > 1:
                                        if s > -1 / s:
                                            revert with 0, 17
                                        if not bool(idx):
                                            s = s * s
                                            t = t
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        s = s * s
                                        t = s * t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if t > -1 / s:
                                        revert with 0, 17
                                    if not tokenDecimal:
                                        if not msg.value:
                                            if not tokenPriceAvax:
                                                revert with 0, 18
                                            if not 0 / tokenPriceAvax:
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                stor2 = 0 / 10^tokenDecimal
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                                    revert with 0, 'Contract has low token balance :('
                                            else:
                                                if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not 0 / tokenPriceAvax:
                                                    revert with 0, 18
                                                if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                                    revert with 0, 1
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                stor2 = 0 / tokenPriceAvax * s * t / 10^tokenDecimal
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 0 / tokenPriceAvax * s * t / 10^tokenDecimal:
                                                    revert with 0, 'Contract has low token balance :('
                                        else:
                                            if msg.value and 1 > -1 / msg.value:
                                                revert with 0, 17
                                            if not msg.value:
                                                revert with 0, 18
                                            if msg.value / msg.value != 1:
                                                revert with 0, 1
                                            if not tokenPriceAvax:
                                                revert with 0, 18
                                            if not msg.value / tokenPriceAvax:
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                stor2 = 0 / 10^tokenDecimal
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                                    revert with 0, 'Contract has low token balance :('
                                            else:
                                                if msg.value / tokenPriceAvax and s * t > -1 / msg.value / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not msg.value / tokenPriceAvax:
                                                    revert with 0, 18
                                                if msg.value / tokenPriceAvax * s * t / msg.value / tokenPriceAvax != s * t:
                                                    revert with 0, 1
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                stor2 = msg.value / tokenPriceAvax * s * t / 10^tokenDecimal
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < msg.value / tokenPriceAvax * s * t / 10^tokenDecimal:
                                                    revert with 0, 'Contract has low token balance :('
                                    else:
                                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                            if not msg.value:
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not 0 / tokenPriceAvax:
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = 0 / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = 0 / tokenPriceAvax * s * t / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * s * t / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                            else:
                                                if msg.value and 10^tokenDecimal > -1 / msg.value:
                                                    revert with 0, 17
                                                if not msg.value:
                                                    revert with 0, 18
                                                if msg.value * 10^tokenDecimal / msg.value != 10^tokenDecimal:
                                                    revert with 0, 1
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = 0 / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and s * t > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / msg.value * 10^tokenDecimal / tokenPriceAvax != s * t:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                        else:
                                            u = 10
                                            v = 1
                                            idx = tokenDecimal
                                            while idx > 1:
                                                if u > -1 / u:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    u = u * u
                                                    v = v
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                u = u * u
                                                v = u * v
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 0, 17
                                            if not msg.value:
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not 0 / tokenPriceAvax:
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = 0 / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = 0 / tokenPriceAvax * s * t / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * s * t / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                            else:
                                                if msg.value and u * v > -1 / msg.value:
                                                    revert with 0, 17
                                                if not msg.value:
                                                    revert with 0, 18
                                                if msg.value * u * v / msg.value != u * v:
                                                    revert with 0, 1
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not msg.value * u * v / tokenPriceAvax:
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = 0 / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if msg.value * u * v / tokenPriceAvax and s * t > -1 / msg.value * u * v / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * u * v / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * u * v / tokenPriceAvax * s * t / msg.value * u * v / tokenPriceAvax != s * t:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    stor2 = msg.value * u * v / tokenPriceAvax * s * t / 10^tokenDecimal
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < msg.value * u * v / tokenPriceAvax * s * t / 10^tokenDecimal:
                                                        revert with 0, 'Contract has low token balance :('
                        else:
                            s = 10
                            t = 1
                            idx = tokenDecimal
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 0, 17
                            if not tokenDecimal:
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / tokenPriceAvax / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / tokenPriceAvax / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                else:
                                    if msg.value and 1 > -1 / msg.value:
                                        revert with 0, 17
                                    if not msg.value:
                                        revert with 0, 18
                                    if msg.value / msg.value != 1:
                                        revert with 0, 1
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not msg.value / tokenPriceAvax:
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = 0 / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < 0 / s * t:
                                            revert with 0, 'Contract has low token balance :('
                                    else:
                                        if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        stor2 = msg.value / tokenPriceAvax / s * t
                                        require ext_code.size(fundzAddr)
                                        staticcall fundzAddr.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < msg.value / tokenPriceAvax / s * t:
                                            revert with 0, 'Contract has low token balance :('
                            else:
                                if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                    if not tokenDecimal:
                                        if not msg.value:
                                            if not tokenPriceAvax:
                                                revert with 0, 18
                                            if not 0 / tokenPriceAvax:
                                                if not s * t:
                                                    revert with 0, 18
                                                stor2 = 0 / s * t
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 0 / s * t:
                                                    revert with 0, 'Contract has low token balance :('
                                            else:
                                                if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not 0 / tokenPriceAvax:
                                                    revert with 0, 18
                                                if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                                    revert with 0, 1
                                                if not s * t:
                                                    revert with 0, 18
                                                stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / s * t
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / s * t:
                                                    revert with 0, 'Contract has low token balance :('
                                        else:
                                            if msg.value and 1 > -1 / msg.value:
                                                revert with 0, 17
                                            if not msg.value:
                                                revert with 0, 18
                                            if msg.value / msg.value != 1:
                                                revert with 0, 1
                                            if not tokenPriceAvax:
                                                revert with 0, 18
                                            if not msg.value / tokenPriceAvax:
                                                if not s * t:
                                                    revert with 0, 18
                                                stor2 = 0 / s * t
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 0 / s * t:
                                                    revert with 0, 'Contract has low token balance :('
                                            else:
                                                if msg.value / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not msg.value / tokenPriceAvax:
                                                    revert with 0, 18
                                                if msg.value / tokenPriceAvax * 10^tokenDecimal / msg.value / tokenPriceAvax != 10^tokenDecimal:
                                                    revert with 0, 1
                                                if not s * t:
                                                    revert with 0, 18
                                                stor2 = msg.value / tokenPriceAvax * 10^tokenDecimal / s * t
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < msg.value / tokenPriceAvax * 10^tokenDecimal / s * t:
                                                    revert with 0, 'Contract has low token balance :('
                                    else:
                                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                            if not msg.value:
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not 0 / tokenPriceAvax:
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = 0 / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                            else:
                                                if msg.value and 10^tokenDecimal > -1 / msg.value:
                                                    revert with 0, 17
                                                if not msg.value:
                                                    revert with 0, 18
                                                if msg.value * 10^tokenDecimal / msg.value != 10^tokenDecimal:
                                                    revert with 0, 1
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = 0 / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / msg.value * 10^tokenDecimal / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                        else:
                                            u = 10
                                            v = 1
                                            idx = tokenDecimal
                                            while idx > 1:
                                                if u > -1 / u:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    u = u * u
                                                    v = v
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                u = u * u
                                                v = u * v
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if v > -1 / u:
                                                revert with 0, 17
                                            if not msg.value:
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not 0 / tokenPriceAvax:
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = 0 / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = 0 / tokenPriceAvax * 10^tokenDecimal / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * 10^tokenDecimal / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                            else:
                                                if msg.value and u * v > -1 / msg.value:
                                                    revert with 0, 17
                                                if not msg.value:
                                                    revert with 0, 18
                                                if msg.value * u * v / msg.value != u * v:
                                                    revert with 0, 1
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not msg.value * u * v / tokenPriceAvax:
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = 0 / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if msg.value * u * v / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * u * v / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * u * v / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / msg.value * u * v / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                else:
                                    u = 10
                                    v = 1
                                    idx = tokenDecimal
                                    while idx > 1:
                                        if u > -1 / u:
                                            revert with 0, 17
                                        if not bool(idx):
                                            u = u * u
                                            v = v
                                            idx = uint255(idx) * 0.5
                                            continue 
                                        u = u * u
                                        v = u * v
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    if v > -1 / u:
                                        revert with 0, 17
                                    if not tokenDecimal:
                                        if not msg.value:
                                            if not tokenPriceAvax:
                                                revert with 0, 18
                                            if not 0 / tokenPriceAvax:
                                                if not s * t:
                                                    revert with 0, 18
                                                stor2 = 0 / s * t
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 0 / s * t:
                                                    revert with 0, 'Contract has low token balance :('
                                            else:
                                                if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not 0 / tokenPriceAvax:
                                                    revert with 0, 18
                                                if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                                    revert with 0, 1
                                                if not s * t:
                                                    revert with 0, 18
                                                stor2 = 0 / tokenPriceAvax * u * v / s * t
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 0 / tokenPriceAvax * u * v / s * t:
                                                    revert with 0, 'Contract has low token balance :('
                                        else:
                                            if msg.value and 1 > -1 / msg.value:
                                                revert with 0, 17
                                            if not msg.value:
                                                revert with 0, 18
                                            if msg.value / msg.value != 1:
                                                revert with 0, 1
                                            if not tokenPriceAvax:
                                                revert with 0, 18
                                            if not msg.value / tokenPriceAvax:
                                                if not s * t:
                                                    revert with 0, 18
                                                stor2 = 0 / s * t
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < 0 / s * t:
                                                    revert with 0, 'Contract has low token balance :('
                                            else:
                                                if msg.value / tokenPriceAvax and u * v > -1 / msg.value / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not msg.value / tokenPriceAvax:
                                                    revert with 0, 18
                                                if msg.value / tokenPriceAvax * u * v / msg.value / tokenPriceAvax != u * v:
                                                    revert with 0, 1
                                                if not s * t:
                                                    revert with 0, 18
                                                stor2 = msg.value / tokenPriceAvax * u * v / s * t
                                                require ext_code.size(fundzAddr)
                                                staticcall fundzAddr.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < msg.value / tokenPriceAvax * u * v / s * t:
                                                    revert with 0, 'Contract has low token balance :('
                                    else:
                                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                            if not msg.value:
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not 0 / tokenPriceAvax:
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = 0 / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = 0 / tokenPriceAvax * u * v / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * u * v / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                            else:
                                                if msg.value and 10^tokenDecimal > -1 / msg.value:
                                                    revert with 0, 17
                                                if not msg.value:
                                                    revert with 0, 18
                                                if msg.value * 10^tokenDecimal / msg.value != 10^tokenDecimal:
                                                    revert with 0, 1
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = 0 / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and u * v > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / msg.value * 10^tokenDecimal / tokenPriceAvax != u * v:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                        else:
                                            w = 10
                                            x = 1
                                            idx = tokenDecimal
                                            while idx > 1:
                                                if w > -1 / w:
                                                    revert with 0, 17
                                                if not bool(idx):
                                                    w = w * w
                                                    x = x
                                                    idx = uint255(idx) * 0.5
                                                    continue 
                                                w = w * w
                                                x = w * x
                                                idx = uint255(idx) * 0.5
                                                continue 
                                            if x > -1 / w:
                                                revert with 0, 17
                                            if not msg.value:
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not 0 / tokenPriceAvax:
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = 0 / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = 0 / tokenPriceAvax * u * v / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / tokenPriceAvax * u * v / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                            else:
                                                if msg.value and w * x > -1 / msg.value:
                                                    revert with 0, 17
                                                if not msg.value:
                                                    revert with 0, 18
                                                if msg.value * w * x / msg.value != w * x:
                                                    revert with 0, 1
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not msg.value * w * x / tokenPriceAvax:
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = 0 / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < 0 / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                                                else:
                                                    if msg.value * w * x / tokenPriceAvax and u * v > -1 / msg.value * w * x / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * w * x / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * w * x / tokenPriceAvax * u * v / msg.value * w * x / tokenPriceAvax != u * v:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    stor2 = msg.value * w * x / tokenPriceAvax * u * v / s * t
                                                    require ext_code.size(fundzAddr)
                                                    staticcall fundzAddr.balanceOf(address arg1) with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < msg.value * w * x / tokenPriceAvax * u * v / s * t:
                                                        revert with 0, 'Contract has low token balance :('
                    require ext_code.size(fundzAddr)
                    call fundzAddr.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    if balances[msg.sender] > !msg.value:
                        revert with 0, 17
                    if balances[msg.sender] + msg.value < balances[msg.sender]:
                        revert with 0, 1
                    balances[msg.sender] += msg.value
                    emit TokenTransfer(msg.sender, stor2);
                    if tokenExchanged[msg.sender] > !stor2:
                        revert with 0, 17
                    if tokenExchanged[msg.sender] + stor2 < tokenExchanged[msg.sender]:
                        revert with 0, 1
                    tokenExchanged[msg.sender] += stor2
                    call _owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
