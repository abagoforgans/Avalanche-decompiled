contract main {




// =====================  Runtime code  =====================


address tokenOwner;
address withdrawAddress;
address signerAddress;
uint8 stage; offset 160
uint128 stor3; offset 160
address stor3;
mapping of uint256 currentValue;

function withdrawAddress() {
    return withdrawAddress
}

function signer() {
    return signerAddress
}

function tokenOwner() {
    return tokenOwner
}

function stage() {
    if stage >= 3:
        revert with 'NH{q', 33
    return stage
}

function currentValue(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return currentValue[arg1]
}

function _fallback() payable {
    revert
}

function setStage(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    if tokenOwner != msg.sender:
        revert with 0, 'Access denied'
    if arg1 > 2:
        revert with 'NH{q', 33
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
}

function withdrawAll() {
    if tokenOwner != msg.sender:
        revert with 0, 'Access denied'
    call withdrawAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Widthdraw failed'
}

function transferSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenOwner != msg.sender:
        revert with 0, 'Access denied'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    signerAddress = arg1
}

function swap(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Address is contract'
    mem[272 len arg1.length] = arg1[all]
    mem[arg1.length + 272] = 0
    if arg1.length == 65:
        if mem[304] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg1.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[304]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[304]) >> 255) + 27) != 27:
        if uint8((bool(mem[304]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender)), (bool(mem[304]) >> 255) + 27 << 248, mem[272], uint255(mem[304])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if signerAddress != address(signer):
        revert with 0, 'Invalid signature'
    if msg.value / 13245033113 * 10^6 and 100 * 10^6 > -1 / msg.value / 13245033113 * 10^6:
        revert with 'NH{q', 17
    require ext_code.size(address(stor3.field_0))
    staticcall address(stor3.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 100 * 10^6 * msg.value / 13245033113 * 10^6 > ext_call.return_data[0]:
        revert with 0, 'Not enough coins on contract'
    if stage > 2:
        revert with 'NH{q', 33
    if stage == 1:
        if currentValue[address(msg.sender)] > (-100 * 10^6 * msg.value / 13245033113 * 10^6) - 1:
            revert with 'NH{q', 17
        if currentValue[address(msg.sender)] + (100 * 10^6 * msg.value / 13245033113 * 10^6) > 10^11:
            revert with 0, 'Max supply on this stage'
    require ext_code.size(address(stor3.field_0))
    call address(stor3.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 100 * 10^6 * msg.value / 13245033113 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if currentValue[address(msg.sender)] > (-100 * 10^6 * msg.value / 13245033113 * 10^6) - 1:
        revert with 'NH{q', 17
    currentValue[address(msg.sender)] += 100 * 10^6 * msg.value / 13245033113 * 10^6
}



}
