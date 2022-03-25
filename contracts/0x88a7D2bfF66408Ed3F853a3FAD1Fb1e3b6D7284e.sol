contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address nifAddress;
address feeAddress;
uint256 sub_e017cae2;
array of uint256 wildcards;
uint8 stor6; offset 160
address wildcardErc1155Address;
uint8 stor7; offset 160
address farmAddress;
array of address sub_3fe82eda;
mapping of address sub_82424327;
uint256 sub_8812b4b0;
mapping of uint256 stor11;
mapping of uint256 stor12;
uint256 stor13;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function isCloned() {
    return bool(stor6)
}

function nifAddress() {
    return nifAddress
}

function constructed() {
    return bool(stor7)
}

function farm() {
    return farmAddress
}

function sub_3fe82eda(?) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_3fe82eda[arg1])
    return address(sub_3fe82eda[arg1][arg2])
}

function feeAddress() {
    return feeAddress
}

function sub_82424327(?) {
    require calldata.size - 4 >= 32
    return sub_82424327[arg1]
}

function getAddon(address arg1) {
    require calldata.size - 4 >= 32
    return sub_82424327[address(arg1)]
}

function sub_8812b4b0(?) {
    return sub_8812b4b0
}

function owner() {
    return owner
}

function hasAddon(address arg1) {
    require calldata.size - 4 >= 32
    return bool(sub_82424327[address(arg1)])
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor1[address(arg1)])
}

function wildcardErc1155Address() {
    return wildcardErc1155Address
}

function wildcards(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < wildcards.length
    return wildcards[arg1]
}

