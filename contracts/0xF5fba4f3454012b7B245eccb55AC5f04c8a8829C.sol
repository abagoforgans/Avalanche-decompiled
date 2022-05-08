contract main {




// =====================  Runtime code  =====================


const depositCrypto = 1

const avaxBalance = eth.balance(this.address)


address _owner;
address tokenAddr;
uint256 tokenPriceAvax;
uint256 tokenDecimal;
uint256 avaxDecimal;
uint256 totalTransaction;
uint256 totalHardCap;
uint256 minContribution;
uint256 maxContribution;
uint256 hardCap;
mapping of uint256 balances;
mapping of uint8 stor11;
mapping of uint256 tokenExchanged;
uint8 whitelist;
uint8 claim; offset 8

function totalTransaction() {
    return totalTransaction
}

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

function claim() {
    return bool(claim)
}

function tokenDecimal() {
    return tokenDecimal
}

function tokenAddr() {
    return tokenAddr
}

function totalHardCap() {
    return totalHardCap
}

function tokenPriceAvax() {
    return tokenPriceAvax
}

function maxContribution() {
    return maxContribution
}

function owner() {
    return _owner
}

function whitelist() {
    return bool(whitelist)
}

function avaxDecimal() {
    return avaxDecimal
}

function minContribution() {
    return minContribution
}

function _owner() {
    return _owner
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function hardCap() {
    return hardCap
}

function updateHardCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    hardCap = arg1
}

function claimIn() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not claim:
        claim = 1
    else:
        claim = 0
    return 1
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

function turnWhitelist() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not whitelist:
        whitelist = 1
    else:
        whitelist = 0
    return 1
}

function updateTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddr = arg1
}

function updateTokenContribution(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minContribution = arg1
    maxContribution = arg2
}

function tokenBalance() {
    require ext_code.size(tokenAddr)
    staticcall tokenAddr.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawCrypto(address arg1) {
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
    require ext_code.size(tokenAddr)
    staticcall tokenAddr.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddr)
    call tokenAddr.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function depositTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddr)
    staticcall tokenAddr.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Token Balance of user is less'
    require ext_code.size(tokenAddr)
    call tokenAddr.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    emit TokenDeposited(arg1, msg.sender);
    return 1
}

