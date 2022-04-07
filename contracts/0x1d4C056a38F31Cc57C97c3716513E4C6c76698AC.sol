contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
uint8 stor2;
address stor2; offset 8
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of struct listing;

function getListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    return listing[arg1].field_0, 
           listing[arg1].field_256,
           listing[arg1].field_512,
           listing[arg1].field_768,
           bool(listing[arg1].field_1024)
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function reflectionBalance() {
    return reflectionBalance
}

function totalDividend() {
    return totalDividend
}

function paused() {
    return bool(uint8(stor2.field_0))
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

function _fallback() payable {
    revert
}

function setDevRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0xfe41766178417065733a206d75737420686176652061646d696e20726f6c6520,
                    'o set royalty' << 152
    stor4 = arg1
}

function setMinterRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0xfe41766178417065733a206d75737420686176652061646d696e20726f6c6520,
                    'o set royalty' << 152
    stor5 = arg1
}

function setReflectionRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0xfe41766178417065733a206d75737420686176652061646d696e20726f6c6520,
                    'o set royalty' << 152
    stor6 = arg1
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

function pause() {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe41766178417065733a206d75737420686176652061646d696e20726f6c6520,
                    'o pause' << 200
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function setMasterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe41766178417065733a206d75737420686176652061646d696e20726f6c6520,
                    'o set master address' << 96
    address(stor2.field_8) = arg1
}

function unpause() {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe41766178417065733a206d75737420686176652061646d696e20726f6c6520,
                    'o unpause' << 184
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
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
        revert with 0, 'AvaxApesMarket: caller is not the owner of the token'
    if bool(listing[arg1].field_1024) != 1:
        revert with 0, 'AvaxApesMarket: avax ape not for sale'
    listing[arg1].field_0 = 0
    listing[arg1].field_256 = 0
    listing[arg1].field_256 = 0
    listing[arg1].field_512 = 0
    listing[arg1].field_512 = 0
    listing[arg1].field_768 = 0
    listing[arg1].field_1024 = 0
    emit ListingCancelled(arg1);
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
        revert with 0, 'AvaxApesMarket: caller is not the owner of the token'
    require ext_code.size(address(stor2.field_8))
    staticcall address(stor2.field_8).getApproved(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'AvaxApesMarket: market must be approved to transfer avax ape'
    listing[arg1].field_0 = msg.sender
    listing[arg1].field_256 = 0
    listing[arg1].field_512 = 0
    listing[arg1].field_512 = arg1
    listing[arg1].field_768 = arg2
    listing[arg1].field_1024 = 1
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
        revert with 0, 'AvaxApesMarket: caller is not the owner of the token'
    require ext_code.size(address(stor2.field_8))
    staticcall address(stor2.field_8).getApproved(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'AvaxApesMarket: market must be approved to transfer avax ape'
    listing[arg1].field_0 = msg.sender
    listing[arg1].field_256 = arg3
    listing[arg1].field_512 = arg1
    listing[arg1].field_768 = arg2
    listing[arg1].field_1024 = 1
    emit ListingCreated(arg2, msg.sender, arg3, arg1);
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
    if bool(listing[arg1].field_1024) != 1:
        revert with 0, 'AvaxApesMarket: avax ape not for sale'
    if listing[arg1].field_768 != msg.value:
        revert with 0, 'AvaxApesMarket: must send correct amount to buy'
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != listing[arg1].field_0:
        revert with 0, 'AvaxApesMarket: seller must equal current avax ape owner'
    if listing[arg1].field_256:
        if listing[arg1].field_256 != msg.sender:
            revert with 0, 'AvaxApesMarket: listing is not available to the caller'
    require ext_code.size(address(stor2.field_8))
    staticcall address(stor2.field_8).0x7c57d947 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor4 > !stor5:
        revert with 0, 17
    if stor4 + stor5 > !stor6:
        revert with 0, 17
    if 100 < stor4 + stor5 + stor6:
        revert with 0, 17
    if msg.value and -stor4 + -stor5 + -stor6 + 100 > -1 / msg.value:
        revert with 0, 17
    call listing[arg1].field_0 with:
       value (100 * msg.value) - (stor4 * msg.value) - (stor5 * msg.value) - (stor6 * msg.value) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and stor4 > -1 / msg.value:
        revert with 0, 17
    call stor7 with:
       value msg.value * stor4 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and stor5 > -1 / msg.value:
        revert with 0, 17
    call ext_call.return_data[12 len 20] with:
       value msg.value * stor5 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and stor6 > -1 / msg.value:
        revert with 0, 17
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).reflectToOwners() with:
       value msg.value * stor6 / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x23b872dd with:
         gas gas_remaining wei
        args listing[arg1].field_0, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    listing[arg1].field_0 = 0
    listing[arg1].field_256 = 0
    listing[arg1].field_256 = 0
    listing[arg1].field_512 = 0
    listing[arg1].field_512 = 0
    listing[arg1].field_768 = 0
    listing[arg1].field_1024 = 0
    emit Sale(msg.value, listing[arg1].field_0, msg.sender, arg1);
}



}
