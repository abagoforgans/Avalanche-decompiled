contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const DEFAULT_ADMIN_ROLE = 0

const OPERATOR_ROLE = 0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929


address owner;
mapping of struct roleAdmin;
uint256 stor2;
uint256 sub_1bd8db03;
mapping of struct sub_5997dde7;
mapping of uint8 stor5;

function sub_19b1873b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[address(arg1)])
}

function sub_1bd8db03(?) {
    return sub_1bd8db03
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function sub_5997dde7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PolygonNFTTrading1#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    if sub_5997dde7[address(arg1)][arg2].field_1024 >= 2:
        revert with 'NH{q', 33
    return sub_5997dde7[address(arg1)][arg2].field_1024
}

function owner() {
    return owner
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getTokenPrice(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PolygonNFTTrading1#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    return sub_5997dde7[address(arg1)][arg2].field_512
}

function checkOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(arg1)].field_0)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setTradingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PolygonNFTTrading1#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    sub_1bd8db03 = arg1
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function registerCommunity(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PolygonNFTTrading1#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    if stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PolygonNFTTrading1#registerCommunity: ALREADY_REGISTERED_COMMUNITY'
    stor5[address(arg1)] = 1
}

function sub_a9f4f0d1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PolygonNFTTrading1#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    require ext_code.size(address(arg1))
    staticcall address(arg1).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'PolygonNFTTrading1#closeForSale: CALLER_NO_TOKEN_OWNER'
    if sub_5997dde7[address(arg1)][arg2].field_1024 > 1:
        revert with 'NH{q', 33
    if sub_5997dde7[address(arg1)][arg2].field_1024 != 1:
        revert with 0, 'PolygonNFTTrading1#closeForSale: ALREADY_NOT_FOR_SALE'
    sub_5997dde7[address(arg1)][arg2].field_1024 = 0
}

function sub_51a24ac3(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PolygonNFTTrading1#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    require ext_code.size(address(arg1))
    staticcall address(arg1).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'PolygonNFTTrading1#openForSale: CALLER_NO_TOKEN_OWNER'
    if arg3 <= 0:
        revert with 0, 'PolygonNFTTrading1#openForSale: INVALID_PRICE'
    if sub_5997dde7[address(arg1)][arg2].field_1024 > 1:
        revert with 'NH{q', 33
    if sub_5997dde7[address(arg1)][arg2].field_1024:
        revert with 0, 'PolygonNFTTrading1#openForSale: ALREADY_FOR_SALE_OR_ORDERED'
    sub_5997dde7[address(arg1)][arg2].field_0 = ext_call.return_data[12 len 20]
    sub_5997dde7[address(arg1)][arg2].field_512 = arg3
    sub_5997dde7[address(arg1)][arg2].field_1024 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PolygonNFTTrading1#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[0][stor0].field_0:
        roleAdmin[0][stor0].field_0 = 0
        emit RoleRevoked(0, owner, msg.sender);
    if not roleAdmin[0][address(arg1)].field_0:
        roleAdmin[0][address(arg1)].field_0 = 1
        emit RoleGranted(0, arg1, msg.sender);
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(arg1)].field_0:
        if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(arg1)].field_0:
            roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(arg1)].field_0 = 1
            emit RoleGranted(0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929, arg1, msg.sender);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function buy(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PolygonNFTTrading1#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not stor5[address(arg1)]:
        revert with 0, 'PolygonNFTTrading1#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    if msg.sender == ext_call.return_data[12 len 20]:
        revert with 0, 'PolygonNFTTrading1#bid: CALLER_TOKEN_OWNER'
    if sub_5997dde7[address(arg1)][arg2].field_1024 > 1:
        revert with 'NH{q', 33
    if sub_5997dde7[address(arg1)][arg2].field_1024 != 1:
        revert with 0, 'PolygonNFTTrading1#bid: NOT_FOR_SALE_OR_ORDERED'
    if msg.value < sub_5997dde7[address(arg1)][arg2].field_512:
        revert with 0, 'PolygonNFTTrading1#bid: INSUFFICIENT_FUNDS'
    if 1000 < sub_1bd8db03:
        revert with 'NH{q', 17
    if sub_5997dde7[address(arg1)][arg2].field_512 and -sub_1bd8db03 + 1000 > -1 / sub_5997dde7[address(arg1)][arg2].field_512:
        revert with 'NH{q', 17
    call sub_5997dde7[address(arg1)][arg2].field_0 with:
       value (1000 * sub_5997dde7[address(arg1)][arg2].field_512) - (sub_1bd8db03 * sub_5997dde7[address(arg1)][arg2].field_512) / 1000 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'PolygonNFTTrading1#acceptBid: TRANSFER_FUNDS_FAILED'
    sub_5997dde7[address(arg1)][arg2].field_1024 = 0
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args sub_5997dde7[address(arg1)][arg2].field_0, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2 = 1
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PolygonNFTTrading1#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PolygonNFTTrading1#addOperator: ALREADY_OERATOR_ROLE'
    if roleAdmin[roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_256][address(msg.sender)].field_0:
        if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(arg1)].field_0:
            roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(arg1)].field_0 = 1
            emit RoleGranted(0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929, arg1, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function removeOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PolygonNFTTrading1#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PolygonNFTTrading1#removeOperator: NO_OPERATOR_ROLE'
    if roleAdmin[roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_256][address(msg.sender)].field_0:
        if roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(arg1)].field_0:
            roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(arg1)].field_0 = 0
            emit RoleRevoked(0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929, arg1, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}



}
