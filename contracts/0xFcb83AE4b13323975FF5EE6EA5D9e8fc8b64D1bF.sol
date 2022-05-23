contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, bool arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const sub_13137745(?) = 0x694738e0a438d90487b4a549b201142c1a97b556

const sub_4e2e2aa9(?) = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9

const sub_efe83dbd(?) = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3


address owner;
address sub_c0fcbda9Address;
address wantAddress;
address sub_c08eb3ebAddress;
uint256 poolId;
array of address sub_38946a8c;

function sub_38946a8c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_38946a8c.length
    return sub_38946a8c[arg1]
}

function poolId() payable {
    return poolId
}

function owner() payable {
    return owner
}

function sub_c08eb3eb(?) payable {
    return sub_c08eb3ebAddress
}

function sub_c0fcbda9(?) payable {
    return sub_c0fcbda9Address
}

function wantAddress() payable {
    return wantAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function wantLockedInHere() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function stakeTime() payable {
    require ext_code.size(0x694738e0a438d90487b4a549b201142c1a97b556)
    call 0x694738e0a438d90487b4a549b201142c1a97b556.redeem(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(this.address), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