function sub_e017cae2(?) {
    return sub_e017cae2
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function getPrice(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return stor11[address(arg1)][arg2], stor12[address(arg1)][arg2]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_d30490e4(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = stor11[arg1][arg2[all]]
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_e31d41bb(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = stor12[arg1][arg2[all]]
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if arg1 != this.address:
        return 0
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function iHaveAnyWildcard() {
    idx = 0
    while idx < wildcards.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = wildcards[idx]
        require ext_code.size(wildcardErc1155Address)
        staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, wildcards[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function renounceWhitelistAdmin() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor1[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if arg1 != this.address:
        return 0
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function setPrice(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    stor11[address(arg1)][arg2] = arg3
    stor12[address(arg1)][arg2] = arg4
}

function setCloned() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x654661726d53686f704164646f6e23736574436c6f6e65643a204e6f742063616c6c61626c652066726f6d20636c6f6e,
                    mem[212 len 16]
    stor6 = 1
}

function setFarm(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x654661726d53686f704164646f6e237365744661726d3a204e6f742063616c6c61626c652066726f6d20636c6f6e,
                    mem[210 len 18]
    farmAddress = arg1
}

function setAddonFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x654661726d53686f704164646f6e237365744164646f6e4665653a204e6f742063616c6c61626c652066726f6d20636c6f6e,
                    mem[214 len 14]
    sub_e017cae2 = arg1
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x724661726d53686f704164646f6e23736574466565416464726573733a204e6f742063616c6c61626c652066726f6d20636c6f6e,
                    mem[216 len 12]
    feeAddress = arg1
}

function setNifAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x2e4661726d53686f704164646f6e237365744e6966416464726573733a204e6f742063616c6c61626c652066726f6d20636c6f6e,
                    mem[216 len 12]
    nifAddress = arg1
}

function setWildcardErc1155Address(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x654661726d53686f704164646f6e2373657457696c646361726445726331313535416464726573733a204e6f742063616c6c61626c652066726f6d20636c6f6e
    wildcardErc1155Address = arg1
}

function setWildcard(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x734661726d53686f704164646f6e2373657457696c64636172643a204e6f742063616c6c61626c652066726f6d20636c6f6e,
                    mem[214 len 14]
    wildcards.length++
    stor36B6[stor5.length] = arg1
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function init() {
    if stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x65556e696674794661726d53686f704164646f6e206d757374206e6f7420626520636f6e737472756374656420796574206f7220636c6f6e6564,
                    mem[222 len 6]
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x65556e696674794661726d53686f704164646f6e206d757374206e6f7420626520636f6e737472756374656420796574206f7220636c6f6e6564,
                    mem[222 len 6]
    owner = msg.sender
    emit OwnershipTransferred(0, msg.sender);
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor1[address(msg.sender)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(msg.sender)] = 1
    emit WhitelistAdminAdded(msg.sender);
    stor13 = 1
}

function removeWildcard(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x654661726d53686f704164646f6e2372656d6f766557696c64636172643a204e6f742063616c6c61626c652066726f6d20636c6f6e,
                    mem[217 len 11]
    require wildcards.length - 1 < wildcards.length
    idx = 0
    while idx < wildcards.length:
        mem[0] = 5
        if wildcards[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < wildcards.length
        wildcards[idx] = wildcards[wildcards.length]
        require wildcards.length - 1 < wildcards.length
        wildcards[wildcards.length] = 0
        wildcards.length--
        if wildcards.length > wildcards.length - 1:
            idx = wildcards.length + sha3(5) - 1
            while sha3(5) + wildcards.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}

function setRunMode(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    sub_8812b4b0 = arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    require ext_code.size(farmAddress)
    staticcall farmAddress.0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != 2:
        if ext_call.return_data[0]:
            require ext_code.size(farmAddress)
            call farmAddress.0x3f4ba83a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(farmAddress)
        if not ext_call.return_data[0]:
            call farmAddress.0x8456cb59 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            staticcall farmAddress.0x5c975abb with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(farmAddress)
                call farmAddress.0x3f4ba83a with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function obtain(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor13 != 1:
        revert with 0, 'FarmShopAddon: LOCKED'
    stor13 = 0
    if sub_8812b4b0 != 1:
        if sub_8812b4b0 != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        59,
                        0xfe556e696674794661726d53686f704164646f6e236f627461696e3a204661726d206e6f74206f70656e20666f72206469726563742073616c6573,
                        mem[223 len 5]
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args farmAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x65556e696674794661726d53686f704164646f6e236f627461696e3a204465736972656420616d6f756e7420657863656564732073746f636b,
                    mem[221 len 7]
    if not stor11[address(arg1)][arg2]:
        if not stor12[address(arg1)][arg2]:
            revert with 0, 32, 41, 0x65556e696674794661726d53686f704164646f6e236f627461696e3a205072696365206e6f74207365, mem[269 len 23]
    if stor12[address(arg1)][arg2] + stor11[address(arg1)][arg2] < stor11[address(arg1)][arg2]:
        revert with 0, 'SafeMath#add: OVERFLOW'
    if not stor12[address(arg1)][arg2] + stor11[address(arg1)][arg2]:
        if msg.value != 0:
            revert with 0, 32, 41, 0x2e556e696674794661726d53686f704164646f6e236f627461696e3a20496e76616c69642076616c75, mem[269 len 23]
    else:
        if (stor12[address(arg1)][arg2] * arg3) + (stor11[address(arg1)][arg2] * arg3) / stor12[address(arg1)][arg2] + stor11[address(arg1)][arg2] != arg3:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if (stor12[address(arg1)][arg2] * arg3) + (stor11[address(arg1)][arg2] * arg3) != msg.value:
            revert with 0, 32, 41, 0x2e556e696674794661726d53686f704164646f6e236f627461696e3a20496e76616c69642076616c75, mem[269 len 23]
    if msg.value <= 0:
        revert with 0, 32, 41, 0x2e556e696674794661726d53686f704164646f6e236f627461696e3a20496e76616c69642076616c75, mem[269 len 23]
    require ext_code.size(farmAddress)
    staticcall farmAddress.0x9fb37393 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not address(ext_call.return_data[128]):
        require ext_code.size(farmAddress)
        staticcall farmAddress.0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call address(ext_call.return_data[0]) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if not stor12[address(arg1)][arg2]:
            call address(ext_call.return_data[128]) with:
                 gas 2300 wei
        else:
            if arg3 * stor12[address(arg1)][arg2] / stor12[address(arg1)][arg2] != arg3:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            call address(ext_call.return_data[128]) with:
               value arg3 * stor12[address(arg1)][arg2] wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(farmAddress)
        staticcall farmAddress.0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor11[address(arg1)][arg2]:
            call address(ext_call.return_data[0]) with:
                 gas 2300 wei
        else:
            if arg3 * stor11[address(arg1)][arg2] / stor11[address(arg1)][arg2] != arg3:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            call address(ext_call.return_data[0]) with:
               value arg3 * stor11[address(arg1)][arg2] wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(farmAddress)
    call farmAddress.0x16809da3 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor13 = 1
}

function newAddon(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor13 != 1:
        revert with 0, 'FarmShopAddon: LOCKED'
    stor13 = 0
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x654661726d53686f704164646f6e236e65774164646f6e3a204e6f742063616c6c61626c652066726f6d20636c6f6e,
                    mem[211 len 17]
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x654661726d53686f704164646f6e236e65774164646f6e3a204e6f7420746865206661726d206f776e65,
                    mem[206 len 22]
    require ext_code.size(nifAddress)
    staticcall nifAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < wildcards.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = wildcards[idx]
        require ext_code.size(wildcardErc1155Address)
        staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, wildcards[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            continue 
        create contract with 0 wei
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xe1c7392a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xd4f26c51 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setCloned() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x7362d9c8 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x4c5a628c with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xf2fde38b with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(sub_3fe82eda[msg.sender])++
        address(sub_3fe82eda[msg.sender][uint256(sub_3fe82eda[msg.sender])]) = address(create.new_address)
        sub_82424327[address(arg1)] = address(create.new_address)
        idx = 0
        while idx < wildcards.length:
            mem[0] = 5
            mem[100] = msg.sender
            mem[132] = wildcards[idx]
            require ext_code.size(wildcardErc1155Address)
            staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args msg.sender, wildcards[idx]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                idx = idx + 1
                continue 
            emit NewShop(msg.sender, arg1, address(create.new_address));
            stor13 = 1
            return address(create.new_address)
        call feeAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit NewShop(msg.sender, arg1, address(create.new_address));
        stor13 = 1
        return address(create.new_address)
    if sub_e017cae2 != msg.value:
        revert with 0, 32, 41, 0x654661726d53686f704164646f6e236e65774164646f6e3a20496e76616c6964206164646f6e206665, mem[205 len 23]
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xe1c7392a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xd4f26c51 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setCloned() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x7362d9c8 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x4c5a628c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(sub_3fe82eda[msg.sender])++
    address(sub_3fe82eda[msg.sender][uint256(sub_3fe82eda[msg.sender])]) = address(create.new_address)
    sub_82424327[address(arg1)] = address(create.new_address)
    idx = 0
    while idx < wildcards.length:
        mem[0] = 5
        mem[100] = msg.sender
        mem[132] = wildcards[idx]
        require ext_code.size(wildcardErc1155Address)
        staticcall wildcardErc1155Address.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, wildcards[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            continue 
        emit NewShop(msg.sender, arg1, address(create.new_address));
        stor13 = 1
        return address(create.new_address)
    call feeAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewShop(msg.sender, arg1, address(create.new_address));
    stor13 = 1
    return address(create.new_address)
}



}
