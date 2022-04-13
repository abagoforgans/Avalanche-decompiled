contract main {




// =====================  Runtime code  =====================


const name = 'Pugs Puggy Sale', 0


uint8 saleLive; offset 160
uint128 stor0; offset 160
address owner;
address nftAddress;

function nftAddress() {
    return nftAddress
}

function owner() {
    return owner
}

function saleLive() {
    return bool(saleLive)
}

function _fallback() payable {
    revert
}

function toggleSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor0 = Mask(96, 0, not bool(saleLive))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function canMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > 50:
        return 0
    if not arg1:
        return 0
    require ext_code.size(nftAddress)
    staticcall nftAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 5000 < arg1:
        revert with 'NH{q', 17
    return ext_call.return_data[0] <= -arg1 + 5000
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function mint(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not saleLive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PugsPuggyFactory: Sale is not live'
    if arg1 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PugsPuggyFactory: Unable to mint token'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PugsPuggyFactory: Unable to mint token'
    require ext_code.size(nftAddress)
    staticcall nftAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 5000 < arg1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] > -arg1 + 5000:
        revert with 0, 'PugsPuggyFactory: Unable to mint token'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if msg.value < 10^18 * arg1:
        revert with 0, 'PugsPuggyFactory: Insufficient funds'
    idx = 0
    while idx < arg1:
        mem[ceil32(return_data.size) + 96] = 0x755edd1700000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = arg2
        require ext_code.size(nftAddress)
        call nftAddress.0x755edd17 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
