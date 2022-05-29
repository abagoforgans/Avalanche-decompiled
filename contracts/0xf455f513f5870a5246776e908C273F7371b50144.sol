contract main {




// =====================  Runtime code  =====================


#
#  - release()
#
const releasePeriod = (720 * 24 * 3600)

const totalAllocation = 100000000 * 10^18

const sub_83ab0ac6(?) = 10000000 * 10^18


address owner;
address tokenAddress;
uint256 remainingAmount;
uint256 sub_fe97479c;
uint256 sub_eff548b8;

function owner() payable {
    return owner
}

function remainingAmount() payable {
    return remainingAmount
}

function sub_eff548b8(?) payable {
    return sub_eff548b8
}

function token() payable {
    return tokenAddress
}

function sub_fe97479c(?) payable {
    return sub_fe97479c
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

function balance() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
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
