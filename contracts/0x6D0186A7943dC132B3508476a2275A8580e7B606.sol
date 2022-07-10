contract main {




// =====================  Runtime code  =====================


const blackHole = 0xf000000000000000000000000000000000000000

const defaultPrice = 100 * 10^18

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
uint256 sub_f541b382;
uint256 sub_31b412d7;
array of uint256 stor4;
mapping of uint256 stor5;
mapping of struct orders;
uint32 stor7;
address feeToAddress;
uint256 feeRate;
mapping of uint256 sub_ae9792e4;
address sub_07d7ca2bAddress;
address sub_914cd3eeAddress;

function feeTo() {
    return address(feeToAddress)
}

function sub_07d7ca2b(?) {
    return sub_07d7ca2bAddress
}

function orderCount() {
    return stor4.length
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_31b412d7(?) {
    return sub_31b412d7
}

function getOrderById(uint256 arg1) {
    require calldata.size - 4 >= 32
    return orders[arg1].field_0, 
           orders[arg1].field_512,
           orders[arg1].field_768,
           orders[arg1].field_1024,
           orders[arg1].field_1280,
           orders[arg1].field_1536
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function sub_914cd3ee(?) {
    return sub_914cd3eeAddress
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function feeRate() {
    return feeRate
}

function orders(uint256 arg1) {
    require calldata.size - 4 >= 32
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_512,
           orders[arg1].field_768,
           orders[arg1].field_1024,
           orders[arg1].field_1280,
           orders[arg1].field_1536
}

function sub_ae9792e4(?) {
    require calldata.size - 4 >= 96
    return sub_ae9792e4[arg1][arg2][arg3]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_f541b382(?) {
    return sub_f541b382
}

function _fallback() payable {
    revert
}

function sub_5f3873e5(?) {
    require calldata.size - 4 >= 128
    require roleAdmin[0][1][address(msg.sender)].field_0
    sub_ae9792e4[arg1][arg2][arg3] = arg4
}

function sub_6967f993(?) {
    require calldata.size - 4 >= 64
    require roleAdmin[0][1][address(msg.sender)].field_0
    sub_f541b382 = arg2
    sub_31b412d7 = arg1
}

function sub_85376c8a(?) {
    require calldata.size - 4 >= 64
    require roleAdmin[0][1][address(msg.sender)].field_0
    address(feeToAddress) = arg1
    feeRate = arg2
}

function sub_407ac362(?) {
    require calldata.size - 4 >= 64
    require roleAdmin[0][1][address(msg.sender)].field_0
    sub_07d7ca2bAddress = arg1
    sub_914cd3eeAddress = arg2
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function sub_6b3b9a5b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(orders[arg1].field_256)
    staticcall orders[arg1].field_256.0x6352211e with:
            gas gas_remaining wei
           args orders[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == orders[arg1].field_0:
        require ext_code.size(orders[arg1].field_256)
        staticcall orders[arg1].field_256.0xe985e9c5 with:
                gas gas_remaining wei
               args orders[arg1].field_0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            return 1
        else:
            return 0
    else:
        return 0
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not roleAdmin[0][1][address(arg1)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg1
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg1)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg1, msg.sender);
    sub_f541b382 = 33600 * 24 * 3600
    sub_31b412d7 = 24 * 3600
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_cc20d212(?) {
    require calldata.size - 4 >= 32
    require roleAdmin[0][1][address(msg.sender)].field_0
    require ext_code.size(sub_07d7ca2bAddress)
    staticcall sub_07d7ca2bAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xf000000000000000000000000000000000000000 == ext_call.return_data[12 len 20]:
        revert with 0, 'Already in black hole'
    if ext_code.size(ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c4e4654206973206c6f636b656420696e206120736d61727420636f6e74726163,
                    mem[197 len 31]
    require ext_code.size(sub_07d7ca2bAddress)
    call sub_07d7ca2bAddress.0x42842e0e with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 0xf000000000000000000000000000000000000000, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xab6ecdfb: address(ext_call.return_data[0]), arg1
}

function getOrderId(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor4.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require ext_code.size(orders[stor4[arg1]].field_256)
    staticcall orders[stor4[arg1]].field_256.0x6352211e with:
            gas gas_remaining wei
           args orders[stor4[arg1]].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == orders[stor4[arg1]].field_0:
        require ext_code.size(orders[stor4[arg1]].field_256)
        staticcall orders[stor4[arg1]].field_256.0xe985e9c5 with:
                gas gas_remaining wei
               args orders[stor4[arg1]].field_0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            return stor4[arg1], 1
    return stor4[arg1], 0
}

function sub_3c6cbc23(?) {
    require calldata.size - 4 >= 96
    if not orders[msg.sender][arg2][address(arg1)][arg3].field_0:
        revert with 0, 'order not exist'
    if orders[msg.sender][arg2][address(arg1)][arg3].field_0 != msg.sender:
        revert with 0, 'order not yours'
    if stor5[msg.sender][arg2][address(arg1)][arg3]:
        require stor4.length - 1 < stor4.length
        require stor5[msg.sender][arg2][address(arg1)][arg3] - 1 < stor4.length
        stor4[stor5[msg.sender][arg2][address(arg1)][arg3]] = stor4[stor4.length]
        stor5[stor4[stor4.length]] = stor5[msg.sender][arg2][address(arg1)][arg3]
        require stor4.length
        stor4[stor4.length] = 0
        stor4.length--
        stor5[msg.sender][arg2][address(arg1)][arg3] = 0
    orders[msg.sender][arg2][address(arg1)][arg3].field_0 = 0
    orders[msg.sender][arg2][address(arg1)][arg3].field_256 = 0
    orders[msg.sender][arg2][address(arg1)][arg3].field_512 = 0
    orders[msg.sender][arg2][address(arg1)][arg3].field_768 = 0
    orders[msg.sender][arg2][address(arg1)][arg3].field_1024 = 0
    orders[msg.sender][arg2][address(arg1)][arg3].field_1280 = 0
    orders[msg.sender][arg2][address(arg1)][arg3].field_1536 = 0
    emit CancelOrder(sha3(msg.sender, arg2, address(arg1), arg3));
}

function sub_75b1a13b(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_07d7ca2bAddress)
    call sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_914cd3eeAddress)
    if sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]]:
        call sub_914cd3eeAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_914cd3eeAddress)
        call sub_914cd3eeAddress.0x42966c68 with:
             gas gas_remaining wei
            args (sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]] / 100)
    else:
        call sub_914cd3eeAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_914cd3eeAddress)
        call sub_914cd3eeAddress.0x42966c68 with:
             gas gas_remaining wei
            args 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_07d7ca2bAddress)
    call sub_07d7ca2bAddress.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You have no access'
    require ext_code.size(arg1)
    staticcall arg1.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Must approve first'
    if arg5 > sub_f541b382:
        revert with 0, 'expiration too large'
    if arg5 < sub_31b412d7:
        revert with 0, 'expiration too small'
    if orders[msg.sender][arg2][address(arg1)][arg3].field_0:
        if not orders[msg.sender][arg2][address(arg1)][arg3].field_0:
            revert with 0, 'order not exist'
        if orders[msg.sender][arg2][address(arg1)][arg3].field_0 != msg.sender:
            revert with 0, 'order not yours'
        if stor5[msg.sender][arg2][address(arg1)][arg3]:
            require stor4.length - 1 < stor4.length
            require stor5[msg.sender][arg2][address(arg1)][arg3] - 1 < stor4.length
            stor4[stor5[msg.sender][arg2][address(arg1)][arg3]] = stor4[stor4.length]
            stor5[stor4[stor4.length]] = stor5[msg.sender][arg2][address(arg1)][arg3]
            require stor4.length
            stor4[stor4.length] = 0
            stor4.length--
            stor5[msg.sender][arg2][address(arg1)][arg3] = 0
        orders[msg.sender][arg2][address(arg1)][arg3].field_0 = 0
        orders[msg.sender][arg2][address(arg1)][arg3].field_256 = 0
        orders[msg.sender][arg2][address(arg1)][arg3].field_512 = 0
        orders[msg.sender][arg2][address(arg1)][arg3].field_768 = 0
        orders[msg.sender][arg2][address(arg1)][arg3].field_1024 = 0
        orders[msg.sender][arg2][address(arg1)][arg3].field_1280 = 0
        orders[msg.sender][arg2][address(arg1)][arg3].field_1536 = 0
        emit CancelOrder(sha3(msg.sender, arg2, address(arg1), arg3));
    if not arg1:
        revert with 0, '_nftContract error'
    if not arg2:
        revert with 0, '_tokenId error'
    if not arg3:
        revert with 0, '_token error'
    if not arg4:
        revert with 0, '_price error'
    orders[msg.sender][arg2][address(arg1)][arg3].field_0 = orders[msg.sender][arg2][address(arg1)][arg3].field_160
    orders[msg.sender][arg2][address(arg1)][arg3].field_256 = arg1
    orders[msg.sender][arg2][address(arg1)][arg3].field_512 = arg2
    orders[msg.sender][arg2][address(arg1)][arg3].field_768 = arg3
    orders[msg.sender][arg2][address(arg1)][arg3].field_1024 = arg4
    orders[msg.sender][arg2][address(arg1)][arg3].field_1280 = arg5
    orders[msg.sender][arg2][address(arg1)][arg3].field_1536 = block.timestamp
    if not stor5[msg.sender][arg2][address(arg1)][arg3]:
        stor4.length++
        stor4[stor4.length] = sha3(msg.sender, arg2, address(arg1), arg3)
        stor5[msg.sender][arg2][address(arg1)][arg3] = stor4.length
    emit 0xed8ab896: arg4, arg5, sha3(msg.sender, arg2, address(arg1), arg3), arg1, arg2, arg3
}

