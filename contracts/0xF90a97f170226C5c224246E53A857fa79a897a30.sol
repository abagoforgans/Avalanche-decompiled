contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint256 amountToken;
uint256 _airdropDelivered;
uint8 airdropAlive;
address stor5; offset 8
address _tokenAddress;
array of address stor7;

function amountToken() payable {
    return amountToken
}

function owner() payable {
    return owner
}

function _airdropDelivered() payable {
    return _airdropDelivered
}

function airdropAlive() payable {
    return bool(airdropAlive)
}

function _token() payable {
    return _tokenAddress
}

function _fallback() payable {
    revert
}

function enableAirdropAlive() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    airdropAlive = 1
}

function disableAirdropAlive() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    airdropAlive = 0
}

function resetairdropnumber() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _airdropDelivered = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function removeblackListAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 0
}

function setclaimtokenaddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _tokenAddress = arg1
    stor5 = arg1
}

function settokenamounttobeclaimed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^9 > -1 / arg1:
        revert with 'NH{q', 17
    amountToken = 10^9 * arg1
}

function blackListAddress() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7.length < 1:
        revert with 'NH{q', 17
    if var37002 > stor7.length - 1:
    if var39001 >= stor7.length:
        revert with 'NH{q', 50
    stor2[stor7[var41001]] = 1
    if var47001 == -1:
        revert with 'NH{q', 17
    # nil
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

function claim() payable {
    if stor2[address(msg.sender)]:
        revert with 0, 'cant claim address blacklisted'
    if stor1[address(msg.sender)]:
        revert with 0, 'already claimed'
    if bool(airdropAlive) != 1:
        revert with 0, 'no airdrop alive'
    stor1[address(msg.sender)] = 1
    if _airdropDelivered > -2:
        revert with 'NH{q', 17
    _airdropDelivered++
    mem[196 len 96] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, amountToken, mem[196 len 28]
    call stor5.mem[196 len 4] with:
         gas gas_remaining wei
        args mem[200 len 64]
    require ext_code.size(_tokenAddress)
    call _tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, amountToken
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
