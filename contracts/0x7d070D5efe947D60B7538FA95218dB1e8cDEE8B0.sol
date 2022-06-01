contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
address stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[12562 len 20]
    require code.data[12582 len 32] >= 0
    require code.data[12614 len 32] > 0
    create contract with 0 wei
                    code: code.data[8412 len 4138]
    require create.new_address
    stor1 = address(create.new_address)
    stor2 = code.data[12562 len 20]
    stor6 = code.data[12646 len 32]
    stor5 = code.data[12582 len 32]
    stor4 = 10^18 * code.data[12614 len 32]
    return code.data[500 len 7912]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
uint256 cap;
uint256 minInvestment;
uint256 rate;
uint8 stor7;
array of uint256 contactInformation;

function rate() {
    return rate
}

function cap() {
    return cap
}

function contactInformation() {
    return contactInformation[0 len contactInformation.length]
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function minInvestment() {
    return minInvestment
}

function isFinalized() {
    return bool(stor7)
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setContactInformation(string arg1) {
    require msg.sender == owner
    contactInformation[] = Array(len=arg1.length, data=arg1[all])
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
    return 1
}

function hasEnded() {
    if not weiRaised:
        return weiRaised * rate >= cap
    require weiRaised
    require weiRaised * rate / weiRaised == rate
    return weiRaised * rate >= cap
}

function finalize() {
    require msg.sender == owner
    require not stor7
    if weiRaised:
        require weiRaised
        require weiRaised * rate / weiRaised == rate
    require weiRaised * rate >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.finishMinting() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor7 = 1
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    if weiRaised + msg.value:
        require weiRaised + msg.value
        require (weiRaised * rate) + (msg.value * rate) / weiRaised + msg.value == rate
    require msg.value >= minInvestment
    require (weiRaised * rate) + (msg.value * rate) <= cap
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require not uint8(stor0.field_160)
    require arg1
    require weiRaised + msg.value >= weiRaised
    if weiRaised + msg.value:
        require weiRaised + msg.value
        require (weiRaised * rate) + (msg.value * rate) / weiRaised + msg.value == rate
    require msg.value >= minInvestment
    require (weiRaised * rate) + (msg.value * rate) <= cap
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
