contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_27cc9ce8;
mapping of uint256 sub_fcd710b4;
uint256 sub_7d684d47;
uint256 totalReflections;
address tokenAddress;
address presaleAddress;
address airdropAddress;
address sub_9bb5cd3fAddress;
address sub_096c76e0Address;

function sub_096c76e0(?) payable {
    return sub_096c76e0Address
}

function sub_27cc9ce8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_27cc9ce8[arg1].field_0, sub_27cc9ce8[arg1].field_256
}

function airdrop() payable {
    return airdropAddress
}

function sub_7d684d47(?) payable {
    return sub_7d684d47
}

function owner() payable {
    return owner
}

function sub_9bb5cd3f(?) payable {
    return sub_9bb5cd3fAddress
}

function getTotalReflections() payable {
    return totalReflections
}

function token() payable {
    return tokenAddress
}

function sub_fcd710b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fcd710b4[arg1]
}

function presale() payable {
    return presaleAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updatePresale(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    presaleAddress = arg1
}

function updateAirdrop(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    airdropAddress = arg1
}

function sub_38a93bae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_9bb5cd3fAddress = address(arg1)
}

function updateToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    tokenAddress = arg1
    sub_096c76e0Address = arg1
}

function sub_e1d378c3(?) payable {
    require ext_code.size(sub_096c76e0Address)
    staticcall sub_096c76e0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_695d69b3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_7d684d47 < sub_27cc9ce8[address(arg1)].field_0:
        revert with 0, 17
    if sub_7d684d47 - sub_27cc9ce8[address(arg1)].field_0 and sub_27cc9ce8[address(arg1)].field_256 > -1 / sub_7d684d47 - sub_27cc9ce8[address(arg1)].field_0:
        revert with 0, 17
    if sub_fcd710b4[address(arg1)] > !((sub_7d684d47 * sub_27cc9ce8[address(arg1)].field_256) - (sub_27cc9ce8[address(arg1)].field_0 * sub_27cc9ce8[address(arg1)].field_256)):
        revert with 0, 17
    return (sub_fcd710b4[address(arg1)] + (sub_7d684d47 * sub_27cc9ce8[address(arg1)].field_256) - (sub_27cc9ce8[address(arg1)].field_0 * sub_27cc9ce8[address(arg1)].field_256))
}

function sub_982540c9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if tokenAddress != msg.sender:
            if presaleAddress != msg.sender:
                if airdropAddress != msg.sender:
                    revert with 0, 'NOT_GUARD'
    if sub_7d684d47 < sub_27cc9ce8[address(arg1)].field_0:
        revert with 0, 17
    if sub_7d684d47 - sub_27cc9ce8[address(arg1)].field_0 and sub_27cc9ce8[address(arg1)].field_256 > -1 / sub_7d684d47 - sub_27cc9ce8[address(arg1)].field_0:
        revert with 0, 17
    if sub_fcd710b4[address(arg1)] > !((sub_7d684d47 * sub_27cc9ce8[address(arg1)].field_256) - (sub_27cc9ce8[address(arg1)].field_0 * sub_27cc9ce8[address(arg1)].field_256)):
        revert with 0, 17
    sub_fcd710b4[address(arg1)] = sub_fcd710b4[address(arg1)] + (sub_7d684d47 * sub_27cc9ce8[address(arg1)].field_256) - (sub_27cc9ce8[address(arg1)].field_0 * sub_27cc9ce8[address(arg1)].field_256)
    if sub_27cc9ce8[address(arg1)].field_256 > -2:
        revert with 0, 17
    sub_27cc9ce8[address(arg1)].field_256++
    sub_27cc9ce8[address(arg1)].field_0 = sub_7d684d47
}

function sub_b0492003(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if tokenAddress != msg.sender:
            if presaleAddress != msg.sender:
                if airdropAddress != msg.sender:
                    revert with 0, 'NOT_GUARD'
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.0x63584ecd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        sub_7d684d47 = arg1
    else:
        require ext_code.size(sub_9bb5cd3fAddress)
        staticcall sub_9bb5cd3fAddress.0x63584ecd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 18
        if sub_7d684d47 > !(arg1 / ext_call.return_data[0]):
            revert with 0, 17
        sub_7d684d47 += arg1 / ext_call.return_data[0]
    if totalReflections > !arg1:
        revert with 0, 17
    totalReflections += arg1
}

function claimReflections() payable {
    require ext_code.size(sub_9bb5cd3fAddress)
    staticcall sub_9bb5cd3fAddress.isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_NODE_OWNER'
    if sub_7d684d47 < sub_27cc9ce8[address(msg.sender)].field_0:
        revert with 0, 17
    if sub_7d684d47 - sub_27cc9ce8[address(msg.sender)].field_0 and sub_27cc9ce8[address(msg.sender)].field_256 > -1 / sub_7d684d47 - sub_27cc9ce8[address(msg.sender)].field_0:
        revert with 0, 17
    if sub_fcd710b4[address(msg.sender)] > !((sub_7d684d47 * sub_27cc9ce8[address(msg.sender)].field_256) - (sub_27cc9ce8[address(msg.sender)].field_0 * sub_27cc9ce8[address(msg.sender)].field_256)):
        revert with 0, 17
    sub_fcd710b4[address(msg.sender)] = sub_fcd710b4[address(msg.sender)] + (sub_7d684d47 * sub_27cc9ce8[address(msg.sender)].field_256) - (sub_27cc9ce8[address(msg.sender)].field_0 * sub_27cc9ce8[address(msg.sender)].field_256)
    require ext_code.size(sub_096c76e0Address)
    call sub_096c76e0Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_fcd710b4[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_fcd710b4[msg.sender] = 0
    sub_27cc9ce8[msg.sender].field_0 = sub_7d684d47
}



}
