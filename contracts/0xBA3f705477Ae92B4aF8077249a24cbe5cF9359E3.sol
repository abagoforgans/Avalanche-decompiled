contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const DEFAULT_ADMIN_ROLE = 0

const OPERATOR_ROLE = 0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9


address owner;
mapping of struct roleAdmin;
uint256 stor2;
mapping of struct sub_5997dde7;
mapping of uint8 stor4;

function sub_19b1873b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[address(arg1)])
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_5997dde7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if sub_5997dde7[address(arg1)][arg2].field_1024 >= 3:
        revert with 0, 33
    return sub_5997dde7[address(arg1)][arg2].field_1024
}

function owner() {
    return owner
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getTokenPrice(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return sub_5997dde7[address(arg1)][arg2].field_512
}

function checkOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
}

function registerCommunity(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#onlyOperator: CALLER_NO_OPERATOR_ROLE'
    if stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#registerCommunity: ALREADY_REGISTERED_COMMUNITY'
    stor4[address(arg1)] = 1
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#addOperator: ALREADY_OERATOR_ROLE'
    if not roleAdmin[roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0:
        roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0 = 1
        emit RoleGranted(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
}

function removeOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#removeOperator: NO_OPERATOR_ROLE'
    if not roleAdmin[roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0:
        roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0 = 0
        emit RoleRevoked(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
}

function sub_a9f4f0d1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvalancheNFTTrading#closeForSale: CALLER_NO_TOKEN_OWNER'
    if sub_5997dde7[address(arg1)][arg2].field_1024 > 2:
        revert with 0, 33
    if sub_5997dde7[address(arg1)][arg2].field_1024 != 1:
        if sub_5997dde7[address(arg1)][arg2].field_1024 > 2:
            revert with 0, 33
        if sub_5997dde7[address(arg1)][arg2].field_1024 != 2:
            revert with 0, 'AvalancheNFTTrading#closeForSale: ALREADY_NOT_FOR_SALE'
    sub_5997dde7[address(arg1)][arg2].field_1024 = 0
}

function sub_51a24ac3(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvalancheNFTTrading#openForSale: CALLER_NO_TOKEN_OWNER'
    if arg3 <= 0:
        revert with 0, 'AvalancheNFTTrading#openForSale: INVALID_PRICE'
    if sub_5997dde7[address(arg1)][arg2].field_1024 > 2:
        revert with 0, 33
    if sub_5997dde7[address(arg1)][arg2].field_1024:
        revert with 0, 'AvalancheNFTTrading#openForSale: ALREADY_FOR_SALE_OR_ORDERED'
    sub_5997dde7[address(arg1)][arg2].field_0 = ext_call.return_data[12 len 20]
    sub_5997dde7[address(arg1)][arg2].field_512 = arg3
    sub_5997dde7[address(arg1)][arg2].field_1024 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#onlyAdmin: CALLER_NO_ADMIN_ROLE'
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[0][stor0].field_0:
        roleAdmin[0][stor0].field_0 = 0
        emit RoleRevoked(0, owner, msg.sender);
    if not roleAdmin[0][address(arg1)].field_0:
        roleAdmin[0][address(arg1)].field_0 = 1
        emit RoleGranted(0, arg1, msg.sender);
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0:
        if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0:
            roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0 = 1
            emit RoleGranted(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function bid(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not stor4[address(arg1)]:
        revert with 0, 'AvalancheNFTTrading#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == address(ext_call.return_data[0]):
        revert with 0, 'AvalancheNFTTrading#bid: CALLER_TOKEN_OWNER'
    if sub_5997dde7[address(arg1)][arg2].field_1024 > 2:
        revert with 0, 33
    if sub_5997dde7[address(arg1)][arg2].field_1024 != 1:
        revert with 0, 'AvalancheNFTTrading#bid: NOT_FOR_SALE_OR_ORDERED'
    if msg.value < sub_5997dde7[address(arg1)][arg2].field_512:
        revert with 0, 'AvalancheNFTTrading#bid: INSUFFICIENT_FUNDS'
    sub_5997dde7[address(arg1)][arg2].field_256 = msg.sender
    sub_5997dde7[address(arg1)][arg2].field_768 = block.timestamp
    sub_5997dde7[address(arg1)][arg2].field_1024 = 2
    stor2 = 1
}

function acceptBid(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvalancheNFTTrading#onlyRegisteredCommunity: NO_REGISTERED_COMMUNITY'
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvalancheNFTTrading#acceptBid: CALLER_NO_TOKEN_OWNER'
    if sub_5997dde7[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0, 'AvalancheNFTTrading#acceptBid: CALLER_NO_SELLER'
    if sub_5997dde7[address(arg1)][arg2].field_1024 > 2:
        revert with 0, 33
    if sub_5997dde7[address(arg1)][arg2].field_1024 != 2:
        revert with 0, 'AvalancheNFTTrading#acceptBid: NOT_ORDERED'
    sub_5997dde7[address(arg1)][arg2].field_768 = block.timestamp
    sub_5997dde7[address(arg1)][arg2].field_1024 = 0
    call sub_5997dde7[address(arg1)][arg2].field_0 with:
       value sub_5997dde7[address(arg1)][arg2].field_512 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'AvalancheNFTTrading#acceptBid: TRANSFER_FUNDS_FAILED'
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args sub_5997dde7[address(arg1)][arg2].field_0, sub_5997dde7[address(arg1)][arg2].field_256, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2 = 1
}



}