function claimToken() {
    if not claim:
        revert with 0, 'Cannot Claim Now'
    if tokenExchanged[msg.sender] <= 0:
        revert with 0, 'There is no amount to claim'
    require ext_code.size(tokenAddr)
    staticcall tokenAddr.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if tokenExchanged[msg.sender] > ext_call.return_data[0]:
        revert with 0, 'Token Balance of contract is less'
    require ext_code.size(tokenAddr)
    call tokenAddr.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, tokenExchanged[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit TokenTransfer(msg.sender, tokenExchanged[msg.sender]);
    tokenExchanged[address(msg.sender)] = 0
    return 1
}

function blacklistAddress(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1.length <= 100
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function whitelistAddress(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1.length <= 100
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function dropTokens(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1.length == arg2.length
    require arg1.length <= 100
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        if s > !mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
            revert with 0, 17
        if s + mem[(32 * idx) + ceil32(32 * arg1.length) + 129] < s:
            revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        continue 
    s = 0
    while arg2.length < arg1.length:
        if arg2.length >= arg1.length:
            revert with 0, 50
        if not mem[(32 * arg2.length) + 140 len 20]:
            revert with 0, 'Address should not be Zero'
        if arg2.length >= arg2.length:
            revert with 0, 50
        if arg2.length >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * arg2.length) + 140 len 20]
        mem[32] = 10
        balances[mem[(32 * arg2.length) + 140 len 20]] = mem[(32 * arg2.length) + ceil32(32 * arg1.length) + 129]
        if arg2.length == -1:
            revert with 0, 17
        s = arg2.length + 1
        continue 
    return 1
}

function transferCrypto(uint256[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1.length == arg2.length
    require arg2.length <= 100
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if s > !mem[(32 * idx) + 128]:
            revert with 0, 17
        if s + mem[(32 * idx) + 128] < s:
            revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[(32 * idx) + 128]
        continue 
    require s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length <= msg.value
    idx = 0
    while idx < arg2.length:
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        call mem[(32 * idx) + ceil32(32 * arg1.length) + 141 len 20] with:
           value mem[(32 * idx) + 128] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 0, 50
        _101 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        _103 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = this.address
        emit amountTransfered(this.address, msg.sender, address(_103), _101);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function ExchangeAVAXforTokenMannual() payable {
    if balances[msg.sender] > !msg.value:
        revert with 0, 17
    if balances[msg.sender] + msg.value < balances[msg.sender]:
        revert with 0, 1
    balances[msg.sender] += msg.value
    if whitelist:
        if not stor11[address(msg.sender)]:
            revert with 0, 'User is not Whitelisted'
    if totalHardCap >= hardCap:
        revert with 0, 'AVAX Hardcap Reached'
    if balances[msg.sender] < minContribution:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contribution should satisfy min max case'
    if balances[msg.sender] > maxContribution:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contribution should satisfy min max case'
    if totalTransaction > -2:
        revert with 0, 17
    if totalTransaction + 1 < totalTransaction:
        revert with 0, 1
    if totalHardCap > !msg.value:
        revert with 0, 17
    if totalHardCap + msg.value < totalHardCap:
        revert with 0, 1
    if not tokenDecimal:
        if not msg.value:
            if not tokenPriceAvax:
                revert with 0, 18
            if not 0 / tokenPriceAvax:
                if tokenExchanged[address(msg.sender)] > -1:
                    revert with 0, 17
            else:
                if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                    revert with 0, 17
                if not 0 / tokenPriceAvax:
                    revert with 0, 18
                if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                    revert with 0, 1
                if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax):
                    revert with 0, 17
                tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax
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
                if tokenExchanged[address(msg.sender)] > -1:
                    revert with 0, 17
            else:
                if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                    revert with 0, 17
                if not msg.value / tokenPriceAvax:
                    revert with 0, 18
                if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                    revert with 0, 1
                if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax):
                    revert with 0, 17
                tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax
    else:
        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
            if not tokenDecimal:
                if not msg.value:
                    if not tokenPriceAvax:
                        revert with 0, 18
                    if not 0 / tokenPriceAvax:
                        if not 10^tokenDecimal:
                            revert with 0, 18
                        if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                            revert with 0, 17
                        tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                    else:
                        if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                            revert with 0, 17
                        if not 0 / tokenPriceAvax:
                            revert with 0, 18
                        if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                            revert with 0, 1
                        if not 10^tokenDecimal:
                            revert with 0, 18
                        if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax / 10^tokenDecimal):
                            revert with 0, 17
                        tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax / 10^tokenDecimal
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
                        if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                            revert with 0, 17
                        tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                    else:
                        if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                            revert with 0, 17
                        if not msg.value / tokenPriceAvax:
                            revert with 0, 18
                        if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                            revert with 0, 1
                        if not 10^tokenDecimal:
                            revert with 0, 18
                        if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax / 10^tokenDecimal):
                            revert with 0, 17
                        tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax / 10^tokenDecimal
            else:
                if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                    if not tokenDecimal:
                        if not msg.value:
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not 0 / tokenPriceAvax:
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                            else:
                                if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                    revert with 0, 17
                                if not 0 / tokenPriceAvax:
                                    revert with 0, 18
                                if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                    revert with 0, 1
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                            else:
                                if msg.value / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value / tokenPriceAvax:
                                    revert with 0, 17
                                if not msg.value / tokenPriceAvax:
                                    revert with 0, 18
                                if msg.value / tokenPriceAvax * 10^tokenDecimal / msg.value / tokenPriceAvax != 10^tokenDecimal:
                                    revert with 0, 1
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                    else:
                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                else:
                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                else:
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / msg.value * 10^tokenDecimal / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                else:
                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                else:
                                    if msg.value * s * t / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * s * t / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * s * t / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / msg.value * s * t / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                            else:
                                if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                    revert with 0, 17
                                if not 0 / tokenPriceAvax:
                                    revert with 0, 18
                                if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                    revert with 0, 1
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * s * t / 10^tokenDecimal):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                            else:
                                if msg.value / tokenPriceAvax and s * t > -1 / msg.value / tokenPriceAvax:
                                    revert with 0, 17
                                if not msg.value / tokenPriceAvax:
                                    revert with 0, 18
                                if msg.value / tokenPriceAvax * s * t / msg.value / tokenPriceAvax != s * t:
                                    revert with 0, 1
                                if not 10^tokenDecimal:
                                    revert with 0, 18
                                if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax * s * t / 10^tokenDecimal):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax * s * t / 10^tokenDecimal
                    else:
                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                else:
                                    if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * s * t / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                else:
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and s * t > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / msg.value * 10^tokenDecimal / tokenPriceAvax != s * t:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                else:
                                    if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * s * t / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                else:
                                    if msg.value * u * v / tokenPriceAvax and s * t > -1 / msg.value * u * v / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * u * v / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * u * v / tokenPriceAvax * s * t / msg.value * u * v / tokenPriceAvax != s * t:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(msg.value * u * v / tokenPriceAvax * s * t / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += msg.value * u * v / tokenPriceAvax * s * t / 10^tokenDecimal
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
                        if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                            revert with 0, 17
                        tokenExchanged[address(msg.sender)] += 0 / s * t
                    else:
                        if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                            revert with 0, 17
                        if not 0 / tokenPriceAvax:
                            revert with 0, 18
                        if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                            revert with 0, 1
                        if not s * t:
                            revert with 0, 18
                        if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax / s * t):
                            revert with 0, 17
                        tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax / s * t
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
                        if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                            revert with 0, 17
                        tokenExchanged[address(msg.sender)] += 0 / s * t
                    else:
                        if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                            revert with 0, 17
                        if not msg.value / tokenPriceAvax:
                            revert with 0, 18
                        if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                            revert with 0, 1
                        if not s * t:
                            revert with 0, 18
                        if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax / s * t):
                            revert with 0, 17
                        tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax / s * t
            else:
                if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                    if not tokenDecimal:
                        if not msg.value:
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not 0 / tokenPriceAvax:
                                if not s * t:
                                    revert with 0, 18
                                if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / s * t
                            else:
                                if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                    revert with 0, 17
                                if not 0 / tokenPriceAvax:
                                    revert with 0, 18
                                if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                    revert with 0, 1
                                if not s * t:
                                    revert with 0, 18
                                if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / s * t):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / s * t
                            else:
                                if msg.value / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value / tokenPriceAvax:
                                    revert with 0, 17
                                if not msg.value / tokenPriceAvax:
                                    revert with 0, 18
                                if msg.value / tokenPriceAvax * 10^tokenDecimal / msg.value / tokenPriceAvax != 10^tokenDecimal:
                                    revert with 0, 1
                                if not s * t:
                                    revert with 0, 18
                                if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax * 10^tokenDecimal / s * t):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax * 10^tokenDecimal / s * t
                    else:
                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                else:
                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                else:
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / msg.value * 10^tokenDecimal / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                else:
                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                else:
                                    if msg.value * u * v / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * u * v / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * u * v / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / msg.value * u * v / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / s * t
                            else:
                                if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                    revert with 0, 17
                                if not 0 / tokenPriceAvax:
                                    revert with 0, 18
                                if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                    revert with 0, 1
                                if not s * t:
                                    revert with 0, 18
                                if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * u * v / s * t):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * u * v / s * t
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
                                if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / s * t
                            else:
                                if msg.value / tokenPriceAvax and u * v > -1 / msg.value / tokenPriceAvax:
                                    revert with 0, 17
                                if not msg.value / tokenPriceAvax:
                                    revert with 0, 18
                                if msg.value / tokenPriceAvax * u * v / msg.value / tokenPriceAvax != u * v:
                                    revert with 0, 1
                                if not s * t:
                                    revert with 0, 18
                                if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax * u * v / s * t):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax * u * v / s * t
                    else:
                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                else:
                                    if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * u * v / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * u * v / s * t
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                else:
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and u * v > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / msg.value * 10^tokenDecimal / tokenPriceAvax != u * v:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / s * t
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                else:
                                    if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * u * v / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * u * v / s * t
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                else:
                                    if msg.value * w * x / tokenPriceAvax and u * v > -1 / msg.value * w * x / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value * w * x / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value * w * x / tokenPriceAvax * u * v / msg.value * w * x / tokenPriceAvax != u * v:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(msg.value * w * x / tokenPriceAvax * u * v / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += msg.value * w * x / tokenPriceAvax * u * v / s * t
    emit 0x8c82aff2: msg.value, msg.sender
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if balances[msg.sender] > !msg.value:
            revert with 0, 17
        if balances[msg.sender] + msg.value < balances[msg.sender]:
            revert with 0, 1
        balances[msg.sender] += msg.value
        if whitelist:
            if not stor11[address(msg.sender)]:
                revert with 0, 'User is not Whitelisted'
        if totalHardCap >= hardCap:
            revert with 0, 'AVAX Hardcap Reached'
        if balances[msg.sender] < minContribution:
            revert with 0, 'Contribution should satisfy min max case'
        if balances[msg.sender] > maxContribution:
            revert with 0, 'Contribution should satisfy min max case'
        if totalTransaction > -2:
            revert with 0, 17
        if totalTransaction + 1 < totalTransaction:
            revert with 0, 1
        if totalHardCap > !msg.value:
            revert with 0, 17
        if totalHardCap + msg.value < totalHardCap:
            revert with 0, 1
        if not tokenDecimal:
            if not msg.value:
                if not tokenPriceAvax:
                    revert with 0, 18
                if not 0 / tokenPriceAvax:
                    if tokenExchanged[address(msg.sender)] > -1:
                        revert with 0, 17
                else:
                    if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                        revert with 0, 17
                    if not 0 / tokenPriceAvax:
                        revert with 0, 18
                    if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                        revert with 0, 1
                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax):
                        revert with 0, 17
                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax
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
                    if tokenExchanged[address(msg.sender)] > -1:
                        revert with 0, 17
                else:
                    if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                        revert with 0, 17
                    if not msg.value / tokenPriceAvax:
                        revert with 0, 18
                    if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                        revert with 0, 1
                    if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax):
                        revert with 0, 17
                    tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax
        else:
            if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                if not tokenDecimal:
                    if not msg.value:
                        if not tokenPriceAvax:
                            revert with 0, 18
                        if not 0 / tokenPriceAvax:
                            if not 10^tokenDecimal:
                                revert with 0, 18
                            if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                revert with 0, 17
                            tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                        else:
                            if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                                revert with 0, 17
                            if not 0 / tokenPriceAvax:
                                revert with 0, 18
                            if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                                revert with 0, 1
                            if not 10^tokenDecimal:
                                revert with 0, 18
                            if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax / 10^tokenDecimal):
                                revert with 0, 17
                            tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax / 10^tokenDecimal
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
                            if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                revert with 0, 17
                            tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                        else:
                            if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                                revert with 0, 17
                            if not msg.value / tokenPriceAvax:
                                revert with 0, 18
                            if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                                revert with 0, 1
                            if not 10^tokenDecimal:
                                revert with 0, 18
                            if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax / 10^tokenDecimal):
                                revert with 0, 17
                            tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax / 10^tokenDecimal
                else:
                    if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                        if not tokenDecimal:
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                else:
                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                else:
                                    if msg.value / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value / tokenPriceAvax * 10^tokenDecimal / msg.value / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                        else:
                            if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                    else:
                                        if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                    else:
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / msg.value * 10^tokenDecimal / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                    else:
                                        if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                    else:
                                        if msg.value * s * t / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * s * t / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * s * t / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / msg.value * s * t / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                else:
                                    if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * s * t / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                else:
                                    if msg.value / tokenPriceAvax and s * t > -1 / msg.value / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value / tokenPriceAvax * s * t / msg.value / tokenPriceAvax != s * t:
                                        revert with 0, 1
                                    if not 10^tokenDecimal:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax * s * t / 10^tokenDecimal):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax * s * t / 10^tokenDecimal
                        else:
                            if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                    else:
                                        if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * s * t / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                    else:
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax and s * t > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / msg.value * 10^tokenDecimal / tokenPriceAvax != s * t:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                    else:
                                        if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * s * t / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                    else:
                                        if msg.value * u * v / tokenPriceAvax and s * t > -1 / msg.value * u * v / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * u * v / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * u * v / tokenPriceAvax * s * t / msg.value * u * v / tokenPriceAvax != s * t:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(msg.value * u * v / tokenPriceAvax * s * t / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += msg.value * u * v / tokenPriceAvax * s * t / 10^tokenDecimal
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
                            if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                revert with 0, 17
                            tokenExchanged[address(msg.sender)] += 0 / s * t
                        else:
                            if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                                revert with 0, 17
                            if not 0 / tokenPriceAvax:
                                revert with 0, 18
                            if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                                revert with 0, 1
                            if not s * t:
                                revert with 0, 18
                            if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax / s * t):
                                revert with 0, 17
                            tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax / s * t
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
                            if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                revert with 0, 17
                            tokenExchanged[address(msg.sender)] += 0 / s * t
                        else:
                            if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                                revert with 0, 17
                            if not msg.value / tokenPriceAvax:
                                revert with 0, 18
                            if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                                revert with 0, 1
                            if not s * t:
                                revert with 0, 18
                            if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax / s * t):
                                revert with 0, 17
                            tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax / s * t
                else:
                    if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                        if not tokenDecimal:
                            if not msg.value:
                                if not tokenPriceAvax:
                                    revert with 0, 18
                                if not 0 / tokenPriceAvax:
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                else:
                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                else:
                                    if msg.value / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value / tokenPriceAvax * 10^tokenDecimal / msg.value / tokenPriceAvax != 10^tokenDecimal:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax * 10^tokenDecimal / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax * 10^tokenDecimal / s * t
                        else:
                            if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not s * t:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / s * t
                                    else:
                                        if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / s * t
                                    else:
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / msg.value * 10^tokenDecimal / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / s * t
                                    else:
                                        if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / s * t
                                    else:
                                        if msg.value * u * v / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * u * v / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * u * v / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / msg.value * u * v / tokenPriceAvax != 10^tokenDecimal:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                else:
                                    if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                        revert with 0, 17
                                    if not 0 / tokenPriceAvax:
                                        revert with 0, 18
                                    if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * u * v / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * u * v / s * t
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
                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                else:
                                    if msg.value / tokenPriceAvax and u * v > -1 / msg.value / tokenPriceAvax:
                                        revert with 0, 17
                                    if not msg.value / tokenPriceAvax:
                                        revert with 0, 18
                                    if msg.value / tokenPriceAvax * u * v / msg.value / tokenPriceAvax != u * v:
                                        revert with 0, 1
                                    if not s * t:
                                        revert with 0, 18
                                    if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax * u * v / s * t):
                                        revert with 0, 17
                                    tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax * u * v / s * t
                        else:
                            if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not s * t:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / s * t
                                    else:
                                        if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * u * v / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * u * v / s * t
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / s * t
                                    else:
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax and u * v > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / msg.value * 10^tokenDecimal / tokenPriceAvax != u * v:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / s * t
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / s * t
                                    else:
                                        if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * u * v / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * u * v / s * t
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / s * t
                                    else:
                                        if msg.value * w * x / tokenPriceAvax and u * v > -1 / msg.value * w * x / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value * w * x / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value * w * x / tokenPriceAvax * u * v / msg.value * w * x / tokenPriceAvax != u * v:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(msg.value * w * x / tokenPriceAvax * u * v / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += msg.value * w * x / tokenPriceAvax * u * v / s * t
        emit 0x8c82aff2: msg.value, msg.sender
    else:
        if unknown_0x88716fdd(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb2bdfa7b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xd9b01dd8(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xb2bdfa7b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return _owner
                    if uint32(call.func_hash) >> 224 != unknown_0xb31d61b0(?????):
                        if unknown_0xd21a748c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return eth.balance(this.address)
                        require unknown_0xd936547e(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor11[cd[4]])
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[4] + 36
                    t = 160
                    while idx < ('cd', 4).length:
                        require cd[s] == address(cd[s])
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ('cd', 4).length <= 100
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 172 len 20]
                        mem[32] = 11
                        stor11[mem[(32 * idx) + 172 len 20]] = 1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if unknown_0xd9b01dd8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if _owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not whitelist:
                            whitelist = 1
                        else:
                            whitelist = 0
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xdd49756e(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                                if uint32(call.func_hash) >> 224 != unknown_0xf6a620b8(?????):
                                    require unknown_0xfb86a404(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    return hardCap
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if _owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                tokenDecimal = cd[4]
                            else:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if _owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if not address(cd[4]):
                                    revert with 0, 'Ownable: new owner is the zero address'
                                emit OwnershipTransferred(_owner, address(cd[4]));
                                _owner = address(cd[4])
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require ext_code.size(tokenAddr)
                        staticcall tokenAddr.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if cd[4] > ext_call.return_data[0]:
                            revert with 0, 'Token Balance of user is less'
                        require ext_code.size(tokenAddr)
                        call tokenAddr.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_call.return_data[0]
                        emit TokenDeposited(cd[4], msg.sender);
            else:
                if unknown_0x93e59dc1(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x88716fdd(?????):
                        if unknown_0x8d3d6576(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return maxContribution
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return _owner
                        require unknown_0x9334efa0(?????) == uint32(call.func_hash) >> 224
                        emit 0x8c82aff2: msg.value, msg.sender
                        return 1
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call address(cd[4]) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0x93e59dc1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(whitelist)
                if unknown_0x9b814944(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return avaxDecimal
                if unknown_0x9e1a4d19(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(tokenAddr)
                    staticcall tokenAddr.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0xaaffadf3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return minContribution
                require unknown_0xaefb4d81(?????) == uint32(call.func_hash) >> 224
                require calldata.size - 4 >= 64
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                idx = 0
                s = cd[4] + 36
                t = 160
                while idx < ('cd', 4).length:
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[36] <= test266151307()
                require calldata.size > cd[36] + 35
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                    revert with 0, 65
                mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                s = cd[36] + 36
                t = ceil32(32 * ('cd', 4).length) + 161
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ('cd', 4).length == ('cd', 36).length
                require ('cd', 36).length <= 100
                idx = 0
                s = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + 160]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + 160] < s:
                        revert with 0, 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + 160]
                    continue 
                require s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length <= msg.value
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    if idx >= mem[128]:
                        revert with 0, 50
                    call mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 173 len 20] with:
                       value mem[(32 * idx) + 160] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[128]:
                        revert with 0, 50
                    _1940 = mem[(32 * idx) + 160]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    _1942 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = this.address
                    emit amountTransfered(this.address, msg.sender, address(_1942), _1940);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            return 1
        if unknown_0x5422bdb5(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x39be86e8(?????) > uint32(call.func_hash) >> 224:
                if totalTransaction() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalTransaction
                if updateTokenContribution(uint256 arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    minContribution = cd[4]
                    maxContribution = cd[36]
                if uint32(call.func_hash) >> 224 != unknown_0x268bc649(?????):
                    require unknown_0x27e235e3(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return balances[cd[4]]
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                idx = 0
                s = cd[4] + 36
                t = 160
                while idx < ('cd', 4).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ('cd', 4).length <= 100
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 172 len 20]
                    mem[32] = 11
                    stor11[mem[(32 * idx) + 172 len 20]] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                return 1
            if unknown_0x39be86e8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return tokenExchanged[cd[4]]
            if unknown_0x4451d89f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if not claim:
                    revert with 0, 'Cannot Claim Now'
                if tokenExchanged[msg.sender] <= 0:
                    revert with 0, 'There is no amount to claim'
                require ext_code.size(tokenAddr)
                staticcall tokenAddr.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if tokenExchanged[msg.sender] > ext_call.return_data[0]:
                    revert with 0, 'Token Balance of contract is less'
                require ext_code.size(tokenAddr)
                call tokenAddr.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, tokenExchanged[msg.sender]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TokenTransfer(msg.sender, tokenExchanged[msg.sender]);
                tokenExchanged[address(msg.sender)] = 0
                return 1
            if uint32(call.func_hash) >> 224 != unknown_0x49df728c(?????):
                if unknown_0x4e71d92d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(claim)
                require unknown_0x5238e8ef(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not claim:
                    claim = 1
                else:
                    claim = 0
                return 1
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if _owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(tokenAddr)
            staticcall tokenAddr.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddr)
            call tokenAddr.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
        else:
            if unknown_0x676c0d77(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x5422bdb5(?????):
                    if unknown_0x5caed029(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return tokenDecimal
                    if unknown_0x5fbe4d1d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return tokenAddr
                    require unknown_0x6691461a(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    tokenAddr = address(cd[4])
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                idx = 0
                s = cd[4] + 36
                t = 160
                while idx < ('cd', 4).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                    revert with 0, 65
                mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                idx = 0
                s = cd[36] + 36
                t = ceil32(32 * ('cd', 4).length) + 161
                while idx < ('cd', 36).length:
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ('cd', 4).length == ('cd', 36).length
                require ('cd', 4).length <= 100
                idx = 0
                s = 0
                while idx < ('cd', 36).length:
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]:
                        revert with 0, 17
                    if s + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161] < s:
                        revert with 0, 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                    continue 
                s = 0
                while ('cd', 36).length < ('cd', 4).length:
                    if ('cd', 36).length >= ('cd', 4).length:
                        revert with 0, 50
                    if not mem[(32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'Address should not be Zero'
                    if ('cd', 36).length >= ('cd', 36).length:
                        revert with 0, 50
                    if ('cd', 36).length >= ('cd', 4).length:
                        revert with 0, 50
                    mem[0] = mem[(32 * ('cd', 36).length) + 172 len 20]
                    mem[32] = 10
                    balances[mem[(32 * ('cd', 36).length) + 172 len 20]] = mem[(32 * ('cd', 36).length) + ceil32(32 * ('cd', 4).length) + 161]
                    if ('cd', 36).length == -1:
                        revert with 0, 17
                    s = ('cd', 36).length + 1
                    continue 
                return 1
            if unknown_0x676c0d77(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                tokenPriceAvax = cd[4]
            else:
                if unknown_0x67a3eb65(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalHardCap
                if unknown_0x6ddb52e8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return tokenPriceAvax
                if unknown_0x703df793(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    hardCap = cd[4]
                else:
                    require unknown_0x83a317c1(?????) == uint32(call.func_hash) >> 224
                    if balances[msg.sender] > !msg.value:
                        revert with 0, 17
                    if balances[msg.sender] + msg.value < balances[msg.sender]:
                        revert with 0, 1
                    balances[msg.sender] += msg.value
                    if whitelist:
                        if not stor11[address(msg.sender)]:
                            revert with 0, 'User is not Whitelisted'
                    if totalHardCap >= hardCap:
                        revert with 0, 'AVAX Hardcap Reached'
                    if balances[msg.sender] < minContribution:
                        revert with 0, 'Contribution should satisfy min max case'
                    if balances[msg.sender] > maxContribution:
                        revert with 0, 'Contribution should satisfy min max case'
                    if totalTransaction > -2:
                        revert with 0, 17
                    if totalTransaction + 1 < totalTransaction:
                        revert with 0, 1
                    if totalHardCap > !msg.value:
                        revert with 0, 17
                    if totalHardCap + msg.value < totalHardCap:
                        revert with 0, 1
                    if not tokenDecimal:
                        if not msg.value:
                            if not tokenPriceAvax:
                                revert with 0, 18
                            if not 0 / tokenPriceAvax:
                                if tokenExchanged[address(msg.sender)] > -1:
                                    revert with 0, 17
                            else:
                                if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                                    revert with 0, 17
                                if not 0 / tokenPriceAvax:
                                    revert with 0, 18
                                if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                                    revert with 0, 1
                                if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax
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
                                if tokenExchanged[address(msg.sender)] > -1:
                                    revert with 0, 17
                            else:
                                if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                                    revert with 0, 17
                                if not msg.value / tokenPriceAvax:
                                    revert with 0, 18
                                if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                                    revert with 0, 1
                                if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax):
                                    revert with 0, 17
                                tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax
                    else:
                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                            if not tokenDecimal:
                                if not msg.value:
                                    if not tokenPriceAvax:
                                        revert with 0, 18
                                    if not 0 / tokenPriceAvax:
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                    else:
                                        if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax / 10^tokenDecimal
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                    else:
                                        if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                                            revert with 0, 1
                                        if not 10^tokenDecimal:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax / 10^tokenDecimal):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax / 10^tokenDecimal
                            else:
                                if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                    if not tokenDecimal:
                                        if not msg.value:
                                            if not tokenPriceAvax:
                                                revert with 0, 18
                                            if not 0 / tokenPriceAvax:
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                            else:
                                                if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not 0 / tokenPriceAvax:
                                                    revert with 0, 18
                                                if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                                    revert with 0, 1
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                                if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                            else:
                                                if msg.value / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not msg.value / tokenPriceAvax:
                                                    revert with 0, 18
                                                if msg.value / tokenPriceAvax * 10^tokenDecimal / msg.value / tokenPriceAvax != 10^tokenDecimal:
                                                    revert with 0, 1
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
                                    else:
                                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                            if not msg.value:
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not 0 / tokenPriceAvax:
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                                else:
                                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                                else:
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / msg.value * 10^tokenDecimal / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                                else:
                                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                                else:
                                                    if msg.value * s * t / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * s * t / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * s * t / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / msg.value * s * t / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += msg.value * s * t / tokenPriceAvax * 10^tokenDecimal / 10^tokenDecimal
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
                                                if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                            else:
                                                if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not 0 / tokenPriceAvax:
                                                    revert with 0, 18
                                                if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                                    revert with 0, 1
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * s * t / 10^tokenDecimal):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                                if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                            else:
                                                if msg.value / tokenPriceAvax and s * t > -1 / msg.value / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not msg.value / tokenPriceAvax:
                                                    revert with 0, 18
                                                if msg.value / tokenPriceAvax * s * t / msg.value / tokenPriceAvax != s * t:
                                                    revert with 0, 1
                                                if not 10^tokenDecimal:
                                                    revert with 0, 18
                                                if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax * s * t / 10^tokenDecimal):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax * s * t / 10^tokenDecimal
                                    else:
                                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                            if not msg.value:
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not 0 / tokenPriceAvax:
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                                else:
                                                    if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * s * t / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                                else:
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and s * t > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / msg.value * 10^tokenDecimal / tokenPriceAvax != s * t:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += msg.value * 10^tokenDecimal / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                                else:
                                                    if 0 / tokenPriceAvax and s * t > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * s * t / 0 / tokenPriceAvax != s * t:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * s * t / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                                    if tokenExchanged[address(msg.sender)] > !(0 / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / 10^tokenDecimal
                                                else:
                                                    if msg.value * u * v / tokenPriceAvax and s * t > -1 / msg.value * u * v / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * u * v / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * u * v / tokenPriceAvax * s * t / msg.value * u * v / tokenPriceAvax != s * t:
                                                        revert with 0, 1
                                                    if not 10^tokenDecimal:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(msg.value * u * v / tokenPriceAvax * s * t / 10^tokenDecimal):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += msg.value * u * v / tokenPriceAvax * s * t / 10^tokenDecimal
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / s * t
                                    else:
                                        if 0 / tokenPriceAvax and 1 > -1 / 0 / tokenPriceAvax:
                                            revert with 0, 17
                                        if not 0 / tokenPriceAvax:
                                            revert with 0, 18
                                        if 0 / tokenPriceAvax / 0 / tokenPriceAvax != 1:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax / s * t
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
                                        if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += 0 / s * t
                                    else:
                                        if msg.value / tokenPriceAvax and 1 > -1 / msg.value / tokenPriceAvax:
                                            revert with 0, 17
                                        if not msg.value / tokenPriceAvax:
                                            revert with 0, 18
                                        if msg.value / tokenPriceAvax / msg.value / tokenPriceAvax != 1:
                                            revert with 0, 1
                                        if not s * t:
                                            revert with 0, 18
                                        if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax / s * t):
                                            revert with 0, 17
                                        tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax / s * t
                            else:
                                if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                    if not tokenDecimal:
                                        if not msg.value:
                                            if not tokenPriceAvax:
                                                revert with 0, 18
                                            if not 0 / tokenPriceAvax:
                                                if not s * t:
                                                    revert with 0, 18
                                                if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += 0 / s * t
                                            else:
                                                if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not 0 / tokenPriceAvax:
                                                    revert with 0, 18
                                                if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                                    revert with 0, 1
                                                if not s * t:
                                                    revert with 0, 18
                                                if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / s * t):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                                if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += 0 / s * t
                                            else:
                                                if msg.value / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not msg.value / tokenPriceAvax:
                                                    revert with 0, 18
                                                if msg.value / tokenPriceAvax * 10^tokenDecimal / msg.value / tokenPriceAvax != 10^tokenDecimal:
                                                    revert with 0, 1
                                                if not s * t:
                                                    revert with 0, 18
                                                if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax * 10^tokenDecimal / s * t):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax * 10^tokenDecimal / s * t
                                    else:
                                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                            if not msg.value:
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not 0 / tokenPriceAvax:
                                                    if not s * t:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                                else:
                                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                                else:
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / msg.value * 10^tokenDecimal / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += msg.value * 10^tokenDecimal / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                                else:
                                                    if 0 / tokenPriceAvax and 10^tokenDecimal > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * 10^tokenDecimal / 0 / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * 10^tokenDecimal / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                                else:
                                                    if msg.value * u * v / tokenPriceAvax and 10^tokenDecimal > -1 / msg.value * u * v / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * u * v / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / msg.value * u * v / tokenPriceAvax != 10^tokenDecimal:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += msg.value * u * v / tokenPriceAvax * 10^tokenDecimal / s * t
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
                                                if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += 0 / s * t
                                            else:
                                                if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not 0 / tokenPriceAvax:
                                                    revert with 0, 18
                                                if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                                    revert with 0, 1
                                                if not s * t:
                                                    revert with 0, 18
                                                if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * u * v / s * t):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * u * v / s * t
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
                                                if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += 0 / s * t
                                            else:
                                                if msg.value / tokenPriceAvax and u * v > -1 / msg.value / tokenPriceAvax:
                                                    revert with 0, 17
                                                if not msg.value / tokenPriceAvax:
                                                    revert with 0, 18
                                                if msg.value / tokenPriceAvax * u * v / msg.value / tokenPriceAvax != u * v:
                                                    revert with 0, 1
                                                if not s * t:
                                                    revert with 0, 18
                                                if tokenExchanged[address(msg.sender)] > !(msg.value / tokenPriceAvax * u * v / s * t):
                                                    revert with 0, 17
                                                tokenExchanged[address(msg.sender)] += msg.value / tokenPriceAvax * u * v / s * t
                                    else:
                                        if bool(bool(tokenDecimal < 78)) or bool(bool(tokenDecimal < 32)):
                                            if not msg.value:
                                                if not tokenPriceAvax:
                                                    revert with 0, 18
                                                if not 0 / tokenPriceAvax:
                                                    if not s * t:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                                else:
                                                    if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * u * v / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * u * v / s * t
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
                                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                                else:
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax and u * v > -1 / msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * 10^tokenDecimal / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / msg.value * 10^tokenDecimal / tokenPriceAvax != u * v:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += msg.value * 10^tokenDecimal / tokenPriceAvax * u * v / s * t
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
                                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                                else:
                                                    if 0 / tokenPriceAvax and u * v > -1 / 0 / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not 0 / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if 0 / tokenPriceAvax * u * v / 0 / tokenPriceAvax != u * v:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(0 / tokenPriceAvax * u * v / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / tokenPriceAvax * u * v / s * t
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
                                                    if tokenExchanged[address(msg.sender)] > !(0 / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += 0 / s * t
                                                else:
                                                    if msg.value * w * x / tokenPriceAvax and u * v > -1 / msg.value * w * x / tokenPriceAvax:
                                                        revert with 0, 17
                                                    if not msg.value * w * x / tokenPriceAvax:
                                                        revert with 0, 18
                                                    if msg.value * w * x / tokenPriceAvax * u * v / msg.value * w * x / tokenPriceAvax != u * v:
                                                        revert with 0, 1
                                                    if not s * t:
                                                        revert with 0, 18
                                                    if tokenExchanged[address(msg.sender)] > !(msg.value * w * x / tokenPriceAvax * u * v / s * t):
                                                        revert with 0, 17
                                                    tokenExchanged[address(msg.sender)] += msg.value * w * x / tokenPriceAvax * u * v / s * t
                    emit 0x8c82aff2: msg.value, msg.sender
}



}
