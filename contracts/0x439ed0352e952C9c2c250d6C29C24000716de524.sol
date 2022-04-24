contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
uint8 stor2;
address stor2; offset 8
address stor3;
address stor4;
address wrapperAddress;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;
mapping of struct listings;
mapping of struct sub_ebdfbce5;

function getListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    return listings[arg1].field_0, 
           listings[arg1].field_256,
           listings[arg1].field_512,
           listings[arg1].field_768,
           bool(listings[arg1].field_1024)
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function paused() {
    return bool(uint8(stor2.field_0))
}

function wrapperAddress() {
    return wrapperAddress
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function listings(uint256 arg1) {
    require calldata.size - 4 >= 32
    return listings[arg1].field_0, 
           listings[arg1].field_256,
           listings[arg1].field_512,
           listings[arg1].field_768,
           bool(listings[arg1].field_1024)
}

function sub_ebdfbce5(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_ebdfbce5[arg1][arg2].field_0, sub_ebdfbce5[arg1][arg2].field_256, sub_ebdfbce5[arg1][arg2].field_512
}

function _fallback() payable {
    revert
}

function sub_45aaa396(?) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe4272696467696e6742656172733a206d75737420686176652061646d696e20,
                    'ole to set royalty' << 112
    stor8 = arg1
}

function setDevRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe4272696467696e6742656172733a206d75737420686176652061646d696e20,
                    'ole to set royalty' << 112
    stor6 = arg1
}

function setReflectionRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe4272696467696e6742656172733a206d75737420686176652061646d696e20,
                    'ole to set royalty' << 112
    stor7 = arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setMasterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe4272696467696e6742656172733a206d75737420686176652061646d696e20,
                    'ole to set master address'
    address(stor2.field_8) = arg1
}

function pause() {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe4272696467696e6742656172733a206d75737420686176652061646d696e20,
                    'ole to pause' << 160
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe4272696467696e6742656172733a206d75737420686176652061646d696e20,
                    'ole to unpause' << 144
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
}

function cancelOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_ebdfbce5[arg1][address(msg.sender)].field_0:
        revert with 0, 'BridgingBearsMarket: offer does not exist or expired'
    if sub_ebdfbce5[arg1][address(msg.sender)].field_512 <= block.timestamp:
        revert with 0, 'BridgingBearsMarket: offer does not exist or expired'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    sub_ebdfbce5[arg1][msg.sender].field_0 = 0
    sub_ebdfbce5[arg1][msg.sender].field_256 = 0
    sub_ebdfbce5[arg1][msg.sender].field_512 = 0
    emit 0x871dc347: arg1, msg.sender
}

