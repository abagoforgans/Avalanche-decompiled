contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
mapping of uint256 _contributions;
mapping of uint256 sub_7ed3deba;
mapping of uint256 sub_5022370f;
mapping of uint256 claimed;
address _tokenAddress;
uint256 _rate;
uint256 _weiRaised;
uint256 endICO;
uint256 minPurchase;
uint256 sub_00c433c7;
uint256 hardcap;
uint256 purchasedTokens;
uint256 sub_0c7d6122;
uint256 stor16;

function sub_00c433c7(?) {
    return sub_00c433c7
}

function purchasedTokens() {
    return purchasedTokens
}

function sub_0c7d6122(?) {
    return sub_0c7d6122
}

function _contributions(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _contributions[arg1]
}

function minPurchase() {
    return minPurchase
}

function endICO() {
    return endICO
}

function sub_5022370f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5022370f[arg1]
}

function sub_7ed3deba(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7ed3deba[arg1]
}

function _rate() {
    return _rate
}

function owner() {
    return owner
}

function _weiRaised() {
    return _weiRaised
}

function hardcap() {
    return hardcap
}

function claimed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimed[arg1]
}

function _token() {
    return _tokenAddress
}

function _fallback() payable {
    revert
}

function setHardcap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    hardcap = arg1
}

function setMinPurchase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minPurchase = arg1
}

function setMaxPurchase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_00c433c7 = arg1
}

function changeWaitTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = arg1
    return 1
}

function sub_f449da38(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _contributions[address(arg1)] and _rate > -1 / _contributions[address(arg1)]:
        revert with 'NH{q', 17
    return (_contributions[address(arg1)] * _rate)
}

function checkContribution(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _contributions[address(arg1)] and _rate > -1 / _contributions[address(arg1)]:
        revert with 'NH{q', 17
    return (_contributions[address(arg1)] * _rate)
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if endICO >= block.timestamp:
        revert with 0, 'ICO should not be active'
    _rate = arg1
}

function stopICO() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if endICO <= 0:
        revert with 0, 'ICO must be active'
    if block.timestamp >= endICO:
        revert with 0, 'ICO must be active'
    if _weiRaised >= hardcap:
        revert with 0, 'ICO must be active'
    endICO = 0
}

function _forwardFunds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function startICO(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if endICO >= block.timestamp:
        revert with 0, 'ICO should not be active'
    if arg1 <= block.timestamp:
        revert with 0, 'duration should be > 0'
    endICO = arg1
    minPurchase = arg2
    sub_00c433c7 = arg3
    hardcap = arg4
    _weiRaised = 0
}

function takeTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'BEP-20 balance is 0'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function claim() {
    if not stor0 - 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if _contributions[address(msg.sender)] and _rate > -1 / _contributions[address(msg.sender)]:
        revert with 'NH{q', 17
    if _contributions[address(msg.sender)] * _rate <= 0:
        revert with 0, 'No tokens to claim'
    staticcall _tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if _contributions[address(msg.sender)] and _rate > -1 / _contributions[address(msg.sender)]:
        revert with 'NH{q', 17
    if _contributions[address(msg.sender)] * _rate > ext_call.return_data[0]:
        revert with 0, 'No enough tokens in contract'
    if block.timestamp <= stor16:
        revert with 0, 'You must wait until claim time / Launch time'
    if claimed[address(msg.sender)] > -_contributions[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    claimed[address(msg.sender)] += _contributions[address(msg.sender)]
    if _contributions[address(msg.sender)] and _rate > -1 / _contributions[address(msg.sender)]:
        revert with 'NH{q', 17
    call _tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _contributions[address(msg.sender)] * _rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    stor0 = 1
}

function buyTokens() payable {
    if not stor0 - 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if endICO <= 0:
        revert with 0, 'ICO must be active'
    if block.timestamp >= endICO:
        revert with 0, 'ICO must be active'
    if _weiRaised >= hardcap:
        revert with 0, 'ICO must be active'
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and _rate > -1 / msg.value:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: beneficiary is the zero address'
    if not msg.value:
        revert with 0, 'Presale: weiAmount is 0'
    if msg.value < minPurchase:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'have to send at least: minPurchase'
    if _weiRaised > -msg.value - 1:
        revert with 'NH{q', 17
    if _weiRaised + msg.value > hardcap:
        revert with 0, 'Exceeding hardcap'
    if _contributions[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    if _contributions[address(msg.sender)] + msg.value > sub_00c433c7:
        revert with 0, 'can't buy more than: maxPurchase'
    if _weiRaised > -msg.value - 1:
        revert with 'NH{q', 17
    _weiRaised += msg.value
    if sub_0c7d6122 > -msg.value - 1:
        revert with 'NH{q', 17
    sub_0c7d6122 += msg.value
    if purchasedTokens > (-1 * msg.value * _rate) - 1:
        revert with 'NH{q', 17
    purchasedTokens += msg.value * _rate
    if sub_7ed3deba[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    sub_7ed3deba[address(msg.sender)] += msg.value
    if _contributions[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    _contributions[address(msg.sender)] += msg.value
    emit TokensPurchased(msg.sender, msg.value, msg.value * _rate);
    stor0 = 1
}



}
