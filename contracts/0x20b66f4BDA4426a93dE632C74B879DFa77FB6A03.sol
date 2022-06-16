contract main {




// =====================  Runtime code  =====================


address owner;
address sub_14f91ea4Address;
address sub_bf31f6f0Address;
address sub_99552ba6Address;
address feeAddress;
uint256 sub_09d52ae3;
mapping of struct records;
mapping of uint256 sub_a1ddcb71;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;

function sub_09d52ae3(?) payable {
    return sub_09d52ae3
}

function sub_14f91ea4(?) payable {
    return sub_14f91ea4Address
}

function feeAddress() payable {
    return feeAddress
}

function records(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return records[arg1][arg2].field_0, records[arg1][arg2].field_256, records[arg1][arg2].field_512
}

function owner() payable {
    return owner
}

function sub_99552ba6(?) payable {
    return sub_99552ba6Address
}

function sub_a1ddcb71(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a1ddcb71[arg1]
}

function sub_bf31f6f0(?) payable {
    return sub_bf31f6f0Address
}

function _fallback() payable {
    revert
}

function tiers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return stor8[arg1], stor9[arg1], stor10[arg1]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_649e4209(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_09d52ae3 = arg1
}

function updateFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAddress = arg1
}

function updateTier(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 5:
        revert with 0, 50
    stor8[arg1] = arg2
    stor9[arg1] = arg3
    stor10[arg1] = arg4
}

function sub_36d71a8a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The new contract address must not be 0'
    sub_99552ba6Address = address(arg1)
}

function sub_6ba6542b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The new contract address must not be 0'
    sub_bf31f6f0Address = address(arg1)
}

function sub_a37981cc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The new contract address must not be 0'
    sub_14f91ea4Address = address(arg1)
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not records[msg.sender][arg1].field_512:
        revert with 0, 'Record does not exist'
    require ext_code.size(sub_99552ba6Address)
    staticcall sub_99552ba6Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < records[msg.sender][arg1].field_512:
        revert with 0, 'Not enough worker tokens'
    records[address(msg.sender)][arg1].field_0 = 0
    records[address(msg.sender)][arg1].field_256 = 0
    records[address(msg.sender)][arg1].field_512 = 0
    if not sub_a1ddcb71[address(msg.sender)]:
        revert with 0, 17
    sub_a1ddcb71[address(msg.sender)]--
    if records[msg.sender][arg1].field_256 and sub_09d52ae3 > -1 / records[msg.sender][arg1].field_256:
        revert with 0, 17
    if records[msg.sender][arg1].field_256 < records[msg.sender][arg1].field_256 * sub_09d52ae3 / 10^6:
        revert with 0, 17
    require ext_code.size(sub_bf31f6f0Address)
    call sub_bf31f6f0Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, records[msg.sender][arg1].field_256 - (records[msg.sender][arg1].field_256 * sub_09d52ae3 / 10^6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_bf31f6f0Address)
    call sub_bf31f6f0Address.0xa9059cbb with:
         gas gas_remaining wei
        args feeAddress, records[msg.sender][arg1].field_256 * sub_09d52ae3 / 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_14f91ea4Address)
    call sub_14f91ea4Address.0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, records[msg.sender][arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_99552ba6Address)
    call sub_99552ba6Address.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, records[msg.sender][arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Unstake(msg.sender, arg1, records[msg.sender][arg1].field_256 * sub_09d52ae3 / 10^6);
}

function stake(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 >= 5:
        revert with 0, 'Tier does not exist'
    if stor10[arg3] <= 0:
        revert with 0, 'Tier is not ready'
    require ext_code.size(sub_14f91ea4Address)
    staticcall sub_14f91ea4Address.getCharacter(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_code.size(sub_14f91ea4Address)
    staticcall sub_14f91ea4Address.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not the owner'
    require ext_code.size(sub_bf31f6f0Address)
    staticcall sub_bf31f6f0Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Not enough Hon tokens'
    if arg3 >= 5:
        revert with 0, 50
    if stor9[arg3] != arg1:
        revert with 0, 'Hon amount does not match with tier'
    if arg3 >= 5:
        revert with 0, 50
    if stor8[arg3] != uint8(ext_call.return_data[32]):
        revert with 0, 'Hro rarity does not match with tier'
    if arg3 >= 5:
        revert with 0, 50
    records[address(msg.sender)][arg2].field_0 = arg2
    records[address(msg.sender)][arg2].field_256 = arg1
    records[address(msg.sender)][arg2].field_512 = stor10[arg3]
    if sub_a1ddcb71[address(msg.sender)] == -1:
        revert with 0, 17
    sub_a1ddcb71[address(msg.sender)]++
    require ext_code.size(sub_bf31f6f0Address)
    call sub_bf31f6f0Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_14f91ea4Address)
    call sub_14f91ea4Address.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 >= 5:
        revert with 0, 50
    require ext_code.size(sub_99552ba6Address)
    call sub_99552ba6Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, stor10[arg3]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 >= 5:
        revert with 0, 50
    emit Stake(msg.sender, arg3, arg1, arg2, stor10[arg3]);
}



}
