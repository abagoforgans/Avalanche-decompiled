contract main {




// =====================  Runtime code  =====================


#
#  - sub_b2307523(?)
#
address owner;
mapping of uint8 stor1;
address sub_ef38bf01Address;
address marketAddress;
address sub_c146ecb6Address;
array of address sub_364cf1c8;
array of address markets;
mapping of struct sub_21ef2b23;
mapping of uint256 sub_0cd196c6;
mapping of uint256 sub_b47df158;
mapping of uint8 stor10;
address nifAddress;
address feeAddress;
uint256 stor13; offset 32
uint256 sub_eb1be130;
big736 stor13;
uint256 stor14; offset 32
uint256 sub_ac28478d;
big736 stor14;
uint256 stor15; offset 32
uint256 sub_83d0b959;
big736 stor15;
uint256 marketFee;
uint256 sub_4f8b8a42;
array of uint256 wildcards;
address wildcardErc1155Address;

function marketFee() {
    return marketFee
}

function sub_0cd196c6(?) {
    require calldata.size - 4 >= 64
    return sub_0cd196c6[arg1][arg2]
}

function sub_21ef2b23(?) {
    require calldata.size - 4 >= 64
    return sub_21ef2b23[arg1][arg2].field_0
}

function nifAddress() {
    return nifAddress
}

function sub_364cf1c8(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_364cf1c8[address(arg1)])
}

function feeAddress() {
    return feeAddress
}

function sub_4f8b8a42(?) {
    return sub_4f8b8a42
}

function market() {
    return marketAddress
}

function sub_83d0b959(?) {
    return sub_83d0b959
}

function owner() {
    return owner
}

function sub_92ef292c(?) {
    return markets.length
}

function sub_ac28478d(?) {
    return sub_ac28478d
}

function markets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < markets.length
    return markets[arg1]
}

function sub_b47df158(?) {
    require calldata.size - 4 >= 32
    return sub_b47df158[arg1]
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor1[address(arg1)])
}

function sub_c146ecb6(?) {
    return sub_c146ecb6Address
}

function wildcardErc1155Address() {
    return wildcardErc1155Address
}

function wildcards(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < wildcards.length
    return wildcards[arg1]
}

function sub_db0f871d(?) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_364cf1c8[arg1])
    return address(sub_364cf1c8[arg1][arg2])
}

function sub_e4594cd5(?) {
    require calldata.size - 4 >= 64
    return bool(stor10[arg1][arg2])
}

function sub_eb1be130(?) {
    return sub_eb1be130
}

function sub_ef38bf01(?) {
    return sub_ef38bf01Address
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function iHaveAnyWildcard() {
    idx = 0
    while idx < wildcards.length:
        mem[0] = 18
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

function sub_3cc087b3(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    sub_4f8b8a42 = arg1
}

function renounceWhitelistAdmin() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor1[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function setMarketFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    marketFee = arg1
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    feeAddress = arg1
}

function setNifAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    nifAddress = arg1
}

function setWildcardErc1155Address(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    wildcardErc1155Address = arg1
}

function setWildcard(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    wildcards.length++
    wildcards[wildcards.length] = arg1
}

function sub_0fef07fc(?) {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    sub_ef38bf01Address = arg1
    marketAddress = arg2
    sub_c146ecb6Address = arg3
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
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
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function removeWildcard(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    require wildcards.length - 1 < wildcards.length
    idx = 0
    while idx < wildcards.length:
        mem[0] = 18
        if wildcards[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < wildcards.length
        wildcards[idx] = wildcards[wildcards.length]
        require wildcards.length - 1 < wildcards.length
        wildcards[wildcards.length] = 0
        wildcards.length--
        if wildcards.length > wildcards.length - 1:
            idx = wildcards.length + sha3(18) - 1
            while sha3(18) + wildcards.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}

function sub_d912cd4c(?) {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7357686974656c69737441646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652057686974656c69737441646d696e20726f6c
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65736574546965725374616b65733a20696e76616c69642074696572207374616b65,
                    mem[198 len 30]
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65736574546965725374616b65733a20696e76616c69642074696572207374616b65,
                    mem[198 len 30]
    if arg2 >= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65736574546965725374616b65733a20696e76616c69642074696572207374616b65,
                    mem[198 len 30]
    sub_eb1be130 = arg1
    sub_ac28478d = arg2
    sub_83d0b959 = arg3
}

function unstake(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'unstake: you are not the owner'
    if not sub_21ef2b23[msg.sender][address(arg1)].field_0:
        revert with 0, 'unstake: no funds to unstake'
    sub_21ef2b23[msg.sender][address(arg1)].field_0 = 0
    sub_0cd196c6[msg.sender][address(arg1)] = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(nifAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 0, sub_21ef2b23[msg.sender][address(arg1)].field_32)
    call nifAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, 0, sub_21ef2b23[msg.sender][address(arg1)].field_0), mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, sub_21ef2b23[msg.sender][address(arg1)].field_0
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function stake(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'stake: you are not the owner'
    if stor10[address(msg.sender)][address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x647374616b653a2074686973206d61726b657420686173206265656e206372656174656420776974686f7574207374616b696e67,
                    mem[216 len 12]
    if arg1 < 1:
        revert with 0, 'stake: Invalid tier'
    if arg1 > 3:
        revert with 0, 'stake: Invalid tier'
    if sub_0cd196c6[address(msg.sender)][address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x657374616b653a207374616b696e6720616c72656164792c20706c6561736520756e7374616b652066697273,
                    mem[208 len 20]
    if sub_21ef2b23[address(msg.sender)][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x657374616b653a207374616b696e6720616c72656164792c20706c6561736520756e7374616b652066697273,
                    mem[208 len 20]
    sub_0cd196c6[address(msg.sender)][address(arg2)] = arg1
    if arg1 == 2:
        sub_21ef2b23[address(msg.sender)][address(arg2)].field_0 = sub_ac28478d
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(nifAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 0, stor14.field_32)
        mem[416 len 4] = 0
        call nifAddress with:
             gas gas_remaining wei
            args Mask(736, 0, stor14.field_0), mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), sub_ac28478d
            if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        if arg1 != 3:
            sub_21ef2b23[address(msg.sender)][address(arg2)].field_0 = sub_eb1be130
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(nifAddress):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 0, stor13.field_32)
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call nifAddress with:
                 gas gas_remaining wei
                args Mask(736, 0, stor13.field_0), mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), sub_eb1be130
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
        else:
            sub_21ef2b23[address(msg.sender)][address(arg2)].field_0 = sub_83d0b959
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(nifAddress):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 0, stor15.field_32)
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call nifAddress with:
                 gas gas_remaining wei
                args Mask(736, 0, stor15.field_0), mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), sub_83d0b959
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
}



}
