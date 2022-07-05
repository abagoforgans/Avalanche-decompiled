contract main {




// =====================  Runtime code  =====================


address owner;
address sub_093160d0Address;
uint256 sub_768aebde;
mapping of address sub_8e85fc2f;
address stor4;

function sub_093160d0(?) {
    return sub_093160d0Address
}

function sub_768aebde(?) {
    return sub_768aebde
}

function owner() {
    return owner
}

function sub_8e85fc2f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8e85fc2f[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_768aebde = arg1
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_093160d0Address = arg1
}

function sub_8d1722d0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8e85fc2f[address(arg1)] = address(arg2)
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function recoverERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f713dc1a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function sub_0f470b22(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if arg2 and ext_call.return_data[32] > -1 / arg2:
        revert with 0, 17
    if arg2 * ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if not sub_768aebde:
        revert with 0, 18
    return (10^10 * arg2 * ext_call.return_data[32] / sub_768aebde)
}

function sub_d8fd8ce1(?) payable {
    require ext_code.size(sub_093160d0Address)
    staticcall sub_093160d0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    staticcall stor4.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if msg.value and ext_call.return_data[32] > -1 / msg.value:
        revert with 0, 17
    if msg.value * ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if not sub_768aebde:
        revert with 0, 18
    if sub_768aebde <= 0:
        revert with 0, 'Swap fee is not set'
    if 10^10 * msg.value * ext_call.return_data[32] / sub_768aebde > ext_call.return_data[0]:
        revert with 0, 'Not enough tokens remaining to perform swap'
    require ext_code.size(sub_093160d0Address)
    call sub_093160d0Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^10 * msg.value * ext_call.return_data[32] / sub_768aebde
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a9ba400c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not sub_8e85fc2f[address(arg1)]:
        revert with 0, 'The Altcoin is not open'
    require ext_code.size(sub_093160d0Address)
    staticcall sub_093160d0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if arg2 and ext_call.return_data[32] > -1 / arg2:
        revert with 0, 17
    if arg2 * ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if not sub_768aebde:
        revert with 0, 18
    if sub_768aebde <= 0:
        revert with 0, 'Swap fee is not set'
    if 10^10 * arg2 * ext_call.return_data[32] / sub_768aebde > ext_call.return_data[0]:
        revert with 0, 'Not enough tokens remaining to perform swap'
    require ext_code.size(sub_8e85fc2f[address(arg1)])
    call sub_8e85fc2f[address(arg1)].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_093160d0Address)
    call sub_093160d0Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^10 * arg2 * ext_call.return_data[32] / sub_768aebde
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
