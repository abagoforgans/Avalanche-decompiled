contract main {




// =====================  Runtime code  =====================


const MAX_MINTABLE = 100

const MAX_PER_CLAIM = 10

const MINT_PRICE = 4000 * 10^18


address owner;
array of uint256 stor1;
mapping of uint256 sub_98bf4241;
address stor3;
uint256 count;
uint8 canClaim;
uint256 stor5;
mapping of uint8 stor6;
address erc20TokenAddress;
address sub_3d1570b7Address;

function count() {
    return count
}

function sub_3d1570b7(?) {
    return sub_3d1570b7Address
}

function canClaim() {
    return bool(uint8(canClaim))
}

function erc20Token() {
    return erc20TokenAddress
}

function owner() {
    return owner
}

function sub_98bf4241(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_98bf4241[address(arg1)]
}

function sub_ad5f2210(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor6[address(arg1)])
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function toggleClaimability() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor5) = not uint8(canClaim) or Mask(248, 8, uint256(stor5))
}

function removeWhiteListedUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_98bf4241[address(arg1)] = 0
}

function getContractTokenBalance() {
    require ext_code.size(erc20TokenAddress)
    staticcall erc20TokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function GetAllowance() {
    require ext_code.size(erc20TokenAddress)
    staticcall erc20TokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function withdraw() {
    if bool(stor6[address(msg.sender)]) != 1:
        revert with 0, 'Your are not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Nothing to withdraw'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_975d2d8c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        stor1.length++
        mem[0] = 1
        stor1[stor1.length] = cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_accc1d5e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_d9ac763b(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        sub_98bf4241[address(cd[((32 * idx) + cd[4] + 36)])] = cd[36]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_fa0c0402(?) {
    if bool(stor6[address(msg.sender)]) != 1:
        revert with 0, 'Your are not the owner'
    require ext_code.size(erc20TokenAddress)
    staticcall erc20TokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to withdraw'
    require ext_code.size(erc20TokenAddress)
    staticcall erc20TokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20TokenAddress)
    call erc20TokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buyNFT(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(canClaim):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'It's not possible to claim just yet.'
    if count > !arg1:
        revert with 0, 17
    if count + arg1 > 100:
        revert with 0, 'Not enough left to mint.'
    if arg1 <= 0:
        revert with 0, 'Number need to be higher than 0.'
    if arg1 > 10:
        revert with 0, 'Max per claim is 10.'
    if not sub_98bf4241[msg.sender]:
        revert with 0, 'You are not white-listed.'
    if arg1 > sub_98bf4241[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are Exceeding your mint limit.'
    if arg1 and 4000 * 10^18 > -1 / arg1:
        revert with 0, 17
    require ext_code.size(erc20TokenAddress)
    staticcall erc20TokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 4000 * 10^18 * arg1:
        revert with 0, 'You dont have enough KLO'
    if arg1 and 4000 * 10^18 > -1 / arg1:
        revert with 0, 17
    require ext_code.size(erc20TokenAddress)
    call erc20TokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 4000 * 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_98bf4241[msg.sender] < arg1:
        revert with 0, 17
    sub_98bf4241[msg.sender] -= arg1
    idx = 0
    while idx < arg1:
        if count >= stor1.length:
            revert with 0, 50
        mem[0] = 1
        mem[(2 * ceil32(return_data.size)) + 96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = stor3
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = stor1[stor4]
        require ext_code.size(sub_3d1570b7Address)
        call sub_3d1570b7Address.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args stor3, msg.sender, stor1[stor4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if count > -2:
            revert with 0, 17
        count++
        emit Claim(count);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