function sub_f615c2bf(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 'to should >= from'
    idx = arg2
    while idx >= arg1:
        if idx >= stor4.length:
            revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
        mem[0] = stor4[idx]
        mem[32] = 6
        require ext_code.size(orders[stor4[idx]].field_256)
        staticcall orders[stor4[idx]].field_256.0x6352211e with:
                gas gas_remaining wei
               args orders[stor4[idx]].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != orders[stor4[idx]].field_0:
            _77 = mem[64]
            mem[64] = mem[64] + 224
            mem[_77] = 0
            mem[_77 + 32] = 0
            mem[_77 + 64] = 0
            mem[_77 + 96] = 0
            mem[_77 + 128] = 0
            mem[_77 + 160] = 0
            mem[_77 + 192] = 0
            mem[0] = stor4[idx]
            mem[32] = 6
            _79 = mem[64]
            mem[64] = mem[64] + 224
            mem[_79] = orders[stor4[idx]].field_0
            mem[_79 + 32] = orders[stor4[idx]].field_256
            mem[_79 + 64] = orders[stor4[idx]].field_512
            mem[_79 + 96] = orders[stor4[idx]].field_768
            mem[_79 + 128] = orders[stor4[idx]].field_1024
            mem[_79 + 160] = orders[stor4[idx]].field_1280
            mem[_79 + 192] = orders[stor4[idx]].field_1536
            if stor5[stor4[idx]]:
                require stor4.length - 1 < stor4.length
                require stor5[stor4[idx]] - 1 < stor4.length
                stor4[stor5[stor4[idx]]] = stor4[stor4.length]
                stor5[stor4[stor4.length]] = stor5[stor4[idx]]
                require stor4.length
                stor4[stor4.length] = 0
                stor4.length--
                stor5[stor4[idx]] = 0
            mem[0] = stor4[idx]
            mem[32] = 6
            orders[stor4[idx]].field_0 = 0
            orders[stor4[idx]].field_256 = 0
            orders[stor4[idx]].field_512 = 0
            orders[stor4[idx]].field_768 = 0
            orders[stor4[idx]].field_1024 = 0
            orders[stor4[idx]].field_1280 = 0
            orders[stor4[idx]].field_1536 = 0
            mem[mem[64]] = orders[stor4[idx]].field_256
            mem[mem[64] + 32] = orders[stor4[idx]].field_768
            mem[mem[64] + 64] = orders[stor4[idx]].field_1024
            emit 0x33b7da6c: orders[stor4[idx]].field_256, orders[stor4[idx]].field_768, orders[stor4[idx]].field_1024, stor4[idx], orders[stor4[idx]].field_512, orders[stor4[idx]].field_0
        else:
            mem[mem[64] + 4] = orders[stor4[idx]].field_0
            mem[mem[64] + 36] = this.address
            require ext_code.size(orders[stor4[idx]].field_256)
            staticcall orders[stor4[idx]].field_256.0xe985e9c5 with:
                    gas gas_remaining wei
                   args orders[stor4[idx]].field_0, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _81 = mem[64]
                mem[64] = mem[64] + 224
                mem[_81] = 0
                mem[_81 + 32] = 0
                mem[_81 + 64] = 0
                mem[_81 + 96] = 0
                mem[_81 + 128] = 0
                mem[_81 + 160] = 0
                mem[_81 + 192] = 0
                mem[0] = stor4[idx]
                mem[32] = 6
                _83 = mem[64]
                mem[64] = mem[64] + 224
                mem[_83] = orders[stor4[idx]].field_0
                mem[_83 + 32] = orders[stor4[idx]].field_256
                mem[_83 + 64] = orders[stor4[idx]].field_512
                mem[_83 + 96] = orders[stor4[idx]].field_768
                mem[_83 + 128] = orders[stor4[idx]].field_1024
                mem[_83 + 160] = orders[stor4[idx]].field_1280
                mem[_83 + 192] = orders[stor4[idx]].field_1536
                if stor5[stor4[idx]]:
                    require stor4.length - 1 < stor4.length
                    require stor5[stor4[idx]] - 1 < stor4.length
                    stor4[stor5[stor4[idx]]] = stor4[stor4.length]
                    stor5[stor4[stor4.length]] = stor5[stor4[idx]]
                    require stor4.length
                    stor4[stor4.length] = 0
                    stor4.length--
                    stor5[stor4[idx]] = 0
                mem[0] = stor4[idx]
                mem[32] = 6
                orders[stor4[idx]].field_0 = 0
                orders[stor4[idx]].field_256 = 0
                orders[stor4[idx]].field_512 = 0
                orders[stor4[idx]].field_768 = 0
                orders[stor4[idx]].field_1024 = 0
                orders[stor4[idx]].field_1280 = 0
                orders[stor4[idx]].field_1536 = 0
                mem[mem[64]] = orders[stor4[idx]].field_256
                mem[mem[64] + 32] = orders[stor4[idx]].field_768
                mem[mem[64] + 64] = orders[stor4[idx]].field_1024
                emit 0x33b7da6c: orders[stor4[idx]].field_256, orders[stor4[idx]].field_768, orders[stor4[idx]].field_1024, stor4[idx], orders[stor4[idx]].field_512, orders[stor4[idx]].field_0
        idx = idx - 1
        continue 
}

function buyOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(orders[arg1].field_256)
    staticcall orders[arg1].field_256.0x6352211e with:
            gas gas_remaining wei
           args orders[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != orders[arg1].field_0:
        revert with 0, 'order is not valid'
    require ext_code.size(orders[arg1].field_256)
    staticcall orders[arg1].field_256.0xe985e9c5 with:
            gas gas_remaining wei
           args orders[arg1].field_0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'order is not valid'
    if not stor5[arg1]:
        orders[arg1].field_0 = 0
        orders[arg1].field_256 = 0
        orders[arg1].field_512 = 0
        orders[arg1].field_768 = 0
        orders[arg1].field_1024 = 0
        orders[arg1].field_1280 = 0
        orders[arg1].field_1536 = 0
        if orders[arg1].field_1024:
            if feeRate * orders[arg1].field_1024 / orders[arg1].field_1024 != feeRate:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[846 len 26]
            if not ext_code.size(orders[arg1].field_768):
                revert with 0, 'Address: call to non-contract'
            mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(feeToAddress), Mask(224, 32, feeRate * orders[arg1].field_1024 / 10^12) >> 32
            mem[864 len 4] = 0
            call orders[arg1].field_768 with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(224, 32, feeRate * orders[arg1].field_1024 / 10^12) << 480, mem[836 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if feeRate * orders[arg1].field_1024 / 10^12 > orders[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1042 len 26]
                if not ext_code.size(orders[arg1].field_768):
                    revert with 0, 'Address: call to non-contract'
                mem[936 len 96] = unknown_0x23b872dd(?????), msg.sender, orders[arg1].field_0, Mask(224, 32, orders[arg1].field_1024 - (feeRate * orders[arg1].field_1024 / 10^12)) >> 32
                mem[1060 len 4] = 0
                call orders[arg1].field_768 with:
                   funct orders[arg1].field_0
                     gas gas_remaining wei
                    args Mask(224, 32, orders[arg1].field_1024 - (feeRate * orders[arg1].field_1024 / 10^12)) << 480, mem[1032 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                else:
                    mem[968 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[968]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1047 len 22]
                require ext_code.size(orders[arg1].field_256)
                call orders[arg1].field_256.0x42842e0e with:
                     gas gas_remaining wei
                    args orders[arg1].field_0, msg.sender, orders[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_07d7ca2bAddress == orders[arg1].field_256:
                    if sub_914cd3eeAddress == orders[arg1].field_768:
                        require ext_code.size(sub_07d7ca2bAddress)
                        call sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
                             gas gas_remaining wei
                            args orders[arg1].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]] = orders[arg1].field_1024
                emit 0x7980f59a: orders[arg1].field_0, orders[arg1].field_256, orders[arg1].field_768, orders[arg1].field_1024, arg1, orders[arg1].field_512, msg.sender
            else:
                mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[772]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 851 len 22]
                if feeRate * orders[arg1].field_1024 / 10^12 > orders[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 1043 len 26]
                if not ext_code.size(orders[arg1].field_768):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 937 len 96] = unknown_0x23b872dd(?????), msg.sender, orders[arg1].field_0, Mask(224, 32, orders[arg1].field_1024 - (feeRate * orders[arg1].field_1024 / 10^12)) >> 32
                mem[ceil32(return_data.size) + 1061 len 4] = 0
                call orders[arg1].field_768 with:
                   funct orders[arg1].field_0
                     gas gas_remaining wei
                    args Mask(224, 32, orders[arg1].field_1024 - (feeRate * orders[arg1].field_1024 / 10^12)) << 480, mem[ceil32(return_data.size) + 1033 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    require ext_code.size(orders[arg1].field_256)
                    call orders[arg1].field_256.0x42842e0e with:
                         gas gas_remaining wei
                        args orders[arg1].field_0, msg.sender, orders[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_07d7ca2bAddress == orders[arg1].field_256:
                        if sub_914cd3eeAddress == orders[arg1].field_768:
                            require ext_code.size(sub_07d7ca2bAddress)
                            call sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
                                 gas gas_remaining wei
                                args orders[arg1].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]] = orders[arg1].field_1024
                    emit 0x7980f59a: orders[arg1].field_0, orders[arg1].field_256, orders[arg1].field_768, orders[arg1].field_1024, arg1, orders[arg1].field_512, msg.sender
                else:
                    mem[ceil32(return_data.size) + 969 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 969]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1048 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(orders[arg1].field_256)
                    call orders[arg1].field_256.0x42842e0e with:
                         gas gas_remaining wei
                        args orders[arg1].field_0, msg.sender, orders[arg1].field_512, mem[(2 * ceil32(return_data.size)) + 1038 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_07d7ca2bAddress == orders[arg1].field_256:
                        if sub_914cd3eeAddress == orders[arg1].field_768:
                            require ext_code.size(sub_07d7ca2bAddress)
                            call sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
                                 gas gas_remaining wei
                                args orders[arg1].field_512, mem[(2 * ceil32(return_data.size)) + 974 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]] = orders[arg1].field_1024
                    emit 0x7980f59a: orders[arg1].field_0, orders[arg1].field_256, orders[arg1].field_768, orders[arg1].field_1024, mem[(2 * ceil32(return_data.size)) + 1066 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1, orders[arg1].field_512, msg.sender
        else:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[846 len 26]
            if not ext_code.size(orders[arg1].field_768):
                revert with 0, 'Address: call to non-contract'
            mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(feeToAddress), 0
            mem[864 len 4] = 0
            mem[836 len 0] = 0
            call orders[arg1].field_768 with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(feeToAddress), 0) << 512, mem[836 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if 0 > orders[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1042 len 26]
                if not ext_code.size(orders[arg1].field_768):
                    revert with 0, 'Address: call to non-contract'
                mem[936 len 96] = 0, msg.sender, orders[arg1].field_0, orders[arg1].field_1056
                mem[1060 len 4] = 0
                call orders[arg1].field_768 with:
                   funct orders[arg1].field_0
                     gas gas_remaining wei
                    args orders[arg1].field_1024, mem[872 len 60], mem[1032 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                else:
                    mem[968 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[968]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1047 len 22]
            else:
                mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[772]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 851 len 22]
                if 0 > orders[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 1043 len 26]
                if not ext_code.size(orders[arg1].field_768):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 937 len 96] = 0, msg.sender, orders[arg1].field_0, orders[arg1].field_1056
                mem[ceil32(return_data.size) + 1061 len 4] = 0
                call orders[arg1].field_768 with:
                   funct orders[arg1].field_0
                     gas gas_remaining wei
                    args orders[arg1].field_1024, mem[ceil32(return_data.size) + 873 len 60], mem[ceil32(return_data.size) + 1033 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                else:
                    mem[ceil32(return_data.size) + 969 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 969]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1048 len 22]
            require ext_code.size(orders[arg1].field_256)
            call orders[arg1].field_256.0x42842e0e with:
                 gas gas_remaining wei
                args orders[arg1].field_0, msg.sender, orders[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_07d7ca2bAddress == orders[arg1].field_256:
                if sub_914cd3eeAddress == orders[arg1].field_768:
                    require ext_code.size(sub_07d7ca2bAddress)
                    call sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
                         gas gas_remaining wei
                        args orders[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]] = orders[arg1].field_1024
            emit 0x7980f59a: orders[arg1].field_0, orders[arg1].field_256, orders[arg1].field_768, orders[arg1].field_1024, arg1, orders[arg1].field_512, msg.sender
    else:
        require stor4.length - 1 < stor4.length
        require stor5[arg1] - 1 < stor4.length
        stor4[stor5[arg1]] = stor4[stor4.length]
        stor5[stor4[stor4.length]] = stor5[arg1]
        require stor4.length
        stor4[stor4.length] = 0
        stor4.length--
        stor5[arg1] = 0
        orders[arg1].field_0 = 0
        orders[arg1].field_256 = 0
        orders[arg1].field_512 = 0
        orders[arg1].field_768 = 0
        orders[arg1].field_1024 = 0
        orders[arg1].field_1280 = 0
        orders[arg1].field_1536 = 0
        if not orders[arg1].field_1024:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[846 len 26]
            if not ext_code.size(orders[arg1].field_768):
                revert with 0, 'Address: call to non-contract'
            mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(feeToAddress), 0
            mem[864 len 4] = 0
            call orders[arg1].field_768 with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args 0, mem[836 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if 0 > orders[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1042 len 26]
                if not ext_code.size(orders[arg1].field_768):
                    revert with 0, 'Address: call to non-contract'
                mem[936 len 96] = unknown_0x23b872dd(?????), msg.sender, orders[arg1].field_0, orders[arg1].field_1056
                mem[1060 len 4] = 0
                call orders[arg1].field_768 with:
                   funct orders[arg1].field_0
                     gas gas_remaining wei
                    args orders[arg1].field_1024, mem[1032 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                else:
                    mem[968 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[968]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1047 len 22]
                require ext_code.size(orders[arg1].field_256)
                call orders[arg1].field_256.0x42842e0e with:
                     gas gas_remaining wei
                    args orders[arg1].field_0, msg.sender, orders[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_07d7ca2bAddress == orders[arg1].field_256:
                    if sub_914cd3eeAddress == orders[arg1].field_768:
                        require ext_code.size(sub_07d7ca2bAddress)
                        call sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
                             gas gas_remaining wei
                            args orders[arg1].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]] = orders[arg1].field_1024
                emit 0x7980f59a: orders[arg1].field_0, orders[arg1].field_256, orders[arg1].field_768, orders[arg1].field_1024, arg1, orders[arg1].field_512, msg.sender
            else:
                mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[772]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 851 len 22]
                if 0 > orders[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 1043 len 26]
                if not ext_code.size(orders[arg1].field_768):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 937 len 96] = unknown_0x23b872dd(?????), msg.sender, orders[arg1].field_0, orders[arg1].field_1056
                mem[ceil32(return_data.size) + 1061 len 4] = 0
                call orders[arg1].field_768 with:
                   funct orders[arg1].field_0
                     gas gas_remaining wei
                    args orders[arg1].field_1024, mem[ceil32(return_data.size) + 1033 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    require ext_code.size(orders[arg1].field_256)
                    call orders[arg1].field_256.0x42842e0e with:
                         gas gas_remaining wei
                        args orders[arg1].field_0, msg.sender, orders[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_07d7ca2bAddress == orders[arg1].field_256:
                        if sub_914cd3eeAddress == orders[arg1].field_768:
                            require ext_code.size(sub_07d7ca2bAddress)
                            call sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
                                 gas gas_remaining wei
                                args orders[arg1].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]] = orders[arg1].field_1024
                    emit 0x7980f59a: orders[arg1].field_0, orders[arg1].field_256, orders[arg1].field_768, orders[arg1].field_1024, arg1, orders[arg1].field_512, msg.sender
                else:
                    mem[ceil32(return_data.size) + 969 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 969]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1048 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(orders[arg1].field_256)
                    call orders[arg1].field_256.0x42842e0e with:
                         gas gas_remaining wei
                        args orders[arg1].field_0, msg.sender, orders[arg1].field_512, mem[(2 * ceil32(return_data.size)) + 1038 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_07d7ca2bAddress == orders[arg1].field_256:
                        if sub_914cd3eeAddress == orders[arg1].field_768:
                            require ext_code.size(sub_07d7ca2bAddress)
                            call sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
                                 gas gas_remaining wei
                                args orders[arg1].field_512, mem[(2 * ceil32(return_data.size)) + 974 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]] = orders[arg1].field_1024
                    emit 0x7980f59a: orders[arg1].field_0, orders[arg1].field_256, orders[arg1].field_768, orders[arg1].field_1024, mem[(2 * ceil32(return_data.size)) + 1066 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1, orders[arg1].field_512, msg.sender
        else:
            if feeRate * orders[arg1].field_1024 / orders[arg1].field_1024 != feeRate:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[846 len 26]
            if not ext_code.size(orders[arg1].field_768):
                revert with 0, 'Address: call to non-contract'
            mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(feeToAddress), Mask(224, 32, feeRate * orders[arg1].field_1024 / 10^12) >> 32
            mem[864 len 4] = 0
            call orders[arg1].field_768 with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(224, 32, feeRate * orders[arg1].field_1024 / 10^12) << 480, mem[836 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if feeRate * orders[arg1].field_1024 / 10^12 > orders[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1042 len 26]
                if not ext_code.size(orders[arg1].field_768):
                    revert with 0, 'Address: call to non-contract'
                mem[936 len 96] = unknown_0x23b872dd(?????), msg.sender, orders[arg1].field_0, Mask(224, 32, orders[arg1].field_1024 - (feeRate * orders[arg1].field_1024 / 10^12)) >> 32
                mem[1060 len 4] = 0
                call orders[arg1].field_768 with:
                   funct orders[arg1].field_0
                     gas gas_remaining wei
                    args Mask(224, 32, orders[arg1].field_1024 - (feeRate * orders[arg1].field_1024 / 10^12)) << 480, mem[1032 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                else:
                    mem[968 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[968]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1047 len 22]
                require ext_code.size(orders[arg1].field_256)
                call orders[arg1].field_256.0x42842e0e with:
                     gas gas_remaining wei
                    args orders[arg1].field_0, msg.sender, orders[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_07d7ca2bAddress == orders[arg1].field_256:
                    if sub_914cd3eeAddress == orders[arg1].field_768:
                        require ext_code.size(sub_07d7ca2bAddress)
                        call sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
                             gas gas_remaining wei
                            args orders[arg1].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]] = orders[arg1].field_1024
                emit 0x7980f59a: orders[arg1].field_0, orders[arg1].field_256, orders[arg1].field_768, orders[arg1].field_1024, arg1, orders[arg1].field_512, msg.sender
            else:
                mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[772]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 851 len 22]
                if feeRate * orders[arg1].field_1024 / 10^12 > orders[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 1043 len 26]
                if not ext_code.size(orders[arg1].field_768):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 937 len 96] = unknown_0x23b872dd(?????), msg.sender, orders[arg1].field_0, Mask(224, 32, orders[arg1].field_1024 - (feeRate * orders[arg1].field_1024 / 10^12)) >> 32
                mem[ceil32(return_data.size) + 1061 len 4] = 0
                call orders[arg1].field_768 with:
                   funct orders[arg1].field_0
                     gas gas_remaining wei
                    args Mask(224, 32, orders[arg1].field_1024 - (feeRate * orders[arg1].field_1024 / 10^12)) << 480, mem[ceil32(return_data.size) + 1033 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    require ext_code.size(orders[arg1].field_256)
                    call orders[arg1].field_256.0x42842e0e with:
                         gas gas_remaining wei
                        args orders[arg1].field_0, msg.sender, orders[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_07d7ca2bAddress == orders[arg1].field_256:
                        if sub_914cd3eeAddress == orders[arg1].field_768:
                            require ext_code.size(sub_07d7ca2bAddress)
                            call sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
                                 gas gas_remaining wei
                                args orders[arg1].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]] = orders[arg1].field_1024
                    emit 0x7980f59a: orders[arg1].field_0, orders[arg1].field_256, orders[arg1].field_768, orders[arg1].field_1024, arg1, orders[arg1].field_512, msg.sender
                else:
                    mem[ceil32(return_data.size) + 969 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 969]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1048 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(orders[arg1].field_256)
                    call orders[arg1].field_256.0x42842e0e with:
                         gas gas_remaining wei
                        args orders[arg1].field_0, msg.sender, orders[arg1].field_512, mem[(2 * ceil32(return_data.size)) + 1038 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_07d7ca2bAddress == orders[arg1].field_256:
                        if sub_914cd3eeAddress == orders[arg1].field_768:
                            require ext_code.size(sub_07d7ca2bAddress)
                            call sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
                                 gas gas_remaining wei
                                args orders[arg1].field_512, mem[(2 * ceil32(return_data.size)) + 974 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            sub_ae9792e4[ext_call.return_data[0]][ext_call.return_data[32]][ext_call.return_data[64]] = orders[arg1].field_1024
                    emit 0x7980f59a: orders[arg1].field_0, orders[arg1].field_256, orders[arg1].field_768, orders[arg1].field_1024, mem[(2 * ceil32(return_data.size)) + 1066 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1, orders[arg1].field_512, msg.sender
}



}