function createOffer(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if sub_ebdfbce5[arg1][address(msg.sender)].field_0:
        if sub_ebdfbce5[arg1][address(msg.sender)].field_512 > block.timestamp:
            revert with 0, 'BridgingBearsMarket: offer already created'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if arg3 <= block.timestamp:
        revert with 0, 'invalid expiration'
    sub_ebdfbce5[arg1][msg.sender].field_0 = 1
    sub_ebdfbce5[arg1][msg.sender].field_256 = arg2
    sub_ebdfbce5[arg1][msg.sender].field_512 = arg3
    emit 0x90a9ecea: arg1, arg2, arg3, msg.sender
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function cancelListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'BridgingBearsMarket: caller is not the owner of the token'
    if bool(listings[arg1].field_1024) != 1:
        revert with 0, 'BridgingBearsMarket: bridging bear not for sale'
    listings[arg1].field_0 = 0
    listings[arg1].field_256 = 0
    listings[arg1].field_256 = 0
    listings[arg1].field_512 = 0
    listings[arg1].field_512 = 0
    listings[arg1].field_768 = 0
    listings[arg1].field_1024 = 0
    emit ListingCancelled(arg1);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
        if 1 > !(roleMember[arg1][1][address(arg2)].field_0 - 1):
            revert with 0, 17
        roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function createListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'BridgingBearsMarket: caller is not the owner of the token'
    require ext_code.size(address(stor2.field_8))
    staticcall address(stor2.field_8).getApproved(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'BridgingBearsMarket: market must be approved to transfer bridging bear'
    listings[arg1].field_0 = msg.sender
    listings[arg1].field_256 = 0
    listings[arg1].field_512 = 0
    listings[arg1].field_512 = arg1
    listings[arg1].field_768 = arg2
    listings[arg1].field_1024 = 1
    emit ListingCreated(arg2, msg.sender, 0, arg1);
}

function createPrivateListing(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'BridgingBearsMarket: caller is not the owner of the token'
    require ext_code.size(address(stor2.field_8))
    staticcall address(stor2.field_8).getApproved(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'BridgingBearsMarket: market must be approved to transfer bridging bear'
    listings[arg1].field_0 = msg.sender
    listings[arg1].field_256 = arg3
    listings[arg1].field_512 = arg1
    listings[arg1].field_768 = arg2
    listings[arg1].field_1024 = 1
    emit ListingCreated(arg2, msg.sender, arg3, arg1);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
        if 1 > !(roleMember[arg1][1][address(arg2)].field_0 - 1):
            revert with 0, 17
        roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if bool(listings[arg1].field_1024) != 1:
        revert with 0, 'BridgingBearsMarket: bridging bear not for sale'
    if listings[arg1].field_768 != msg.value:
        revert with 0, 'BridgingBearsMarket: must send correct amount to buy'
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != listings[arg1].field_0:
        revert with 0, 'BridgingBearsMarket: seller must equal current bridging bear owner'
    if listings[arg1].field_256:
        if listings[arg1].field_256 != msg.sender:
            revert with 0, 'BridgingBearsMarket: listing is not available to the caller'
    if stor6 > !stor8:
        revert with 0, 17
    if stor6 + stor8 > !stor7:
        revert with 0, 17
    if 1000 < stor6 + stor8 + stor7:
        revert with 0, 17
    if msg.value and -stor6 + -stor8 + -stor7 + 1000 > -1 / msg.value:
        revert with 0, 17
    call listings[arg1].field_0 with:
       value (1000 * msg.value) - (stor6 * msg.value) - (stor8 * msg.value) - (stor7 * msg.value) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and stor6 > -1 / msg.value:
        revert with 0, 17
    call stor9 with:
       value msg.value * stor6 / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and stor8 > -1 / msg.value:
        revert with 0, 17
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).reflectToOwners() with:
       value msg.value * stor8 / 1000 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and stor7 > -1 / msg.value:
        revert with 0, 17
    require ext_code.size(stor3)
    call stor3.reflectToOwners() with:
       value msg.value * stor7 / 1000 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x23b872dd with:
         gas gas_remaining wei
        args listings[arg1].field_0, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    listings[arg1].field_0 = 0
    listings[arg1].field_256 = 0
    listings[arg1].field_256 = 0
    listings[arg1].field_512 = 0
    listings[arg1].field_512 = 0
    listings[arg1].field_768 = 0
    listings[arg1].field_1024 = 0
    emit Sale(msg.value, listings[arg1].field_0, msg.sender, arg1);
}

function acceptOffer(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not sub_ebdfbce5[arg1][address(arg2)].field_0:
        revert with 0, 'BridgingBearsMarket: offer does not exist or expired'
    if sub_ebdfbce5[arg1][address(arg2)].field_512 <= block.timestamp:
        revert with 0, 'BridgingBearsMarket: offer does not exist or expired'
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'BridgingBearsMarket: caller is not the owner of the token'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    require ext_code.size(wrapperAddress)
    call wrapperAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), this.address, sub_ebdfbce5[arg1][address(arg2)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args sub_ebdfbce5[arg1][address(arg2)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor6 > !stor8:
        revert with 0, 17
    if stor6 + stor8 > !stor7:
        revert with 0, 17
    if 1000 < stor6 + stor8 + stor7:
        revert with 0, 17
    if sub_ebdfbce5[arg1][address(arg2)].field_256 and -stor6 + -stor8 + -stor7 + 1000 > -1 / sub_ebdfbce5[arg1][address(arg2)].field_256:
        revert with 0, 17
    call msg.sender with:
       value (1000 * sub_ebdfbce5[arg1][address(arg2)].field_256) - (stor6 * sub_ebdfbce5[arg1][address(arg2)].field_256) - (stor8 * sub_ebdfbce5[arg1][address(arg2)].field_256) - (stor7 * sub_ebdfbce5[arg1][address(arg2)].field_256) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ebdfbce5[arg1][address(arg2)].field_256 and stor6 > -1 / sub_ebdfbce5[arg1][address(arg2)].field_256:
        revert with 0, 17
    call stor9 with:
       value sub_ebdfbce5[arg1][address(arg2)].field_256 * stor6 / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ebdfbce5[arg1][address(arg2)].field_256 and stor8 > -1 / sub_ebdfbce5[arg1][address(arg2)].field_256:
        revert with 0, 17
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).reflectToOwners() with:
       value sub_ebdfbce5[arg1][address(arg2)].field_256 * stor8 / 1000 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ebdfbce5[arg1][address(arg2)].field_256 and stor7 > -1 / sub_ebdfbce5[arg1][address(arg2)].field_256:
        revert with 0, 17
    require ext_code.size(stor3)
    call stor3.reflectToOwners() with:
       value sub_ebdfbce5[arg1][address(arg2)].field_256 * stor7 / 1000 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    listings[arg1].field_0 = 0
    listings[arg1].field_256 = 0
    listings[arg1].field_256 = 0
    listings[arg1].field_512 = 0
    listings[arg1].field_512 = 0
    listings[arg1].field_768 = 0
    listings[arg1].field_1024 = 0
    sub_ebdfbce5[arg1][address(arg2)].field_0 = 0
    sub_ebdfbce5[arg1][address(arg2)].field_256 = 0
    sub_ebdfbce5[arg1][address(arg2)].field_512 = 0
    emit Sale(sub_ebdfbce5[arg1][address(arg2)].field_256, msg.sender, arg2, arg1);
    emit 0x871dc347: arg1, arg2
}



}
