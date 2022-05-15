contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint256 sub_84227096;
mapping of uint8 stor4;
uint32 stor5;
address devAddress;
uint256 stor5;

function devAddress() {
    return address(devAddress)
}

function sub_84227096(?) {
    return sub_84227096
}

function owner() {
    return owner
}

function sub_ed80aa2b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
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

function sub_c54a2e7b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(devAddress) = arg1
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address)
    call address(devAddress) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
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

function claimAirdrop() {
    if stor4[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'adress already claimed the airdrop'
    if sub_84227096 >= 50:
        revert with 0, 'airdrop is ended'
    mem[100] = address(devAddress)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(devAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'There is not enough meerkats to give'
    mem[ceil32(return_data.size) + 100] = msg.sender
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Claimer doesn't own any avax apes'
    mem[0] = msg.sender
    mem[32] = 4
    stor4[msg.sender] = 1
    mem[(2 * ceil32(return_data.size)) + 96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = address(devAddress)
    staticcall stor1.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args address(devAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor5) <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor5) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _23 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor5) + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor5) + 96] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor5) + 96]) + 97 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor5) + 96]) + 1 < 0:
        revert with 0, 65
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor5) + 96]) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor5) + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 128 len ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor5) + 96])] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor5) + 128 len ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor5) + 96])]
    sub_84227096++
    if not _23:
        revert with 0, 50
    require ext_code.size(stor1)
    call stor1.0x42842e0e with:
         gas gas_remaining wei
        args address(devAddress), msg.sender, mem[(4 * ceil32(return_data.size)) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= _23:
        revert with 0, 50
    emit 0xc56629d4: uint32(stor5), Mask(224, 32, msg.sender) >> 32, msg.sender
}



}
