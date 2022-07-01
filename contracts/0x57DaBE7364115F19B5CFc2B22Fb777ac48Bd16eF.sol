contract main {




// =====================  Runtime code  =====================


const sub_889646ea(?) = 300000 * 10^18


address owner;
uint256 claimedAmount;
address stakingAddress;
mapping of uint8 stor3;

function staking() payable {
    return stakingAddress
}

function sub_6fef839e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function owner() payable {
    return owner
}

function claimedAmount() payable {
    return claimedAmount
}

function _fallback() payable {
    revert
}

function claimableBalance() payable {
    if 300000 * 10^18 < claimedAmount:
        revert with 0, 17
    return (-claimedAmount + 300000 * 10^18)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setStaking(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stakingAddress:
        revert with 0, 'Can redefine staking'
    stakingAddress = arg1
}

function setPool(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = uint8(arg2)
    emit 0xbcdb576d: address(arg1), arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor3[msg.sender]:
        revert with 0, 'Only Airdrop pools can request'
    if not arg1:
        revert with 0, 'Invalid address'
    if arg2 <= 0:
        revert with 0, 'invalid amount'
    if 300000 * 10^18 < claimedAmount:
        revert with 0, 17
    if arg2 > -claimedAmount + 300000 * 10^18:
        revert with 0, '> balance'
    if claimedAmount > !arg2:
        revert with 0, 17
    claimedAmount += arg2
    require ext_code.size(stakingAddress)
    call stakingAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
