contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
uint8 paused;
address stor2;
address stor2; offset 8
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;
address stor10;
mapping of struct sub_ebdfbce5;
mapping of struct listings;

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
    return bool(paused)
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
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

function sub_c6b058e3(?) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65,
                    'to set bonus reflection royalty'
    stor8 = arg1
}

function setDevRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65,
                    'to set dev royalty' << 112
    stor5 = arg1
}

function setMinterRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65,
                    'to set minter royalty' << 88
    stor6 = arg1
}

function setReflectionRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65,
                    'to set reflection royalty'
    stor7 = arg1
}

function pause() {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65,
                    'to pause' << 192
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function setBonusToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65,
                    'to set bonus token address'
    stor4 = arg1
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65,
                    'to set router address' << 88
    stor3 = arg1
}

function unpause() {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65,
                    'to unpause' << 176
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function setMasterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65,
                    'to set master address' << 88
    address(stor2.field_8) = arg1
}

function cancelOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_ebdfbce5[arg1][address(msg.sender)].field_0:
        revert with 0, 'AvaxLionsMarket: offer does not exist or expired'
    if sub_ebdfbce5[arg1][address(msg.sender)].field_512 <= block.timestamp:
        revert with 0, 'AvaxLionsMarket: offer does not exist or expired'
    if paused:
        revert with 0, 'Pausable: paused'
    sub_ebdfbce5[arg1][address(msg.sender)].field_0 = 0
    sub_ebdfbce5[arg1][address(msg.sender)].field_256 = 0
    sub_ebdfbce5[arg1][address(msg.sender)].field_512 = 0
    emit 0x871dc347: arg1, msg.sender
}

function createOffer(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if sub_ebdfbce5[arg1][address(msg.sender)].field_0:
        if sub_ebdfbce5[arg1][address(msg.sender)].field_512 > block.timestamp:
            revert with 0, 'AvaxLionsMarket: offer already created'
    if paused:
        revert with 0, 'Pausable: paused'
    if arg3 <= block.timestamp:
        revert with 0, 'AvaxLionsMarket: invalid expiration'
    sub_ebdfbce5[arg1][address(msg.sender)].field_0 = 1
    sub_ebdfbce5[arg1][address(msg.sender)].field_256 = arg2
    sub_ebdfbce5[arg1][address(msg.sender)].field_512 = arg3
    emit 0x90a9ecea: arg1, arg2, arg3, msg.sender
}

function cancelListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if paused:
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
        revert with 0, 'AvaxLionsMarket: caller is not the owner of the token'
    if bool(listings[arg1].field_1024) != 1:
        revert with 0, 'AvaxLionsMarket: avax lion not for sale'
    listings[arg1].field_0 = 0
    listings[arg1].field_256 = 0
    listings[arg1].field_256 = 0
    listings[arg1].field_512 = 0
    listings[arg1].field_512 = 0
    listings[arg1].field_768 = 0
    listings[arg1].field_1024 = 0
    emit ListingCancelled(arg1);
}

function createListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if paused:
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
        revert with 0, 'AvaxLionsMarket: caller is not the owner of the token'
    require ext_code.size(address(stor2.field_8))
    staticcall address(stor2.field_8).getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'AvaxLionsMarket: market must be approved to transfer avax lion'
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
    if paused:
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
        revert with 0, 'AvaxLionsMarket: caller is not the owner of the token'
    require ext_code.size(address(stor2.field_8))
    staticcall address(stor2.field_8).getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'AvaxLionsMarket: market must be approved to transfer avax lion'
    listings[arg1].field_0 = msg.sender
    listings[arg1].field_256 = arg3
    listings[arg1].field_512 = arg1
    listings[arg1].field_768 = arg2
    listings[arg1].field_1024 = 1
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
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if bool(listings[arg1].field_1024) != 1:
        revert with 0, 'AvaxLionsMarket: avax lion not for sale'
    if listings[arg1].field_768 != msg.value:
        revert with 0, 'AvaxLionsMarket: must send correct amount to buy'
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != listings[arg1].field_0:
        revert with 0, 'AvaxLionsMarket: seller must equal current avax lion owner'
    if listings[arg1].field_256:
        if listings[arg1].field_256 != msg.sender:
            revert with 0, 'AvaxLionsMarket: listing is not available to the caller'
    mem[ceil32(return_data.size) + 260] = arg1
    require ext_code.size(address(stor2.field_8))
    staticcall address(stor2.field_8).0x7c57d947 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor5 > !stor6:
        revert with 0, 17
    if stor5 + stor6 > !stor7:
        revert with 0, 17
    if stor5 + stor6 + stor7 > !stor8:
        revert with 0, 17
    if 100 < stor5 + stor6 + stor7 + stor8:
        revert with 0, 17
    if msg.value and -stor5 + -stor6 + -stor7 + -stor8 + 100 > -1 / msg.value:
        revert with 0, 17
    call listings[arg1].field_0 with:
       value (100 * msg.value) - (stor5 * msg.value) - (stor6 * msg.value) - (stor7 * msg.value) - (stor8 * msg.value) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and stor5 > -1 / msg.value:
        revert with 0, 17
    call stor10 with:
       value msg.value * stor5 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and stor6 > -1 / msg.value:
        revert with 0, 17
    call ext_call.return_data[12 len 20] with:
       value msg.value * stor6 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and stor7 > -1 / msg.value:
        revert with 0, 17
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).reflectToOwners() with:
       value msg.value * stor7 / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor8 > 0:
        mem[(2 * ceil32(return_data.size)) + 288] = stor9
        mem[(2 * ceil32(return_data.size)) + 320] = stor4
        if msg.value and stor8 > -1 / msg.value:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 352] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 356] = 0
        idx = 0
        s = (2 * ceil32(return_data.size)) + 516
        t = (2 * ceil32(return_data.size)) + 288
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor3)
        call stor3.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value * stor8 / 100 wei
             gas gas_remaining wei
            args 0, 128, address(stor2.field_0), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 516 len 64]
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
        revert with 0, 'AvaxLionsMarket: offer does not exist or expired'
    if sub_ebdfbce5[arg1][address(arg2)].field_512 <= block.timestamp:
        revert with 0, 'AvaxLionsMarket: offer does not exist or expired'
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvaxLionsMarket: caller is not the owner of the token'
    if paused:
        revert with 0, 'Pausable: paused'
    mem[ceil32(return_data.size) + 192] = sub_ebdfbce5[arg1][address(arg2)].field_0
    mem[ceil32(return_data.size) + 224] = sub_ebdfbce5[arg1][address(arg2)].field_256
    mem[ceil32(return_data.size) + 256] = sub_ebdfbce5[arg1][address(arg2)].field_512
    mem[ceil32(return_data.size) + 292] = arg2
    mem[ceil32(return_data.size) + 324] = this.address
    mem[ceil32(return_data.size) + 356] = sub_ebdfbce5[arg1][address(arg2)].field_256
    require ext_code.size(stor9)
    call stor9.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(this.address), sub_ebdfbce5[arg1][address(arg2)].field_256
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor9)
    call stor9.0x2e1a7d4d with:
         gas gas_remaining wei
        args sub_ebdfbce5[arg1][address(arg2)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 292] = arg1
    require ext_code.size(address(stor2.field_8))
    staticcall address(stor2.field_8).0x7c57d947 with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor5 > !stor6:
        revert with 0, 17
    if stor5 + stor6 > !stor7:
        revert with 0, 17
    if stor5 + stor6 + stor7 > !stor8:
        revert with 0, 17
    if 100 < stor5 + stor6 + stor7 + stor8:
        revert with 0, 17
    if sub_ebdfbce5[arg1][address(arg2)].field_256 and -stor5 + -stor6 + -stor7 + -stor8 + 100 > -1 / sub_ebdfbce5[arg1][address(arg2)].field_256:
        revert with 0, 17
    call msg.sender with:
       value (100 * sub_ebdfbce5[arg1][address(arg2)].field_256) - (stor5 * sub_ebdfbce5[arg1][address(arg2)].field_256) - (stor6 * sub_ebdfbce5[arg1][address(arg2)].field_256) - (stor7 * sub_ebdfbce5[arg1][address(arg2)].field_256) - (stor8 * sub_ebdfbce5[arg1][address(arg2)].field_256) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ebdfbce5[arg1][address(arg2)].field_256 and stor5 > -1 / sub_ebdfbce5[arg1][address(arg2)].field_256:
        revert with 0, 17
    call stor10 with:
       value sub_ebdfbce5[arg1][address(arg2)].field_256 * stor5 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ebdfbce5[arg1][address(arg2)].field_256 and stor6 > -1 / sub_ebdfbce5[arg1][address(arg2)].field_256:
        revert with 0, 17
    call ext_call.return_data[12 len 20] with:
       value sub_ebdfbce5[arg1][address(arg2)].field_256 * stor6 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ebdfbce5[arg1][address(arg2)].field_256 and stor7 > -1 / sub_ebdfbce5[arg1][address(arg2)].field_256:
        revert with 0, 17
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).reflectToOwners() with:
       value sub_ebdfbce5[arg1][address(arg2)].field_256 * stor7 / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor8 > 0:
        mem[(4 * ceil32(return_data.size)) + 320] = stor9
        mem[(4 * ceil32(return_data.size)) + 352] = stor4
        if sub_ebdfbce5[arg1][address(arg2)].field_256 and stor8 > -1 / sub_ebdfbce5[arg1][address(arg2)].field_256:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 384] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 388] = 0
        idx = 0
        s = (4 * ceil32(return_data.size)) + 548
        t = (4 * ceil32(return_data.size)) + 320
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor3)
        call stor3.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value sub_ebdfbce5[arg1][address(arg2)].field_256 * stor8 / 100 wei
             gas gas_remaining wei
            args 0, 128, address(stor2.field_0), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 548 len 64]
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
