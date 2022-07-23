contract main {




// =====================  Runtime code  =====================


#
#  - commitTokensFrom(address arg1, uint256 arg2, bool arg3)
#  - commitEth(address arg1, bool arg2)
#  - withdrawTokens(address arg1)
#  - finalize()
#  - withdrawTokens()
#  - cancelAuction()
#  - commitTokens(uint256 arg1, bool arg2)
#
const marketTemplate = 2

const marketParticipationAgreement = 32, 337, 0xa64920756e6465727374616e6420746861742049276d20696e746572616374696e672077697468206120736d61727420636f6e74726163742e204920756e6465727374616e64207468617420746f6b656e7320636f6d6d697474656420617265207375626a65637420746f2074686520746f6b656e2069737375657220616e64206c6f63616c206c617773207768657265206170706c696361626c652e204920726576696577656420636f6465206f662074686520736d61727420636f6e747261637420616e6420756e6465727374616e642069742066756c6c792e204920616772656520746f206e6f7420686f6c6420646576656c6f70657273206f72206f746865722070656f706c65206173736f6369617465642077697468207468652070726f6a656374206c6961626c6520666f7220616e79206c6f73736573206f72206d6973756e6465727374616e64696e67, mem[465 len 15] >> 2440, 0

const SMART_CONTRACT_ROLE = 0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956

const OPERATOR_ROLE = 0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9


array of uint256 stor1;
mapping of struct stor2;
array of struct documentName;
uint64 stor6;
uint64 stor6; offset 64
uint128 totalTokens; offset 128
uint128 stor7;
uint128 stor7; offset 128
uint8 stor8; offset 128
uint8 stor8; offset 136
uint128 stor8; offset 136
uint128 stor8;
address auctionTokenAddress;
address paymentCurrencyAddress;
address walletAddress;
address sub_f04899d3Address;
mapping of uint256 commitments;
mapping of uint256 claimed;
array of struct stor99;

function hasMinterRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0))
}

function hasSmartContractRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0))
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_512)
}

function paymentCurrency() {
    return paymentCurrencyAddress
}

function getDocumentCount() {
    return documentName.length
}

function wallet() {
    return walletAddress
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= uint256(roleAdmin[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return address(roleAdmin[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint256(roleAdmin[arg1][1][address(arg2)].field_0))
}

function auctionToken() {
    return auctionTokenAddress
}

function finalized() {
    return bool(uint8(stor8.field_128))
}

function hasAdminRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint256(roleAdmin[1][address(arg1)].field_0))
}

function getDocumentName(uint256 arg1) {
    return uint256(documentName[arg1][0 len documentName[arg1].length].field_0)
}

function claimed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimed[arg1]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_0)
}

function commitments(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return commitments[arg1]
}

function sub_f04899d3(?) {
    return sub_f04899d3Address
}

function getTotalTokens() {
    return totalTokens
}

function hasOperatorRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0))
}

function _fallback() payable {
    revert
}

function marketPrice() {
    return uint128(stor7.field_0), uint128(stor7.field_128)
}

function marketInfo() {
    return uint64(stor6.field_0), uint64(stor6.field_0), totalTokens
}

function finalizeTimeExpired() {
    return (uint64(stor6.field_64) + (168 * 24 * 3600) < block.timestamp)
}

function marketStatus() {
    return uint128(stor8.field_0), bool(uint8(stor8.field_128)), bool(uint8(stor8.field_136))
}

function getBaseInformation() {
    return auctionTokenAddress, uint64(stor6.field_0), uint64(stor6.field_0), bool(uint8(stor8.field_128))
}

function isOpen() {
    if block.timestamp < uint64(stor6.field_0):
        return block.timestamp >= uint64(stor6.field_0)
    return block.timestamp <= uint64(stor6.field_64)
}

function init(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
}

function enableList(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require uint256(roleAdmin[1][address(msg.sender)].field_0)
    Mask(120, 0, stor8.field_136) = Mask(120, 0, arg1)
    emit 0x2df0f5b6: sub_f04899d3Address, bool(uint8(arg1))
}

function tokenPrice() {
    if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
        revert with 0, 'BoringMath: Mul Overflow'
    if totalTokens <= 0:
        revert with 0, 'BoringMath: Div zero'
    require totalTokens
    return (10^18 * uint128(stor8.field_0) / totalTokens)
}

function setList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require uint256(roleAdmin[1][address(msg.sender)].field_0)
    if arg1:
        sub_f04899d3Address = arg1
        uint8(stor8.field_136) = 1
    emit 0x2df0f5b6: sub_f04899d3Address, bool(uint8(stor8.field_136))
}

function sub_9a87222c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint256(roleAdmin[1][address(msg.sender)].field_0)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: wallet is the zero address'
    walletAddress = address(arg1)
    emit AuctionWalletUpdated(address(arg1));
}

function priceDrop() {
    if uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) > uint128(stor7.field_0):
        revert with 0, 'BoringMath: Underflow'
    if uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) > uint64(stor6.field_0):
        revert with 0, 'BoringMath: Underflow'
    require uint64(uint64(stor6.field_0) - uint64(stor6.field_0))
    return (uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)))
}

function permitToken(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg6 == arg6
    require ext_code.size(arg1)
    call arg1.0xd505accf with:
         gas gas_remaining wei
        args 0, 0, address(arg3), arg4, arg5, arg6 << 248, arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_84720f16(?) {
    require calldata.size - 4 >= 352
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg6 == address(arg6)
    require arg9 == address(arg9)
    require arg10 == address(arg10)
    require arg11 == address(arg11)
    return 32, 352, 
           address(arg1),
           address(arg2),
           arg3,
           arg4,
           arg5,
           address(arg6),
           arg7,
           arg8,
           address(arg9),
           address(arg10),
           address(arg11)
}

function initAccessControls(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.length):
        revert with 0, 'Already initialised'
    if not arg1:
        revert with 0, 'Incorrect input'
    if not uint256(roleAdmin[1][address(arg1)].field_0):
        uint256(roleAdmin.field_0)++
        address(stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0) = arg1
        Mask(96, 0, stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160) = 0
        uint256(roleAdmin[1][address(arg1)].field_0) = uint256(roleAdmin.field_0)
        emit RoleGranted(0, arg1, msg.sender);
    uint8(stor1.length) = 1
}

function getDocument(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 2
    mem[128] = uint256(stor2[arg1[all]][1].field_0)
    idx = 128
    s = 0
    while stor2[arg1[all]][1].length + 96 > idx:
        mem[idx + 32] = uint256(stor2[arg1[all]][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor2[arg1[all]][1].length, data=mem[128 len ceil32(stor2[arg1[all]][1].length)]), 
           uint64(stor2[arg1[all]].field_32)
}

function addAdminRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint256(roleAdmin[uint256(roleAdmin.field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not uint256(roleAdmin[1][address(arg1)].field_0):
        uint256(roleAdmin.field_0)++
        address(stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0) = arg1
        Mask(96, 0, stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160) = 0
        uint256(roleAdmin[1][address(arg1)].field_0) = uint256(roleAdmin.field_0)
        emit RoleGranted(0, arg1, msg.sender);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint256(roleAdmin[uint256(roleAdmin[arg1].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        uint256(roleAdmin[arg1].field_0)++
        address(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = arg2
        Mask(96, 0, roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_160) = 0
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = uint256(roleAdmin[arg1].field_0)
        emit RoleGranted(arg1, arg2, msg.sender);
}

function setAuctionPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require uint256(roleAdmin[1][address(msg.sender)].field_0)
    if arg1 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DutchAuction: start price must be higher than minimum price'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: minimum price must be greater than 0'
    if uint128(stor8.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: auction cannot have already started'
    if arg1 > test266151307():
        revert with 0, 'BoringMath: uint128 Overflow'
    uint128(stor7.field_0) = uint128(arg1)
    if arg2 > test266151307():
        revert with 0, 'BoringMath: uint128 Overflow'
    uint128(stor7.field_128) = uint128(arg2)
    emit AuctionPriceUpdated(arg1, arg2);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        require uint256(roleAdmin[arg1].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        require uint256(roleAdmin[arg1][1][address(arg2)].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1][1][address(arg2)].field_0)].field_0) = uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)
        uint256(roleAdmin[arg1][1][uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)].field_0) = uint256(roleAdmin[arg1][1][address(arg2)].field_0)
        require uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = 0
        uint256(roleAdmin[arg1].field_0)--
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function removeAdminRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint256(roleAdmin[uint256(roleAdmin.field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if uint256(roleAdmin[1][address(arg1)].field_0):
        require uint256(roleAdmin.field_0) - 1 < uint256(roleAdmin.field_0)
        require uint256(roleAdmin[1][address(arg1)].field_0) - 1 < uint256(roleAdmin.field_0)
        uint256(stor[uint256(roleAdmin[1][address(arg1)].field_0) + sha3(('name', 'roleAdmin', 0))].field_0) = uint256(stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_0)
        uint256(roleAdmin[1][uint256(stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_0)].field_0) = uint256(roleAdmin[1][address(arg1)].field_0)
        require uint256(roleAdmin.field_0)
        uint256(stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_0) = 0
        uint256(roleAdmin.field_0)--
        uint256(roleAdmin[1][address(arg1)].field_0) = 0
        emit RoleRevoked(0, arg1, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint256(roleAdmin[uint256(roleAdmin[arg1].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        require uint256(roleAdmin[arg1].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        require uint256(roleAdmin[arg1][1][address(arg2)].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1][1][address(arg2)].field_0)].field_0) = uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)
        uint256(roleAdmin[arg1][1][uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)].field_0) = uint256(roleAdmin[arg1][1][address(arg2)].field_0)
        require uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = 0
        uint256(roleAdmin[arg1].field_0)--
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function setAuctionTime(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require uint256(roleAdmin[1][address(msg.sender)].field_0)
    if arg1 >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DutchAuction: enter an unix timestamp in seconds, not miliseconds'
    if arg2 >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DutchAuction: enter an unix timestamp in seconds, not miliseconds'
    if arg1 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: start time is before current time'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DutchAuction: end time must be older than start time'
    if uint128(stor8.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: auction cannot have already started'
    if arg1 > test266151307():
        revert with 0, 'BoringMath: uint64 Overflow'
    uint64(stor6.field_0) = uint64(arg1)
    if arg2 > test266151307():
        revert with 0, 'BoringMath: uint64 Overflow'
    uint64(stor6.field_64) = uint64(arg2)
    emit AuctionTimeUpdated(arg1, arg2);
}

function getAllDocuments() {
    mem[64] = (32 * documentName.length) + 128
    mem[96] = documentName.length
    s = 128
    idx = 0
    while idx < documentName.length:
        mem[0] = 4
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(documentName[idx].length) + 32
        mem[_12] = documentName[idx].length
        mem[0] = idx + sha3(4)
        mem[_12 + 32] = uint256(documentName[idx].field_0)
        t = _12 + 32
        u = sha3(mem[0])
        while _12 + documentName[idx].length > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _14:
        mem[t] = u + -_13 - 64
        _20 = mem[s]
        _22 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _22:
            mem[v + u + 32] = mem[v + _20 + 32]
            v = v + 32
            continue 
        if ceil32(_22) > _22:
            mem[_22 + u + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_22) + u + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function addMinterRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint256(roleAdmin[uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0):
        uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0)++
        address(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0)].field_0) = arg1
        Mask(96, 0, roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0)].field_160) = 0
        uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0) = uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0)
        emit RoleGranted(0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956, arg1, msg.sender);
}

function addOperatorRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint256(roleAdmin[uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0):
        uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0)++
        address(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0)].field_0) = arg1
        Mask(96, 0, roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0)].field_160) = 0
        uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0) = uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0)
        emit RoleGranted(0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
}

function addSmartContractRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint256(roleAdmin[uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0):
        uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0)++
        address(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0)].field_0) = arg1
        Mask(96, 0, roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0)].field_160) = 0
        uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0) = uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0)
        emit RoleGranted(0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b, arg1, msg.sender);
}

function tokensClaimable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not commitments[address(arg1)]:
        return 0
    require ext_code.size(auctionTokenAddress)
    staticcall auctionTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalTokens:
        if uint128(stor8.field_0) <= 0:
            revert with 0, 'BoringMath: Div zero'
        require uint128(stor8.field_0)
        if (0 / uint128(stor8.field_0)) - claimed[address(arg1)] > 0 / uint128(stor8.field_0):
            revert with 0, 'BoringMath: Underflow'
        if (0 / uint128(stor8.field_0)) - claimed[address(arg1)] <= ext_call.return_data[0]:
            return ((0 / uint128(stor8.field_0)) - claimed[address(arg1)])
    else:
        require totalTokens
        if commitments[address(arg1)] * totalTokens / totalTokens != commitments[address(arg1)]:
            revert with 0, 'BoringMath: Mul Overflow'
        if uint128(stor8.field_0) <= 0:
            revert with 0, 'BoringMath: Div zero'
        require uint128(stor8.field_0)
        if (commitments[address(arg1)] * totalTokens / uint128(stor8.field_0)) - claimed[address(arg1)] > commitments[address(arg1)] * totalTokens / uint128(stor8.field_0):
            revert with 0, 'BoringMath: Underflow'
        if (commitments[address(arg1)] * totalTokens / uint128(stor8.field_0)) - claimed[address(arg1)] <= ext_call.return_data[0]:
            return ((commitments[address(arg1)] * totalTokens / uint128(stor8.field_0)) - claimed[address(arg1)])
    return ext_call.return_data[0]
}

function priceFunction() {
    if block.timestamp <= uint64(stor6.field_0):
        return uint128(stor7.field_0)
    if block.timestamp >= uint64(stor6.field_64):
        return uint128(stor7.field_128)
    if uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) > uint64(stor6.field_0):
        revert with 0, 'BoringMath: Underflow'
    if uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) > uint128(stor7.field_0):
        revert with 0, 'BoringMath: Underflow'
    if block.timestamp - uint64(stor6.field_0) > block.timestamp:
        revert with 0, 'BoringMath: Underflow'
    if not uint128(uint128(stor7.field_0) - uint128(stor7.field_128)):
        require uint64(uint64(stor6.field_0) - uint64(stor6.field_0))
        if uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) > uint128(stor7.field_0):
            revert with 0, 'BoringMath: Underflow'
        return (uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))))
    require uint128(uint128(stor7.field_0) - uint128(stor7.field_128))
    if (block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) != block.timestamp - uint64(stor6.field_0):
        revert with 0, 'BoringMath: Mul Overflow'
    require uint64(uint64(stor6.field_0) - uint64(stor6.field_0))
    if uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) > uint128(stor7.field_0):
        revert with 0, 'BoringMath: Underflow'
    return (uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))))
}

function removeMinterRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint256(roleAdmin[uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0):
        require uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0) - 1 < uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0)
        require uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0) - 1 < uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0)
        uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0)].field_0) = uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0)].field_0)
        uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0)].field_0)].field_0) = uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0)
        require uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0)
        uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0)].field_0) = 0
        uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956].field_0)--
        uint256(roleAdmin[0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][1][address(arg1)].field_0) = 0
        emit RoleRevoked(0x299f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956, arg1, msg.sender);
}

function removeOperatorRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint256(roleAdmin[uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0):
        require uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0) - 1 < uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0)
        require uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0) - 1 < uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0)
        uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0)].field_0) = uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0)].field_0)
        uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0)].field_0)].field_0) = uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0)
        require uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0)
        uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0)].field_0) = 0
        uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_0)--
        uint256(roleAdmin[0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(arg1)].field_0) = 0
        emit RoleRevoked(0xfd97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
}

function removeSmartContractRole(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint256(roleAdmin[uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0):
        require uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0) - 1 < uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0)
        require uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0) - 1 < uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0)
        uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0)].field_0) = uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0)].field_0)
        uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0)].field_0)].field_0) = uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0)
        require uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0)
        uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0)].field_0) = 0
        uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b].field_0)--
        uint256(roleAdmin[0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b][1][address(arg1)].field_0) = 0
        emit RoleRevoked(0xfe9d49f397ae9ef1a834b569acb967799a367061e305932181a44f5773da873b, arg1, msg.sender);
}

function sub_9c64d0ae(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require uint256(roleAdmin[1][address(msg.sender)].field_0)
    if not ('cd', 4).length:
        revert with 0, 'Zero name is not allowed'
    if not ('cd', 36).length:
        revert with 0, 'Should not be a empty data'
    mem[('cd', 4).length + 96] = 2
    if not uint64(stor2[call.data[cd[4] + 36 len ('cd', 4).length]].field_32):
        documentName.length++
        uint256(documentName[documentName.length].field_0) = (2 * ('cd', 4).length) + 1
        s = 0
        idx = cd[4] + 36
        while cd[4] + ('cd', 4).length + 36 > idx:
            uint256(documentName[documentName.length + s].field_0) = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
        while documentName[documentName.length].length + 31 / 32 > idx:
            uint256(documentName[documentName.length + idx].field_0) = 0
            idx = idx + 1
            continue 
        mem[('cd', 4).length + 96] = 2
        uint32(stor2[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) = uint32(documentName.length)
    mem[('cd', 4).length + 192] = 2
    mem[ceil32(('cd', 36).length) + 224 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + ceil32(('cd', 36).length) + 224] = 2
    uint32(stor[mem[('cd', 36).length + 256 len ('cd', 4).length - ('cd', 36).length + ceil32(('cd', 36).length)]][Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0)].field_0) = uint32(stor2[call.data[cd[4] + 36 len ('cd', 4).length]].field_0)
    uint64(stor[mem[('cd', 36).length + 256 len ('cd', 4).length - ('cd', 36).length + ceil32(('cd', 36).length)]][Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0)].field_32) = uint64(block.timestamp)
    uint256(stor[mem[('cd', 36).length + 256 len ('cd', 4).length - ('cd', 36).length + ceil32(('cd', 36).length)]][Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0)][1][].field_0) = Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
    mem[ceil32(('cd', 36).length) + 224 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + ceil32(('cd', 36).length) + 224] = 0
    mem[ceil32(('cd', 36).length) + 224] = 32
    mem[ceil32(('cd', 36).length) + 256] = ('cd', 36).length
    emit DocumentUpdated(string arg1, string arg2):
                         Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0),
                         mem[('cd', 36).length + 256 len (2 * ceil32(('cd', 36).length)) + -('cd', 36).length + 32],
                         sha3(call.data[cd[4] + 36 len ('cd', 4).length]),
}

function clearingPrice() {
    if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
        revert with 0, 'BoringMath: Mul Overflow'
    if totalTokens <= 0:
        revert with 0, 'BoringMath: Div zero'
    require totalTokens
    if block.timestamp <= uint64(stor6.field_0):
        if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0):
            return (10^18 * uint128(stor8.field_0) / totalTokens)
        return uint128(stor7.field_0)
    if block.timestamp >= uint64(stor6.field_64):
        if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_128):
            return (10^18 * uint128(stor8.field_0) / totalTokens)
        return uint128(stor7.field_128)
    if uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) > uint64(stor6.field_0):
        revert with 0, 'BoringMath: Underflow'
    if uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) > uint128(stor7.field_0):
        revert with 0, 'BoringMath: Underflow'
    if block.timestamp - uint64(stor6.field_0) > block.timestamp:
        revert with 0, 'BoringMath: Underflow'
    if not uint128(uint128(stor7.field_0) - uint128(stor7.field_128)):
        require uint64(uint64(stor6.field_0) - uint64(stor6.field_0))
        if uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) > uint128(stor7.field_0):
            revert with 0, 'BoringMath: Underflow'
        if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
            return (10^18 * uint128(stor8.field_0) / totalTokens)
        return (uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))))
    require uint128(uint128(stor7.field_0) - uint128(stor7.field_128))
    if (block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) != block.timestamp - uint64(stor6.field_0):
        revert with 0, 'BoringMath: Mul Overflow'
    require uint64(uint64(stor6.field_0) - uint64(stor6.field_0))
    if uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) > uint128(stor7.field_0):
        revert with 0, 'BoringMath: Underflow'
    if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
        return (10^18 * uint128(stor8.field_0) / totalTokens)
    return (uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))))
}

function auctionSuccessful() {
    if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
        revert with 0, 'BoringMath: Mul Overflow'
    if totalTokens <= 0:
        revert with 0, 'BoringMath: Div zero'
    require totalTokens
    if block.timestamp <= uint64(stor6.field_0):
        if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
            revert with 0, 'BoringMath: Mul Overflow'
        if totalTokens <= 0:
            revert with 0, 'BoringMath: Div zero'
        if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0):
            if totalTokens:
                return 10^18 * uint128(stor8.field_0) / totalTokens >= 10^18 * uint128(stor8.field_0) / totalTokens
        else:
            if totalTokens:
                return 10^18 * uint128(stor8.field_0) / totalTokens >= uint128(stor7.field_0)
        ('iszero', ('stor', ('name', 'totalTokens', 6)))
    else:
        if block.timestamp >= uint64(stor6.field_64):
            if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
                revert with 0, 'BoringMath: Mul Overflow'
            if totalTokens <= 0:
                revert with 0, 'BoringMath: Div zero'
            if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_128):
                if totalTokens:
                    return 10^18 * uint128(stor8.field_0) / totalTokens >= 10^18 * uint128(stor8.field_0) / totalTokens
            else:
                if totalTokens:
                    return 10^18 * uint128(stor8.field_0) / totalTokens >= uint128(stor7.field_128)
            ('iszero', ('stor', ('name', 'totalTokens', 6)))
        else:
            if uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) > uint64(stor6.field_0):
                revert with 0, 'BoringMath: Underflow'
            if uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) > uint128(stor7.field_0):
                revert with 0, 'BoringMath: Underflow'
            if block.timestamp - uint64(stor6.field_0) > block.timestamp:
                revert with 0, 'BoringMath: Underflow'
            if not uint128(uint128(stor7.field_0) - uint128(stor7.field_128)):
                if uint64(uint64(stor6.field_0) - uint64(stor6.field_0)):
                    if uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) > uint128(stor7.field_0):
                        revert with 0, 'BoringMath: Underflow'
                    if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
                        revert with 0, 'BoringMath: Mul Overflow'
                    if totalTokens <= 0:
                        revert with 0, 'BoringMath: Div zero'
                    if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
                        if totalTokens:
                            return 10^18 * uint128(stor8.field_0) / totalTokens >= 10^18 * uint128(stor8.field_0) / totalTokens
                    else:
                        if totalTokens:
                            return 10^18 * uint128(stor8.field_0) / totalTokens >= uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)))
                    ('iszero', ('stor', ('name', 'totalTokens', 6)))
            else:
                if uint128(uint128(stor7.field_0) - uint128(stor7.field_128)):
                    if (block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) != block.timestamp - uint64(stor6.field_0):
                        revert with 0, 'BoringMath: Mul Overflow'
                    if uint64(uint64(stor6.field_0) - uint64(stor6.field_0)):
                        if uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) > uint128(stor7.field_0):
                            revert with 0, 'BoringMath: Underflow'
                        if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
                            revert with 0, 'BoringMath: Mul Overflow'
                        if totalTokens <= 0:
                            revert with 0, 'BoringMath: Div zero'
                        if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
                            if totalTokens:
                                return 10^18 * uint128(stor8.field_0) / totalTokens >= 10^18 * uint128(stor8.field_0) / totalTokens
                        else:
                            if totalTokens:
                                return 10^18 * uint128(stor8.field_0) / totalTokens >= uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)))
                        ('iszero', ('stor', ('name', 'totalTokens', 6)))
    revert
}

function auctionEnded() {
    if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
        revert with 0, 'BoringMath: Mul Overflow'
    if totalTokens <= 0:
        revert with 0, 'BoringMath: Div zero'
    require totalTokens
    if block.timestamp <= uint64(stor6.field_0):
        if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
            revert with 0, 'BoringMath: Mul Overflow'
        if totalTokens <= 0:
            revert with 0, 'BoringMath: Div zero'
        require totalTokens
        if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0):
            if 10^18 * uint128(stor8.field_0) / totalTokens >= 10^18 * uint128(stor8.field_0) / totalTokens:
                return 10^18 * uint128(stor8.field_0) / totalTokens >= 10^18 * uint128(stor8.field_0) / totalTokens
        else:
            if 10^18 * uint128(stor8.field_0) / totalTokens >= uint128(stor7.field_0):
                return 10^18 * uint128(stor8.field_0) / totalTokens >= uint128(stor7.field_0)
    else:
        if block.timestamp >= uint64(stor6.field_64):
            if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
                revert with 0, 'BoringMath: Mul Overflow'
            if totalTokens <= 0:
                revert with 0, 'BoringMath: Div zero'
            require totalTokens
            if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_128):
                if 10^18 * uint128(stor8.field_0) / totalTokens >= 10^18 * uint128(stor8.field_0) / totalTokens:
                    return 10^18 * uint128(stor8.field_0) / totalTokens >= 10^18 * uint128(stor8.field_0) / totalTokens
            else:
                if 10^18 * uint128(stor8.field_0) / totalTokens >= uint128(stor7.field_128):
                    return 10^18 * uint128(stor8.field_0) / totalTokens >= uint128(stor7.field_128)
        else:
            if uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) > uint64(stor6.field_0):
                revert with 0, 'BoringMath: Underflow'
            if uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) > uint128(stor7.field_0):
                revert with 0, 'BoringMath: Underflow'
            if block.timestamp - uint64(stor6.field_0) > block.timestamp:
                revert with 0, 'BoringMath: Underflow'
            if not uint128(uint128(stor7.field_0) - uint128(stor7.field_128)):
                require uint64(uint64(stor6.field_0) - uint64(stor6.field_0))
                if uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) > uint128(stor7.field_0):
                    revert with 0, 'BoringMath: Underflow'
                if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
                    revert with 0, 'BoringMath: Mul Overflow'
                if totalTokens <= 0:
                    revert with 0, 'BoringMath: Div zero'
                require totalTokens
                if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
                    if 10^18 * uint128(stor8.field_0) / totalTokens >= 10^18 * uint128(stor8.field_0) / totalTokens:
                        return 10^18 * uint128(stor8.field_0) / totalTokens >= 10^18 * uint128(stor8.field_0) / totalTokens
                else:
                    if 10^18 * uint128(stor8.field_0) / totalTokens >= uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
                        return 10^18 * uint128(stor8.field_0) / totalTokens >= uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)))
            else:
                require uint128(uint128(stor7.field_0) - uint128(stor7.field_128))
                if (block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) != block.timestamp - uint64(stor6.field_0):
                    revert with 0, 'BoringMath: Mul Overflow'
                require uint64(uint64(stor6.field_0) - uint64(stor6.field_0))
                if uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) > uint128(stor7.field_0):
                    revert with 0, 'BoringMath: Underflow'
                if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
                    revert with 0, 'BoringMath: Mul Overflow'
                if totalTokens <= 0:
                    revert with 0, 'BoringMath: Div zero'
                require totalTokens
                if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
                    if 10^18 * uint128(stor8.field_0) / totalTokens >= 10^18 * uint128(stor8.field_0) / totalTokens:
                        return 10^18 * uint128(stor8.field_0) / totalTokens >= 10^18 * uint128(stor8.field_0) / totalTokens
                else:
                    if 10^18 * uint128(stor8.field_0) / totalTokens >= uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
                        return 10^18 * uint128(stor8.field_0) / totalTokens >= uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)))
    return (block.timestamp > uint64(stor6.field_64))
}

function removeDocument(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require uint256(roleAdmin[1][address(msg.sender)].field_0)
    if not uint64(stor2[arg1[all]].field_32):
        revert with 0, 'Document should exist'
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 2
    if documentName.length - 1 != uint32(uint32(stor2[arg1[all]].field_0) - 1):
        require documentName.length - 1 < documentName.length
        require uint32(uint32(stor2[arg1[all]].field_0) - 1) < documentName.length
        if 31 >= stor[('name', 'documentName', 4) + documentName.length - 1].length:
            uint256(documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1)].field_0) = uint256(documentName[documentName.length].field_0)
            idx = 0
            while documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1)].length + 31 / 32 > idx:
                uint256(documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            uint256(documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1)].field_0) = Mask(255, 1, (256 * not bool(documentName[documentName.length].field_0)) - 1 and uint256(documentName[documentName.length].field_0)) + 1
            if not Mask(255, 1, (256 * not bool(documentName[documentName.length].field_0)) - 1 and uint256(documentName[documentName.length].field_0)):
                idx = 0
                while documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1)].length + 31 / 32 > idx:
                    uint256(documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[('name', 'documentName', 4) + documentName.length - 1].length + 31 / 32 > idx:
                    uint256(documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1) + s].field_0) = uint256(stor[idx + sha3(('name', 'documentName', 4) + documentName.length - 1)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[('name', 'documentName', 4) + documentName.length - 1].length + 31 / 32
                while documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1)].length + 31 / 32 > idx:
                    uint256(documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
        require uint32(uint32(stor2[arg1[all]].field_0) - 1) < documentName.length
        if not bool(documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1)].field_0):
            mem[96] = Mask(248, 8, uint256(documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1)].field_0))
            mem[documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1)].field_1 % 128 + 96] = 2
            uint32(stor[mem[128 len stor4[uint32(uint32(stor2[arg1[all]].field_0) - 1)].field_1 % 128]][Mask(248, 8, uint256(stor4[uint32(uint32(stor2[arg1[all]].field_0) - 1)].field_0))].field_0) = uint32(stor2[arg1[all]].field_0)
        else:
            if bool(documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1)].field_0) != 1:
                uint32(stor[sha3(mem[96 len -64])].field_0) = uint32(stor2[arg1[all]].field_0)
            else:
                idx = 0
                s = 0
                while idx < uint255(documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1)].field_1):
                    mem[idx + 96] = uint256(documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1) + s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[uint255(documentName[uint32(uint32(stor2[arg1[all]].field_0) - 1)].field_1) + 96] = 2
                uint32(stor[sha3(mem[96 len uint255(stor4[uint32(uint32(stor2[arg1[all]].field_0) - 1)].field_1) + 32])].field_0) = uint32(stor2[arg1[all]].field_0)
    require documentName.length
    uint256(documentName[documentName.length].field_0) = 0
    if 31 < stor[('name', 'documentName', 4) + documentName.length - 1].length:
        idx = 0
        while stor[('name', 'documentName', 4) + documentName.length - 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3(('name', 'documentName', 4) + documentName.length - 1)].field_0) = 0
            idx = idx + 1
            continue 
    documentName.length--
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 2
    if not bool(stor2[arg1[all]].field_256):
        emit DocumentRemoved(Array(len=stor2[arg1[all]].field_256 % 128, data=Mask(248, 8, uint256(stor2[arg1[all]].field_256))), sha3(arg1[all]));
        Mask(96, 0, stor2[arg1[all]].field_0) = 0
        uint256(stor2[arg1[all]].field_256) = 0
        if 31 < stor2[arg1[all]][1].length:
            idx = 0
            while stor2[arg1[all]][1].length + 31 / 32 > idx:
                uint256(stor2[arg1[all]][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2[arg1[all]].field_256) != 1:
            emit DocumentRemoved(mem[96 len -96], sha3(arg1[all]));
        else:
            idx = 0
            s = 0
            while idx < uint255(stor2[arg1[all]].field_257):
                mem[idx + 160] = uint256(stor2[arg1[all]][s + 1].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            emit DocumentRemoved(Array(len=2 * Mask(256, -1, uint255(stor2[arg1[all]].field_257)), data=mem[160 len ceil32(uint255(stor2[arg1[all]].field_257))]), sha3(arg1[all]));
        Mask(96, 0, stor2[arg1[all]].field_0) = 0
        uint256(stor2[arg1[all]].field_256) = 0
        if 31 < stor2[arg1[all]][1].length:
            idx = 0
            while stor2[arg1[all]][1].length + 31 / 32 > idx:
                uint256(stor2[arg1[all]][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
}

function totalTokensCommitted() {
    if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
        revert with 0, 'BoringMath: Mul Overflow'
    if totalTokens <= 0:
        revert with 0, 'BoringMath: Div zero'
    require totalTokens
    if block.timestamp <= uint64(stor6.field_0):
        if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
            revert with 0, 'BoringMath: Mul Overflow'
        if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0):
            if 10^18 * uint128(stor8.field_0) / totalTokens <= 0:
                revert with 0, 'BoringMath: Div zero'
            if 10^18 * uint128(stor8.field_0) / totalTokens:
                return (10^18 * uint128(stor8.field_0) / 10^18 * uint128(stor8.field_0) / totalTokens)
        else:
            if uint128(stor7.field_0) <= 0:
                revert with 0, 'BoringMath: Div zero'
            if uint128(stor7.field_0):
                return (10^18 * uint128(stor8.field_0) / uint128(stor7.field_0))
    else:
        if block.timestamp >= uint64(stor6.field_64):
            if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
                revert with 0, 'BoringMath: Mul Overflow'
            if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_128):
                if 10^18 * uint128(stor8.field_0) / totalTokens <= 0:
                    revert with 0, 'BoringMath: Div zero'
                if 10^18 * uint128(stor8.field_0) / totalTokens:
                    return (10^18 * uint128(stor8.field_0) / 10^18 * uint128(stor8.field_0) / totalTokens)
            else:
                if uint128(stor7.field_128) <= 0:
                    revert with 0, 'BoringMath: Div zero'
                if uint128(stor7.field_128):
                    return (10^18 * uint128(stor8.field_0) / uint128(stor7.field_128))
        else:
            if uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) > uint64(stor6.field_0):
                revert with 0, 'BoringMath: Underflow'
            if uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) > uint128(stor7.field_0):
                revert with 0, 'BoringMath: Underflow'
            if block.timestamp - uint64(stor6.field_0) > block.timestamp:
                revert with 0, 'BoringMath: Underflow'
            if not uint128(uint128(stor7.field_0) - uint128(stor7.field_128)):
                if uint64(uint64(stor6.field_0) - uint64(stor6.field_0)):
                    if uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) > uint128(stor7.field_0):
                        revert with 0, 'BoringMath: Underflow'
                    if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
                        revert with 0, 'BoringMath: Mul Overflow'
                    if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
                        if 10^18 * uint128(stor8.field_0) / totalTokens <= 0:
                            revert with 0, 'BoringMath: Div zero'
                        if 10^18 * uint128(stor8.field_0) / totalTokens:
                            return (10^18 * uint128(stor8.field_0) / 10^18 * uint128(stor8.field_0) / totalTokens)
                    else:
                        if uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) <= 0:
                            revert with 0, 'BoringMath: Div zero'
                        if uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
                            return (10^18 * uint128(stor8.field_0) / uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))))
            else:
                if uint128(uint128(stor7.field_0) - uint128(stor7.field_128)):
                    if (block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) != block.timestamp - uint64(stor6.field_0):
                        revert with 0, 'BoringMath: Mul Overflow'
                    if uint64(uint64(stor6.field_0) - uint64(stor6.field_0)):
                        if uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) > uint128(stor7.field_0):
                            revert with 0, 'BoringMath: Underflow'
                        if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
                            revert with 0, 'BoringMath: Mul Overflow'
                        if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
                            if 10^18 * uint128(stor8.field_0) / totalTokens <= 0:
                                revert with 0, 'BoringMath: Div zero'
                            if 10^18 * uint128(stor8.field_0) / totalTokens:
                                return (10^18 * uint128(stor8.field_0) / 10^18 * uint128(stor8.field_0) / totalTokens)
                        else:
                            if uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) <= 0:
                                revert with 0, 'BoringMath: Div zero'
                            if uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
                                return (10^18 * uint128(stor8.field_0) / uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))))
    revert
}

function sub_b1f16218(?) {
    require calldata.size - 4 >= 352
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg6 == address(arg6)
    require arg9 == address(arg9)
    require arg10 == address(arg10)
    require arg11 == address(arg11)
    if arg5 >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DutchAuction: enter an unix timestamp in seconds, not miliseconds'
    if arg4 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: start time is before current time'
    if arg5 <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DutchAuction: end time must be older than start price'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DutchAuction: total tokens must be greater than zero'
    if arg7 <= arg8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DutchAuction: start price must be higher than minimum price'
    if arg8 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: minimum price must be greater than 0'
    if not address(arg9):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: admin is the zero address'
    if not address(arg11):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: wallet is the zero address'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] != 18:
        revert with 0, 'DutchAuction: Token does not have 18 decimals'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(arg6):
        if arg4 > test266151307():
            revert with 0, 'BoringMath: uint64 Overflow'
        uint64(stor6.field_0) = uint64(arg4)
        if arg5 > test266151307():
            revert with 0, 'BoringMath: uint64 Overflow'
        uint64(stor6.field_64) = uint64(arg5)
        if arg3 > test266151307():
            revert with 0, 'BoringMath: uint128 Overflow'
        totalTokens = uint128(arg3)
        if arg7 > test266151307():
            revert with 0, 'BoringMath: uint128 Overflow'
        uint128(stor7.field_0) = uint128(arg7)
        if arg8 > test266151307():
            revert with 0, 'BoringMath: uint128 Overflow'
        uint128(stor7.field_128) = uint128(arg8)
        auctionTokenAddress = address(arg2)
        paymentCurrencyAddress = address(arg6)
        walletAddress = address(arg11)
        if uint8(stor1.length):
            revert with 0, 'Already initialised'
        if not address(arg9):
            revert with 0, 'Incorrect input'
        if not uint256(roleAdmin[1][address(arg9)].field_0):
            uint256(roleAdmin.field_0)++
            address(stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0) = address(arg9)
            Mask(96, 0, stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160) = 0
            uint256(roleAdmin[1][address(arg9)].field_0) = uint256(roleAdmin.field_0)
            emit RoleGranted(0, address(arg9), msg.sender);
        uint8(stor1.length) = 1
        if address(arg10):
            sub_f04899d3Address = address(arg10)
            uint8(stor8.field_136) = 1
        emit 0x2df0f5b6: sub_f04899d3Address, bool(uint8(stor8.field_136))
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg3, mem[ceil32(return_data.size) + 228 len 28]
        call address(arg2).mem[ceil32(return_data.size) + 228 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 232 len 96]
        if not return_data.size:
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                require mem[128]
        else:
            mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                require mem[ceil32(return_data.size) + 260]
    else:
        require ext_code.size(address(arg6))
        staticcall address(arg6).0x313ce567 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] <= 0:
            revert with 0, 'DutchAuction: Payment currency is not ERC20'
        if arg4 > test266151307():
            revert with 0, 'BoringMath: uint64 Overflow'
        uint64(stor6.field_0) = uint64(arg4)
        if arg5 > test266151307():
            revert with 0, 'BoringMath: uint64 Overflow'
        uint64(stor6.field_64) = uint64(arg5)
        if arg3 > test266151307():
            revert with 0, 'BoringMath: uint128 Overflow'
        totalTokens = uint128(arg3)
        if arg7 > test266151307():
            revert with 0, 'BoringMath: uint128 Overflow'
        uint128(stor7.field_0) = uint128(arg7)
        if arg8 > test266151307():
            revert with 0, 'BoringMath: uint128 Overflow'
        uint128(stor7.field_128) = uint128(arg8)
        auctionTokenAddress = address(arg2)
        paymentCurrencyAddress = address(arg6)
        walletAddress = address(arg11)
        if uint8(stor1.length):
            revert with 0, 'Already initialised'
        if not address(arg9):
            revert with 0, 'Incorrect input'
        if not uint256(roleAdmin[1][address(arg9)].field_0):
            uint256(roleAdmin.field_0)++
            address(stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0) = address(arg9)
            Mask(96, 0, stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160) = 0
            uint256(roleAdmin[1][address(arg9)].field_0) = uint256(roleAdmin.field_0)
            emit RoleGranted(0, address(arg9), msg.sender);
        uint8(stor1.length) = 1
        if address(arg10):
            sub_f04899d3Address = address(arg10)
            uint8(stor8.field_136) = 1
        emit 0x2df0f5b6: sub_f04899d3Address, bool(uint8(stor8.field_136))
        mem[(2 * ceil32(return_data.size)) + 96] = 100
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg3, mem[(2 * ceil32(return_data.size)) + 228 len 28]
        call address(arg2).mem[(2 * ceil32(return_data.size)) + 228 len 4] with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 232 len 96]
        if not return_data.size:
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                require mem[128]
        else:
            mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 260] == bool(mem[(2 * ceil32(return_data.size)) + 260])
                require mem[(2 * ceil32(return_data.size)) + 260]
    emit 0x7824ca06: address(arg1), address(arg2), arg3, address(arg6), address(arg9), address(arg11)
    emit AuctionTimeUpdated(arg4, arg5);
    emit AuctionPriceUpdated(arg7, arg8);
}

function initMarket(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg1.length >= 352
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    require cd[(arg1 + 68)] == address(cd[(arg1 + 68)])
    require cd[(arg1 + 196)] == address(cd[(arg1 + 196)])
    require cd[(arg1 + 292)] == address(cd[(arg1 + 292)])
    require cd[(arg1 + 324)] == address(cd[(arg1 + 324)])
    require cd[(arg1 + 356)] == address(cd[(arg1 + 356)])
    if cd[(arg1 + 164)] >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DutchAuction: enter an unix timestamp in seconds, not miliseconds'
    if cd[(arg1 + 132)] < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: start time is before current time'
    if cd[(arg1 + 164)] <= cd[(arg1 + 132)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DutchAuction: end time must be older than start price'
    if cd[(arg1 + 100)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DutchAuction: total tokens must be greater than zero'
    if cd[(arg1 + 228)] <= cd[(arg1 + 260)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DutchAuction: start price must be higher than minimum price'
    if cd[(arg1 + 260)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: minimum price must be greater than 0'
    if not address(cd[(arg1 + 292)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: admin is the zero address'
    if not address(cd[(arg1 + 356)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DutchAuction: wallet is the zero address'
    require ext_code.size(address(cd[(arg1 + 68)]))
    staticcall address(cd[(arg1 + 68)]).0x313ce567 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] != 18:
        revert with 0, 'DutchAuction: Token does not have 18 decimals'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(cd[(arg1 + 196)]):
        if cd[(arg1 + 132)] > test266151307():
            revert with 0, 'BoringMath: uint64 Overflow'
        uint64(stor6.field_0) = uint64(cd[(arg1 + 132)])
        if cd[(arg1 + 164)] > test266151307():
            revert with 0, 'BoringMath: uint64 Overflow'
        uint64(stor6.field_64) = uint64(cd[(arg1 + 164)])
        if cd[(arg1 + 100)] > test266151307():
            revert with 0, 'BoringMath: uint128 Overflow'
        totalTokens = uint128(cd[(arg1 + 100)])
        if cd[(arg1 + 228)] > test266151307():
            revert with 0, 'BoringMath: uint128 Overflow'
        uint128(stor7.field_0) = uint128(cd[(arg1 + 228)])
        if cd[(arg1 + 260)] > test266151307():
            revert with 0, 'BoringMath: uint128 Overflow'
        uint128(stor7.field_128) = uint128(cd[(arg1 + 260)])
        auctionTokenAddress = address(cd[(arg1 + 68)])
        paymentCurrencyAddress = address(cd[(arg1 + 196)])
        walletAddress = address(cd[(arg1 + 356)])
        if uint8(stor1.length):
            revert with 0, 'Already initialised'
        if not address(cd[(arg1 + 292)]):
            revert with 0, 'Incorrect input'
        if not uint256(roleAdmin[1][address(cd[(arg1 + 292)])].field_0):
            uint256(roleAdmin.field_0)++
            address(stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0) = address(cd[(arg1 + 292)])
            Mask(96, 0, stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160) = 0
            uint256(roleAdmin[1][address(cd[(arg1 + 292)])].field_0) = uint256(roleAdmin.field_0)
            emit RoleGranted(0, address(cd[(arg1 + 292)]), msg.sender);
        uint8(stor1.length) = 1
        if address(cd[(arg1 + 324)]):
            sub_f04899d3Address = address(cd[(arg1 + 324)])
            uint8(stor8.field_136) = 1
        emit 0x2df0f5b6: sub_f04899d3Address, bool(uint8(stor8.field_136))
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = address(cd[(arg1 + 36)]) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), address(cd[(arg1 + 36)]) << 64, 0, address(this.address), cd[(arg1 + 100)], mem[ceil32(return_data.size) + 228 len 28]
        call address(cd[(arg1 + 68)]).mem[ceil32(return_data.size) + 228 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 232 len 96]
        if not return_data.size:
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                require mem[128]
        else:
            mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                require mem[ceil32(return_data.size) + 260]
    else:
        require ext_code.size(address(cd[(arg1 + 196)]))
        staticcall address(cd[(arg1 + 196)]).0x313ce567 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] <= 0:
            revert with 0, 'DutchAuction: Payment currency is not ERC20'
        if cd[(arg1 + 132)] > test266151307():
            revert with 0, 'BoringMath: uint64 Overflow'
        uint64(stor6.field_0) = uint64(cd[(arg1 + 132)])
        if cd[(arg1 + 164)] > test266151307():
            revert with 0, 'BoringMath: uint64 Overflow'
        uint64(stor6.field_64) = uint64(cd[(arg1 + 164)])
        if cd[(arg1 + 100)] > test266151307():
            revert with 0, 'BoringMath: uint128 Overflow'
        totalTokens = uint128(cd[(arg1 + 100)])
        if cd[(arg1 + 228)] > test266151307():
            revert with 0, 'BoringMath: uint128 Overflow'
        uint128(stor7.field_0) = uint128(cd[(arg1 + 228)])
        if cd[(arg1 + 260)] > test266151307():
            revert with 0, 'BoringMath: uint128 Overflow'
        uint128(stor7.field_128) = uint128(cd[(arg1 + 260)])
        auctionTokenAddress = address(cd[(arg1 + 68)])
        paymentCurrencyAddress = address(cd[(arg1 + 196)])
        walletAddress = address(cd[(arg1 + 356)])
        if uint8(stor1.length):
            revert with 0, 'Already initialised'
        if not address(cd[(arg1 + 292)]):
            revert with 0, 'Incorrect input'
        if not uint256(roleAdmin[1][address(cd[(arg1 + 292)])].field_0):
            uint256(roleAdmin.field_0)++
            address(stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0) = address(cd[(arg1 + 292)])
            Mask(96, 0, stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160) = 0
            uint256(roleAdmin[1][address(cd[(arg1 + 292)])].field_0) = uint256(roleAdmin.field_0)
            emit RoleGranted(0, address(cd[(arg1 + 292)]), msg.sender);
        uint8(stor1.length) = 1
        if address(cd[(arg1 + 324)]):
            sub_f04899d3Address = address(cd[(arg1 + 324)])
            uint8(stor8.field_136) = 1
        emit 0x2df0f5b6: sub_f04899d3Address, bool(uint8(stor8.field_136))
        mem[(2 * ceil32(return_data.size)) + 96] = 100
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(cd[(arg1 + 36)]) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 228 len 128] = unknown_0x23b872dd(?????), address(cd[(arg1 + 36)]) << 64, 0, address(this.address), cd[(arg1 + 100)], mem[(2 * ceil32(return_data.size)) + 228 len 28]
        call address(cd[(arg1 + 68)]).mem[(2 * ceil32(return_data.size)) + 228 len 4] with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 232 len 96]
        if not return_data.size:
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                require mem[128]
        else:
            mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 260] == bool(mem[(2 * ceil32(return_data.size)) + 260])
                require mem[(2 * ceil32(return_data.size)) + 260]
    emit 0x7824ca06: address(cd[(arg1 + 36)]), address(cd[(arg1 + 68)]), cd[(arg1 + 100)], address(cd[(arg1 + 196)]), address(cd[(arg1 + 292)]), address(cd[(arg1 + 356)])
    emit AuctionTimeUpdated(cd[(arg1 + 132)], cd[(arg1 + 164)]);
    emit AuctionPriceUpdated(cd[(arg1 + 228)], cd[(arg1 + 260)]);
}

function sub_c92bce87(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0) + 1
    require uint256(roleAdmin[1][address(msg.sender)].field_0)
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        require idx < ('cd', 36).length
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
            revert with 0, 'Zero name is not allowed'
        if not cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            revert with 0, 'Should not be a empty data'
        _141 = mem[64]
        mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
        mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
        if uint64(stor[sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _141 + -mem[64] + 32])].field_32):
            _147 = mem[64]
            mem[64] = mem[64] + 96
            _148 = mem[64]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
            mem[_147] = uint32(stor[sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _148 + -mem[64] + 32])].field_0)
            mem[_147 + 32] = uint64(block.timestamp)
            _152 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_152] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_152 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_152 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
            mem[_147 + 64] = _152
            _153 = mem[64]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
            _155 = sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _153 + -mem[64] + 32])
            uint32(stor[sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _153 + -mem[64] + 32])].field_0) = mem[_147 + 28 len 4]
            uint64(stor[sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _153 + -mem[64] + 32])].field_32) = uint64(block.timestamp)
            mem[0] = sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _153 + -mem[64] + 32]) + 1
            uint256(stor1[_155]) = (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 1
            s = sha3(mem[0])
            t = _152 + 32
            while _152 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32 > t:
                uint256(stor[s].field_0) = mem[t]
                s = s + 1
                t = t + 32
                continue 
            s = sha3(mem[0]) + (Mask(251, 0, cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 31) >> 5)
            while sha3(mem[0]) + (stor[_155 + 1].length + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            _394 = mem[64]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            _401 = sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _394 - mem[64]])
            mem[mem[64]] = 32
            mem[mem[64] + 32] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 64 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64] + 64] = 0
            emit DocumentUpdated(Array(len=cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)], data=call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]), _401);
        else:
            documentName.length++
            mem[0] = documentName.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
            uint256(documentName[documentName.length].field_0) = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
            s = sha3(documentName.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65)
            t = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
            while cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 68 > t:
                uint256(stor[s].field_0) = cd[t]
                s = s + 1
                t = t + 32
                continue 
            t = s
            while sha3(documentName.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65) + (documentName[documentName.length].length + 31 / 32) > t:
                uint256(stor[t].field_0) = 0
                t = t + 1
                continue 
            _397 = mem[64]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
            uint32(stor[sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _397 + -mem[64] + 32])].field_0) = uint32(documentName.length)
            _418 = mem[64]
            mem[64] = mem[64] + 96
            _419 = mem[64]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
            mem[_418] = uint32(stor[sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _419 + -mem[64] + 32])].field_0)
            mem[_418 + 32] = uint64(block.timestamp)
            _431 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_431] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_431 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_431 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
            mem[_418 + 64] = _431
            _432 = mem[64]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 2
            _438 = sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _432 + -mem[64] + 32])
            uint32(stor[sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _432 + -mem[64] + 32])].field_0) = mem[_418 + 28 len 4]
            uint64(stor[sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _432 + -mem[64] + 32])].field_32) = uint64(block.timestamp)
            mem[0] = sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _432 + -mem[64] + 32]) + 1
            uint256(stor1[_438]) = (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 1
            s = sha3(mem[0])
            t = _431 + 32
            while _431 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32 > t:
                uint256(stor[s].field_0) = mem[t]
                s = s + 1
                t = t + 32
                continue 
            s = sha3(mem[0]) + (Mask(251, 0, cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 31) >> 5)
            while sha3(mem[0]) + (stor[_438 + 1].length + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            _488 = mem[64]
            mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]] = call.data[cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            _490 = sha3(mem[mem[64] len cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + _488 - mem[64]])
            mem[mem[64]] = 32
            mem[mem[64] + 32] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 64 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64] + 64] = 0
            emit DocumentUpdated(Array(len=cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)], data=call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]), _490);
        idx = idx + 1
        continue 
}

function calculateCommitment(uint256 arg1) {
    require calldata.size - 4 >= 32
    if 10^18 * uint128(stor8.field_0) / 10^18 != uint128(stor8.field_0):
        revert with 0, 'BoringMath: Mul Overflow'
    if totalTokens <= 0:
        revert with 0, 'BoringMath: Div zero'
    require totalTokens
    if block.timestamp <= uint64(stor6.field_0):
        if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0):
            if not 10^18 * uint128(stor8.field_0) / totalTokens:
                if arg1 + uint128(stor8.field_0) < arg1:
                    revert with 0, 'BoringMath: Add Overflow'
                if arg1 + uint128(stor8.field_0) <= 0:
                    return arg1
                if -uint128(stor8.field_0) > 0:
                    revert with 0, 'BoringMath: Underflow'
                return -uint128(stor8.field_0)
            require 10^18 * uint128(stor8.field_0) / totalTokens
            if totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18 * uint128(stor8.field_0) / totalTokens != totalTokens:
                revert with 0, 'BoringMath: Mul Overflow'
            if arg1 + uint128(stor8.field_0) < arg1:
                revert with 0, 'BoringMath: Add Overflow'
            if arg1 + uint128(stor8.field_0) <= totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18:
                return arg1
            if (totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18) - uint128(stor8.field_0) > totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18:
                revert with 0, 'BoringMath: Underflow'
            return ((totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18) - uint128(stor8.field_0))
        if not uint128(stor7.field_0):
            if arg1 + uint128(stor8.field_0) < arg1:
                revert with 0, 'BoringMath: Add Overflow'
            if arg1 + uint128(stor8.field_0) <= 0:
                return arg1
            if -uint128(stor8.field_0) > 0:
                revert with 0, 'BoringMath: Underflow'
            return -uint128(stor8.field_0)
        require uint128(stor7.field_0)
        if totalTokens * uint128(stor7.field_0) / uint128(stor7.field_0) != totalTokens:
            revert with 0, 'BoringMath: Mul Overflow'
        if arg1 + uint128(stor8.field_0) < arg1:
            revert with 0, 'BoringMath: Add Overflow'
        if arg1 + uint128(stor8.field_0) <= totalTokens * uint128(stor7.field_0) / 10^18:
            return arg1
        if (totalTokens * uint128(stor7.field_0) / 10^18) - uint128(stor8.field_0) > totalTokens * uint128(stor7.field_0) / 10^18:
            revert with 0, 'BoringMath: Underflow'
        return ((totalTokens * uint128(stor7.field_0) / 10^18) - uint128(stor8.field_0))
    if block.timestamp >= uint64(stor6.field_64):
        if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_128):
            if not 10^18 * uint128(stor8.field_0) / totalTokens:
                if arg1 + uint128(stor8.field_0) < arg1:
                    revert with 0, 'BoringMath: Add Overflow'
                if arg1 + uint128(stor8.field_0) <= 0:
                    return arg1
                if -uint128(stor8.field_0) > 0:
                    revert with 0, 'BoringMath: Underflow'
                return -uint128(stor8.field_0)
            require 10^18 * uint128(stor8.field_0) / totalTokens
            if totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18 * uint128(stor8.field_0) / totalTokens != totalTokens:
                revert with 0, 'BoringMath: Mul Overflow'
            if arg1 + uint128(stor8.field_0) < arg1:
                revert with 0, 'BoringMath: Add Overflow'
            if arg1 + uint128(stor8.field_0) <= totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18:
                return arg1
            if (totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18) - uint128(stor8.field_0) > totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18:
                revert with 0, 'BoringMath: Underflow'
            return ((totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18) - uint128(stor8.field_0))
        if not uint128(stor7.field_128):
            if arg1 + uint128(stor8.field_0) < arg1:
                revert with 0, 'BoringMath: Add Overflow'
            if arg1 + uint128(stor8.field_0) <= 0:
                return arg1
            if -uint128(stor8.field_0) > 0:
                revert with 0, 'BoringMath: Underflow'
            return -uint128(stor8.field_0)
        require uint128(stor7.field_128)
        if totalTokens * uint128(stor7.field_128) / uint128(stor7.field_128) != totalTokens:
            revert with 0, 'BoringMath: Mul Overflow'
        if arg1 + uint128(stor8.field_0) < arg1:
            revert with 0, 'BoringMath: Add Overflow'
        if arg1 + uint128(stor8.field_0) <= totalTokens * uint128(stor7.field_128) / 10^18:
            return arg1
        if (totalTokens * uint128(stor7.field_128) / 10^18) - uint128(stor8.field_0) > totalTokens * uint128(stor7.field_128) / 10^18:
            revert with 0, 'BoringMath: Underflow'
        return ((totalTokens * uint128(stor7.field_128) / 10^18) - uint128(stor8.field_0))
    if uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) > uint64(stor6.field_0):
        revert with 0, 'BoringMath: Underflow'
    if uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) > uint128(stor7.field_0):
        revert with 0, 'BoringMath: Underflow'
    if block.timestamp - uint64(stor6.field_0) > block.timestamp:
        revert with 0, 'BoringMath: Underflow'
    if not uint128(uint128(stor7.field_0) - uint128(stor7.field_128)):
        require uint64(uint64(stor6.field_0) - uint64(stor6.field_0))
        if uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) > uint128(stor7.field_0):
            revert with 0, 'BoringMath: Underflow'
        if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
            if not 10^18 * uint128(stor8.field_0) / totalTokens:
                if arg1 + uint128(stor8.field_0) < arg1:
                    revert with 0, 'BoringMath: Add Overflow'
                if arg1 + uint128(stor8.field_0) <= 0:
                    return arg1
                if -uint128(stor8.field_0) > 0:
                    revert with 0, 'BoringMath: Underflow'
                return -uint128(stor8.field_0)
            require 10^18 * uint128(stor8.field_0) / totalTokens
            if totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18 * uint128(stor8.field_0) / totalTokens != totalTokens:
                revert with 0, 'BoringMath: Mul Overflow'
            if arg1 + uint128(stor8.field_0) < arg1:
                revert with 0, 'BoringMath: Add Overflow'
            if arg1 + uint128(stor8.field_0) <= totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18:
                return arg1
            if (totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18) - uint128(stor8.field_0) > totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18:
                revert with 0, 'BoringMath: Underflow'
            return ((totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18) - uint128(stor8.field_0))
        if not uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
            if arg1 + uint128(stor8.field_0) < arg1:
                revert with 0, 'BoringMath: Add Overflow'
            if arg1 + uint128(stor8.field_0) <= 0:
                return arg1
            if -uint128(stor8.field_0) > 0:
                revert with 0, 'BoringMath: Underflow'
            return -uint128(stor8.field_0)
        require uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)))
        if (uint128(stor7.field_0) * totalTokens) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) * totalTokens) / uint128(stor7.field_0) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) != totalTokens:
            revert with 0, 'BoringMath: Mul Overflow'
        if arg1 + uint128(stor8.field_0) < arg1:
            revert with 0, 'BoringMath: Add Overflow'
        if arg1 + uint128(stor8.field_0) <= (uint128(stor7.field_0) * totalTokens) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) * totalTokens) / 10^18:
            return arg1
        if ((uint128(stor7.field_0) * totalTokens) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) * totalTokens) / 10^18) - uint128(stor8.field_0) > (uint128(stor7.field_0) * totalTokens) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) * totalTokens) / 10^18:
            revert with 0, 'BoringMath: Underflow'
        return (((uint128(stor7.field_0) * totalTokens) - (0 / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) * totalTokens) / 10^18) - uint128(stor8.field_0))
    require uint128(uint128(stor7.field_0) - uint128(stor7.field_128))
    if (block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint128(uint128(stor7.field_0) - uint128(stor7.field_128)) != block.timestamp - uint64(stor6.field_0):
        revert with 0, 'BoringMath: Mul Overflow'
    require uint64(uint64(stor6.field_0) - uint64(stor6.field_0))
    if uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) > uint128(stor7.field_0):
        revert with 0, 'BoringMath: Underflow'
    if 10^18 * uint128(stor8.field_0) / totalTokens > uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
        if not 10^18 * uint128(stor8.field_0) / totalTokens:
            if arg1 + uint128(stor8.field_0) < arg1:
                revert with 0, 'BoringMath: Add Overflow'
            if arg1 + uint128(stor8.field_0) <= 0:
                return arg1
            if -uint128(stor8.field_0) > 0:
                revert with 0, 'BoringMath: Underflow'
            return -uint128(stor8.field_0)
        require 10^18 * uint128(stor8.field_0) / totalTokens
        if totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18 * uint128(stor8.field_0) / totalTokens != totalTokens:
            revert with 0, 'BoringMath: Mul Overflow'
        if arg1 + uint128(stor8.field_0) < arg1:
            revert with 0, 'BoringMath: Add Overflow'
        if arg1 + uint128(stor8.field_0) <= totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18:
            return arg1
        if (totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18) - uint128(stor8.field_0) > totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18:
            revert with 0, 'BoringMath: Underflow'
        return ((totalTokens * 10^18 * uint128(stor8.field_0) / totalTokens / 10^18) - uint128(stor8.field_0))
    if not uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))):
        if arg1 + uint128(stor8.field_0) < arg1:
            revert with 0, 'BoringMath: Add Overflow'
        if arg1 + uint128(stor8.field_0) <= 0:
            return arg1
        if -uint128(stor8.field_0) > 0:
            revert with 0, 'BoringMath: Underflow'
        return -uint128(stor8.field_0)
    require uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)))
    if (uint128(stor7.field_0) * totalTokens) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) * totalTokens) / uint128(stor7.field_0) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0))) != totalTokens:
        revert with 0, 'BoringMath: Mul Overflow'
    if arg1 + uint128(stor8.field_0) < arg1:
        revert with 0, 'BoringMath: Add Overflow'
    if arg1 + uint128(stor8.field_0) <= (uint128(stor7.field_0) * totalTokens) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) * totalTokens) / 10^18:
        return arg1
    if ((uint128(stor7.field_0) * totalTokens) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) * totalTokens) / 10^18) - uint128(stor8.field_0) > (uint128(stor7.field_0) * totalTokens) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) * totalTokens) / 10^18:
        revert with 0, 'BoringMath: Underflow'
    return (((uint128(stor7.field_0) * totalTokens) - ((block.timestamp * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) - (uint64(stor6.field_0) * uint128(uint128(stor7.field_0) - uint128(stor7.field_128))) / uint64(uint64(stor6.field_0) - uint64(stor6.field_0)) * totalTokens) / 10^18) - uint128(stor8.field_0))
}

function batch(bytes[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    if not arg1.length:
        require arg1.length <= test266151307()
        mem[(32 * arg1.length) + 128] = arg1.length
        mem[64] = (64 * arg1.length) + 160
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                delegate this.address with:
                     gas gas_remaining wei
                    args call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                if not return_data.size:
                    if delegate.return_code:
                        if mem[96] < 68:
                            _543 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_543] = 29
                            mem[_543 + 32] = 'Transaction reverted silently'
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _573 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _573 + 68] = mem[idx + _543 + 32]
                                idx = idx + 32
                                continue 
                            mem[_573 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _573 + -mem[64] + 100
                        _542 = mem[100]
                        require mem[100] >= 32
                        _562 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _596 = mem[mem[132] + 132]
                        require mem[mem[132] + 132] <= test266151307()
                        _620 = mem[64]
                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                        mem[_620] = mem[mem[132] + 132]
                        require _542 + 132 >= _596 + _562 + 164
                        s = 0
                        while s < _596:
                            mem[s + _620 + 32] = mem[s + _562 + 164]
                            s = s + 32
                            continue 
                        if ceil32(_596) <= _596:
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _1039 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1089 = mem[_620]
                            mem[mem[64] + 36] = mem[_620]
                            idx = 0
                            while idx < _1089:
                                mem[idx + _1039 + 68] = mem[idx + _620 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1089) > _1089:
                                mem[_1089 + _1039 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1089) + _1039 + -mem[64] + 68
                        mem[_596 + _620 + 32] = 0
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1041 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1090 = mem[_620]
                        mem[mem[64] + 36] = mem[_620]
                        idx = 0
                        while idx < _1090:
                            mem[idx + _1041 + 68] = mem[idx + _620 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1090) > _1090:
                            mem[_1090 + _1041 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1090) + _1041 + -mem[64] + 68
                    if mem[96] < 68:
                        _555 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_555] = 29
                        mem[_555 + 32] = 'Transaction reverted silently'
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _599 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _599 + 68] = mem[idx + _555 + 32]
                            idx = idx + 32
                            continue 
                        mem[_599 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _599 + -mem[64] + 100
                    _554 = mem[100]
                    require mem[100] >= 32
                    _574 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _622 = mem[mem[132] + 132]
                    require mem[mem[132] + 132] <= test266151307()
                    _640 = mem[64]
                    require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                    mem[_640] = mem[mem[132] + 132]
                    require _554 + 132 >= _622 + _574 + 164
                    s = 0
                    while s < _622:
                        mem[s + _640 + 32] = mem[s + _574 + 164]
                        s = s + 32
                        continue 
                    if ceil32(_622) <= _622:
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1043 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1091 = mem[_640]
                        mem[mem[64] + 36] = mem[_640]
                        idx = 0
                        while idx < _1091:
                            mem[idx + _1043 + 68] = mem[idx + _640 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1091) > _1091:
                            mem[_1091 + _1043 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1091) + _1043 + -mem[64] + 68
                    mem[_622 + _640 + 32] = 0
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                        idx = idx + 1
                        continue 
                    _1045 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1092 = mem[_640]
                    mem[mem[64] + 36] = mem[_640]
                    idx = 0
                    while idx < _1092:
                        mem[idx + _1045 + 68] = mem[idx + _640 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1092) > _1092:
                        mem[_1092 + _1045 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1092) + _1045 + -mem[64] + 68
                _520 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_520] = return_data.size
                mem[_520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if return_data.size < 68:
                        _546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_546] = 29
                        mem[_546 + 32] = 'Transaction reverted silently'
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _520
                            idx = idx + 1
                            continue 
                        _576 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _576 + 68] = mem[idx + _546 + 32]
                            idx = idx + 32
                            continue 
                        mem[_576 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _576 + -mem[64] + 100
                    _545 = Mask(224, 0, return_data.size), mem[_520 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_520 + 32 len 4] >= 32
                    _563 = mem[_520 + 36]
                    require mem[_520 + 36] <= test266151307()
                    require _520 + mem[_520 + 36] + 67 < _520 + Mask(224, 0, return_data.size), mem[_520 + 32 len 4] + 36
                    _600 = mem[_520 + mem[_520 + 36] + 36]
                    require mem[_520 + mem[_520 + 36] + 36] <= test266151307()
                    _624 = mem[64]
                    require mem[64] + ceil32(mem[_520 + mem[_520 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_520 + mem[_520 + 36] + 36]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[_520 + mem[_520 + 36] + 36]) + 32
                    mem[_624] = _600
                    require _545 + 36 >= _600 + _563 + 68
                    s = 0
                    while s < _600:
                        mem[s + _624 + 32] = mem[s + _520 + _563 + 68]
                        s = s + 32
                        continue 
                    if ceil32(_600) <= _600:
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _520
                            idx = idx + 1
                            continue 
                        _1047 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _600
                        idx = 0
                        while idx < _600:
                            mem[idx + _1047 + 68] = mem[idx + _624 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_600) > _600:
                            mem[_600 + _1047 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_600) + _1047 + -mem[64] + 68
                    mem[_600 + _624 + 32] = 0
                    if delegate.return_code:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _520
                        idx = idx + 1
                        continue 
                    _1049 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _600
                    idx = 0
                    while idx < _600:
                        mem[idx + _1049 + 68] = mem[idx + _624 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_600) > _600:
                        mem[_600 + _1049 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_600) + _1049 + -mem[64] + 68
                if return_data.size < 68:
                    _557 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_557] = 29
                    mem[_557 + 32] = 'Transaction reverted silently'
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _520
                        idx = idx + 1
                        continue 
                    _603 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 29
                    idx = 0
                    while idx < 29:
                        mem[idx + _603 + 68] = mem[idx + _557 + 32]
                        idx = idx + 32
                        continue 
                    mem[_603 + 97] = 0
                    revert with memory
                      from mem[64]
                       len _603 + -mem[64] + 100
                _556 = Mask(224, 0, return_data.size), mem[_520 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_520 + 32 len 4] >= 32
                _577 = mem[_520 + 36]
                require mem[_520 + 36] <= test266151307()
                require _520 + mem[_520 + 36] + 67 < _520 + Mask(224, 0, return_data.size), mem[_520 + 32 len 4] + 36
                _626 = mem[_520 + mem[_520 + 36] + 36]
                require mem[_520 + mem[_520 + 36] + 36] <= test266151307()
                _642 = mem[64]
                require mem[64] + ceil32(mem[_520 + mem[_520 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_520 + mem[_520 + 36] + 36]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_520 + mem[_520 + 36] + 36]) + 32
                mem[_642] = _626
                require _556 + 36 >= _626 + _577 + 68
                s = 0
                while s < _626:
                    mem[s + _642 + 32] = mem[s + _520 + _577 + 68]
                    s = s + 32
                    continue 
                if ceil32(_626) <= _626:
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _520
                        idx = idx + 1
                        continue 
                    _1051 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _626
                    idx = 0
                    while idx < _626:
                        mem[idx + _1051 + 68] = mem[idx + _642 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_626) > _626:
                        mem[_626 + _1051 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_626) + _1051 + -mem[64] + 68
                mem[_626 + _642 + 32] = 0
                if not arg2:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = bool(delegate.return_code)
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = _520
                    idx = idx + 1
                    continue 
                _1053 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _626
                idx = 0
                while idx < _626:
                    mem[idx + _1053 + 68] = mem[idx + _642 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_626) > _626:
                    mem[_626 + _1053 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_626) + _1053 + -mem[64] + 68
            _496 = mem[64]
            mem[mem[64]] = 64
            _498 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _498:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_496 + 32] = (32 * _498) + 96
            _988 = mem[(32 * arg1.length) + 128]
            mem[_496 + (32 * _498) + 96] = mem[(32 * arg1.length) + 128]
            idx = 0
            s = (32 * arg1.length) + 160
            t = _496 + (32 * _498) + (32 * _988) + 128
            u = _496 + (32 * _498) + 128
            while idx < _988:
                mem[u] = t + -_496 + -(32 * _498) - 128
                _1390 = mem[s]
                _1429 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1429:
                    mem[v + t + 32] = mem[v + _1390 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1429) > _1429:
                    mem[_1429 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1429) + t + 32
                u = u + 32
                continue 
        else:
            mem[(32 * arg1.length) + 160] = 96
            s = (32 * arg1.length) + 160
            idx = arg1.length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg1.length:
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                delegate this.address with:
                     gas gas_remaining wei
                    args call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                if not return_data.size:
                    if delegate.return_code:
                        if mem[96] < 68:
                            _1139 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1139] = 29
                            mem[_1139 + 32] = 'Transaction reverted silently'
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _1179 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _1179 + 68] = mem[idx + _1139 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1179 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _1179 + -mem[64] + 100
                        _1138 = mem[100]
                        require mem[100] >= 32
                        _1158 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _1206 = mem[mem[132] + 132]
                        require mem[mem[132] + 132] <= test266151307()
                        _1222 = mem[64]
                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                        mem[_1222] = mem[mem[132] + 132]
                        require _1138 + 132 >= _1206 + _1158 + 164
                        s = 0
                        while s < _1206:
                            mem[s + _1222 + 32] = mem[s + _1158 + 164]
                            s = s + 32
                            continue 
                        if ceil32(_1206) <= _1206:
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _1489 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1537 = mem[_1222]
                            mem[mem[64] + 36] = mem[_1222]
                            idx = 0
                            while idx < _1537:
                                mem[idx + _1489 + 68] = mem[idx + _1222 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1537) > _1537:
                                mem[_1537 + _1489 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1537) + _1489 + -mem[64] + 68
                        mem[_1206 + _1222 + 32] = 0
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1491 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1538 = mem[_1222]
                        mem[mem[64] + 36] = mem[_1222]
                        idx = 0
                        while idx < _1538:
                            mem[idx + _1491 + 68] = mem[idx + _1222 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1538) > _1538:
                            mem[_1538 + _1491 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1538) + _1491 + -mem[64] + 68
                    if mem[96] < 68:
                        _1151 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1151] = 29
                        mem[_1151 + 32] = 'Transaction reverted silently'
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1209 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _1209 + 68] = mem[idx + _1151 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1209 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _1209 + -mem[64] + 100
                    _1150 = mem[100]
                    require mem[100] >= 32
                    _1180 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _1224 = mem[mem[132] + 132]
                    require mem[mem[132] + 132] <= test266151307()
                    _1238 = mem[64]
                    require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                    mem[_1238] = mem[mem[132] + 132]
                    require _1150 + 132 >= _1224 + _1180 + 164
                    s = 0
                    while s < _1224:
                        mem[s + _1238 + 32] = mem[s + _1180 + 164]
                        s = s + 32
                        continue 
                    if ceil32(_1224) <= _1224:
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1493 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1539 = mem[_1238]
                        mem[mem[64] + 36] = mem[_1238]
                        idx = 0
                        while idx < _1539:
                            mem[idx + _1493 + 68] = mem[idx + _1238 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1539) > _1539:
                            mem[_1539 + _1493 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1539) + _1493 + -mem[64] + 68
                    mem[_1224 + _1238 + 32] = 0
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                        idx = idx + 1
                        continue 
                    _1495 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1540 = mem[_1238]
                    mem[mem[64] + 36] = mem[_1238]
                    idx = 0
                    while idx < _1540:
                        mem[idx + _1495 + 68] = mem[idx + _1238 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1540) > _1540:
                        mem[_1540 + _1495 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1540) + _1495 + -mem[64] + 68
                _1112 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1112] = return_data.size
                mem[_1112 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if return_data.size < 68:
                        _1142 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1142] = 29
                        mem[_1142 + 32] = 'Transaction reverted silently'
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _1112
                            idx = idx + 1
                            continue 
                        _1182 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _1182 + 68] = mem[idx + _1142 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1182 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _1182 + -mem[64] + 100
                    _1141 = Mask(224, 0, return_data.size), mem[_1112 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_1112 + 32 len 4] >= 32
                    _1159 = mem[_1112 + 36]
                    require mem[_1112 + 36] <= test266151307()
                    require _1112 + mem[_1112 + 36] + 67 < _1112 + Mask(224, 0, return_data.size), mem[_1112 + 32 len 4] + 36
                    _1210 = mem[_1112 + mem[_1112 + 36] + 36]
                    require mem[_1112 + mem[_1112 + 36] + 36] <= test266151307()
                    _1226 = mem[64]
                    require mem[64] + ceil32(mem[_1112 + mem[_1112 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_1112 + mem[_1112 + 36] + 36]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[_1112 + mem[_1112 + 36] + 36]) + 32
                    mem[_1226] = _1210
                    require _1141 + 36 >= _1210 + _1159 + 68
                    s = 0
                    while s < _1210:
                        mem[s + _1226 + 32] = mem[s + _1112 + _1159 + 68]
                        s = s + 32
                        continue 
                    if ceil32(_1210) <= _1210:
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _1112
                            idx = idx + 1
                            continue 
                        _1497 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _1210
                        idx = 0
                        while idx < _1210:
                            mem[idx + _1497 + 68] = mem[idx + _1226 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1210) > _1210:
                            mem[_1210 + _1497 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1210) + _1497 + -mem[64] + 68
                    mem[_1210 + _1226 + 32] = 0
                    if delegate.return_code:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _1112
                        idx = idx + 1
                        continue 
                    _1499 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1210
                    idx = 0
                    while idx < _1210:
                        mem[idx + _1499 + 68] = mem[idx + _1226 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1210) > _1210:
                        mem[_1210 + _1499 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1210) + _1499 + -mem[64] + 68
                if return_data.size < 68:
                    _1153 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1153] = 29
                    mem[_1153 + 32] = 'Transaction reverted silently'
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _1112
                        idx = idx + 1
                        continue 
                    _1213 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 29
                    idx = 0
                    while idx < 29:
                        mem[idx + _1213 + 68] = mem[idx + _1153 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1213 + 97] = 0
                    revert with memory
                      from mem[64]
                       len _1213 + -mem[64] + 100
                _1152 = Mask(224, 0, return_data.size), mem[_1112 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_1112 + 32 len 4] >= 32
                _1183 = mem[_1112 + 36]
                require mem[_1112 + 36] <= test266151307()
                require _1112 + mem[_1112 + 36] + 67 < _1112 + Mask(224, 0, return_data.size), mem[_1112 + 32 len 4] + 36
                _1228 = mem[_1112 + mem[_1112 + 36] + 36]
                require mem[_1112 + mem[_1112 + 36] + 36] <= test266151307()
                _1240 = mem[64]
                require mem[64] + ceil32(mem[_1112 + mem[_1112 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_1112 + mem[_1112 + 36] + 36]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_1112 + mem[_1112 + 36] + 36]) + 32
                mem[_1240] = _1228
                require _1152 + 36 >= _1228 + _1183 + 68
                s = 0
                while s < _1228:
                    mem[s + _1240 + 32] = mem[s + _1112 + _1183 + 68]
                    s = s + 32
                    continue 
                if ceil32(_1228) <= _1228:
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _1112
                        idx = idx + 1
                        continue 
                    _1501 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1228
                    idx = 0
                    while idx < _1228:
                        mem[idx + _1501 + 68] = mem[idx + _1240 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1228) > _1228:
                        mem[_1228 + _1501 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1228) + _1501 + -mem[64] + 68
                mem[_1228 + _1240 + 32] = 0
                if not arg2:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = bool(delegate.return_code)
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = _1112
                    idx = idx + 1
                    continue 
                _1503 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _1228
                idx = 0
                while idx < _1228:
                    mem[idx + _1503 + 68] = mem[idx + _1240 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1228) > _1228:
                    mem[_1228 + _1503 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1228) + _1503 + -mem[64] + 68
            _1008 = mem[64]
            mem[mem[64]] = 64
            _1010 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _1010:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1008 + 32] = (32 * _1010) + 96
            _1399 = mem[(32 * arg1.length) + 128]
            mem[_1008 + (32 * _1010) + 96] = mem[(32 * arg1.length) + 128]
            idx = 0
            s = (32 * arg1.length) + 160
            t = _1008 + (32 * _1010) + (32 * _1399) + 128
            u = _1008 + (32 * _1010) + 128
            while idx < _1399:
                mem[u] = t + -_1008 + -(32 * _1010) - 128
                _1603 = mem[s]
                _1623 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1623:
                    mem[v + t + 32] = mem[v + _1603 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1623) > _1623:
                    mem[_1623 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1623) + t + 32
                u = u + 32
                continue 
    else:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        require arg1.length <= test266151307()
        mem[(32 * arg1.length) + 128] = arg1.length
        mem[64] = (64 * arg1.length) + 160
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                delegate this.address with:
                     gas gas_remaining wei
                    args call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                if not return_data.size:
                    if delegate.return_code:
                        if mem[96] < 68:
                            _549 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_549] = 29
                            mem[_549 + 32] = 'Transaction reverted silently'
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _585 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _585 + 68] = mem[idx + _549 + 32]
                                idx = idx + 32
                                continue 
                            mem[_585 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _585 + -mem[64] + 100
                        _548 = mem[100]
                        require mem[100] >= 32
                        _567 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _608 = mem[mem[132] + 132]
                        require mem[mem[132] + 132] <= test266151307()
                        _630 = mem[64]
                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                        mem[_630] = mem[mem[132] + 132]
                        require _548 + 132 >= _608 + _567 + 164
                        s = 0
                        while s < _608:
                            mem[s + _630 + 32] = mem[s + _567 + 164]
                            s = s + 32
                            continue 
                        if ceil32(_608) <= _608:
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _1056 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1100 = mem[_630]
                            mem[mem[64] + 36] = mem[_630]
                            idx = 0
                            while idx < _1100:
                                mem[idx + _1056 + 68] = mem[idx + _630 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1100) > _1100:
                                mem[_1100 + _1056 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1100) + _1056 + -mem[64] + 68
                        mem[_608 + _630 + 32] = 0
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1058 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1101 = mem[_630]
                        mem[mem[64] + 36] = mem[_630]
                        idx = 0
                        while idx < _1101:
                            mem[idx + _1058 + 68] = mem[idx + _630 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1101) > _1101:
                            mem[_1101 + _1058 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1101) + _1058 + -mem[64] + 68
                    if mem[96] < 68:
                        _559 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_559] = 29
                        mem[_559 + 32] = 'Transaction reverted silently'
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _611 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _611 + 68] = mem[idx + _559 + 32]
                            idx = idx + 32
                            continue 
                        mem[_611 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _611 + -mem[64] + 100
                    _558 = mem[100]
                    require mem[100] >= 32
                    _586 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _632 = mem[mem[132] + 132]
                    require mem[mem[132] + 132] <= test266151307()
                    _650 = mem[64]
                    require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                    mem[_650] = mem[mem[132] + 132]
                    require _558 + 132 >= _632 + _586 + 164
                    s = 0
                    while s < _632:
                        mem[s + _650 + 32] = mem[s + _586 + 164]
                        s = s + 32
                        continue 
                    if ceil32(_632) <= _632:
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1060 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1102 = mem[_650]
                        mem[mem[64] + 36] = mem[_650]
                        idx = 0
                        while idx < _1102:
                            mem[idx + _1060 + 68] = mem[idx + _650 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1102) > _1102:
                            mem[_1102 + _1060 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1102) + _1060 + -mem[64] + 68
                    mem[_632 + _650 + 32] = 0
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                        idx = idx + 1
                        continue 
                    _1062 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1103 = mem[_650]
                    mem[mem[64] + 36] = mem[_650]
                    idx = 0
                    while idx < _1103:
                        mem[idx + _1062 + 68] = mem[idx + _650 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1103) > _1103:
                        mem[_1103 + _1062 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1103) + _1062 + -mem[64] + 68
                _524 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_524] = return_data.size
                mem[_524 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if return_data.size < 68:
                        _552 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_552] = 29
                        mem[_552 + 32] = 'Transaction reverted silently'
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _524
                            idx = idx + 1
                            continue 
                        _588 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _588 + 68] = mem[idx + _552 + 32]
                            idx = idx + 32
                            continue 
                        mem[_588 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _588 + -mem[64] + 100
                    _551 = Mask(224, 0, return_data.size), mem[_524 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_524 + 32 len 4] >= 32
                    _568 = mem[_524 + 36]
                    require mem[_524 + 36] <= test266151307()
                    require _524 + mem[_524 + 36] + 67 < _524 + Mask(224, 0, return_data.size), mem[_524 + 32 len 4] + 36
                    _612 = mem[_524 + mem[_524 + 36] + 36]
                    require mem[_524 + mem[_524 + 36] + 36] <= test266151307()
                    _634 = mem[64]
                    require mem[64] + ceil32(mem[_524 + mem[_524 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_524 + mem[_524 + 36] + 36]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[_524 + mem[_524 + 36] + 36]) + 32
                    mem[_634] = _612
                    require _551 + 36 >= _612 + _568 + 68
                    s = 0
                    while s < _612:
                        mem[s + _634 + 32] = mem[s + _524 + _568 + 68]
                        s = s + 32
                        continue 
                    if ceil32(_612) <= _612:
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _524
                            idx = idx + 1
                            continue 
                        _1064 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _612
                        idx = 0
                        while idx < _612:
                            mem[idx + _1064 + 68] = mem[idx + _634 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_612) > _612:
                            mem[_612 + _1064 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_612) + _1064 + -mem[64] + 68
                    mem[_612 + _634 + 32] = 0
                    if delegate.return_code:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _524
                        idx = idx + 1
                        continue 
                    _1066 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _612
                    idx = 0
                    while idx < _612:
                        mem[idx + _1066 + 68] = mem[idx + _634 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_612) > _612:
                        mem[_612 + _1066 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_612) + _1066 + -mem[64] + 68
                if return_data.size < 68:
                    _561 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_561] = 29
                    mem[_561 + 32] = 'Transaction reverted silently'
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _524
                        idx = idx + 1
                        continue 
                    _615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 29
                    idx = 0
                    while idx < 29:
                        mem[idx + _615 + 68] = mem[idx + _561 + 32]
                        idx = idx + 32
                        continue 
                    mem[_615 + 97] = 0
                    revert with memory
                      from mem[64]
                       len _615 + -mem[64] + 100
                _560 = Mask(224, 0, return_data.size), mem[_524 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_524 + 32 len 4] >= 32
                _589 = mem[_524 + 36]
                require mem[_524 + 36] <= test266151307()
                require _524 + mem[_524 + 36] + 67 < _524 + Mask(224, 0, return_data.size), mem[_524 + 32 len 4] + 36
                _636 = mem[_524 + mem[_524 + 36] + 36]
                require mem[_524 + mem[_524 + 36] + 36] <= test266151307()
                _652 = mem[64]
                require mem[64] + ceil32(mem[_524 + mem[_524 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_524 + mem[_524 + 36] + 36]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_524 + mem[_524 + 36] + 36]) + 32
                mem[_652] = _636
                require _560 + 36 >= _636 + _589 + 68
                s = 0
                while s < _636:
                    mem[s + _652 + 32] = mem[s + _524 + _589 + 68]
                    s = s + 32
                    continue 
                if ceil32(_636) <= _636:
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _524
                        idx = idx + 1
                        continue 
                    _1068 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _636
                    idx = 0
                    while idx < _636:
                        mem[idx + _1068 + 68] = mem[idx + _652 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_636) > _636:
                        mem[_636 + _1068 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_636) + _1068 + -mem[64] + 68
                mem[_636 + _652 + 32] = 0
                if not arg2:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = bool(delegate.return_code)
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = _524
                    idx = idx + 1
                    continue 
                _1070 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _636
                idx = 0
                while idx < _636:
                    mem[idx + _1070 + 68] = mem[idx + _652 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_636) > _636:
                    mem[_636 + _1070 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_636) + _1070 + -mem[64] + 68
            _497 = mem[64]
            mem[mem[64]] = 64
            _499 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _499:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_497 + 32] = (32 * _499) + 96
            _998 = mem[(32 * arg1.length) + 128]
            mem[_497 + (32 * _499) + 96] = mem[(32 * arg1.length) + 128]
            idx = 0
            s = (32 * arg1.length) + 160
            t = _497 + (32 * _499) + (32 * _998) + 128
            u = _497 + (32 * _499) + 128
            while idx < _998:
                mem[u] = t + -_497 + -(32 * _499) - 128
                _1409 = mem[s]
                _1431 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1431:
                    mem[v + t + 32] = mem[v + _1409 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1431) > _1431:
                    mem[_1431 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1431) + t + 32
                u = u + 32
                continue 
        else:
            mem[(32 * arg1.length) + 160] = 96
            s = (32 * arg1.length) + 160
            idx = arg1.length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg1.length:
                require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
                require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
                require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
                _1071 = mem[64]
                mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
                mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _1071 + -mem[64] - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if mem[96] < 68:
                            _1145 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1145] = 29
                            mem[_1145 + 32] = 'Transaction reverted silently'
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _1201 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _1201 + 68] = mem[idx + _1145 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1201 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _1201 + -mem[64] + 100
                        _1144 = mem[100]
                        require mem[100] >= 32
                        _1160 = mem[132]
                        require mem[132] <= test266151307()
                        require mem[132] + 163 < mem[100] + 132
                        _1214 = mem[mem[132] + 132]
                        require mem[mem[132] + 132] <= test266151307()
                        _1230 = mem[64]
                        require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                        mem[_1230] = mem[mem[132] + 132]
                        require _1144 + 132 >= _1214 + _1160 + 164
                        s = 0
                        while s < _1214:
                            mem[s + _1230 + 32] = mem[s + _1160 + 164]
                            s = s + 32
                            continue 
                        if ceil32(_1214) <= _1214:
                            if delegate.return_code:
                                require idx < mem[96]
                                mem[(32 * idx) + 128] = bool(delegate.return_code)
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                                idx = idx + 1
                                continue 
                            _1505 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _1546 = mem[_1230]
                            mem[mem[64] + 36] = mem[_1230]
                            idx = 0
                            while idx < _1546:
                                mem[idx + _1505 + 68] = mem[idx + _1230 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_1546) > _1546:
                                mem[_1546 + _1505 + 68] = 0
                            revert with memory
                              from mem[64]
                               len ceil32(_1546) + _1505 + -mem[64] + 68
                        mem[_1214 + _1230 + 32] = 0
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1507 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1547 = mem[_1230]
                        mem[mem[64] + 36] = mem[_1230]
                        idx = 0
                        while idx < _1547:
                            mem[idx + _1507 + 68] = mem[idx + _1230 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1547) > _1547:
                            mem[_1547 + _1507 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1547) + _1507 + -mem[64] + 68
                    if mem[96] < 68:
                        _1155 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1155] = 29
                        mem[_1155 + 32] = 'Transaction reverted silently'
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1217 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _1217 + 68] = mem[idx + _1155 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1217 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _1217 + -mem[64] + 100
                    _1154 = mem[100]
                    require mem[100] >= 32
                    _1202 = mem[132]
                    require mem[132] <= test266151307()
                    require mem[132] + 163 < mem[100] + 132
                    _1232 = mem[mem[132] + 132]
                    require mem[mem[132] + 132] <= test266151307()
                    _1242 = mem[64]
                    require mem[64] + ceil32(mem[mem[132] + 132]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[132] + 132]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
                    mem[_1242] = mem[mem[132] + 132]
                    require _1154 + 132 >= _1232 + _1202 + 164
                    s = 0
                    while s < _1232:
                        mem[s + _1242 + 32] = mem[s + _1202 + 164]
                        s = s + 32
                        continue 
                    if ceil32(_1232) <= _1232:
                        if not arg2:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                            idx = idx + 1
                            continue 
                        _1509 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1548 = mem[_1242]
                        mem[mem[64] + 36] = mem[_1242]
                        idx = 0
                        while idx < _1548:
                            mem[idx + _1509 + 68] = mem[idx + _1242 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1548) > _1548:
                            mem[_1548 + _1509 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1548) + _1509 + -mem[64] + 68
                    mem[_1232 + _1242 + 32] = 0
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 96
                        idx = idx + 1
                        continue 
                    _1511 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _1549 = mem[_1242]
                    mem[mem[64] + 36] = mem[_1242]
                    idx = 0
                    while idx < _1549:
                        mem[idx + _1511 + 68] = mem[idx + _1242 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1549) > _1549:
                        mem[_1549 + _1511 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1549) + _1511 + -mem[64] + 68
                _1115 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1115] = return_data.size
                mem[_1115 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if return_data.size < 68:
                        _1148 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1148] = 29
                        mem[_1148 + 32] = 'Transaction reverted silently'
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _1115
                            idx = idx + 1
                            continue 
                        _1204 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _1204 + 68] = mem[idx + _1148 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1204 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _1204 + -mem[64] + 100
                    _1147 = Mask(224, 0, return_data.size), mem[_1115 + 32 len 4]
                    require Mask(224, 0, return_data.size), mem[_1115 + 32 len 4] >= 32
                    _1161 = mem[_1115 + 36]
                    require mem[_1115 + 36] <= test266151307()
                    require _1115 + mem[_1115 + 36] + 67 < _1115 + Mask(224, 0, return_data.size), mem[_1115 + 32 len 4] + 36
                    _1218 = mem[_1115 + mem[_1115 + 36] + 36]
                    require mem[_1115 + mem[_1115 + 36] + 36] <= test266151307()
                    _1234 = mem[64]
                    require mem[64] + ceil32(mem[_1115 + mem[_1115 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_1115 + mem[_1115 + 36] + 36]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[_1115 + mem[_1115 + 36] + 36]) + 32
                    mem[_1234] = _1218
                    require _1147 + 36 >= _1218 + _1161 + 68
                    s = 0
                    while s < _1218:
                        mem[s + _1234 + 32] = mem[s + _1115 + _1161 + 68]
                        s = s + 32
                        continue 
                    if ceil32(_1218) <= _1218:
                        if delegate.return_code:
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = bool(delegate.return_code)
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = _1115
                            idx = idx + 1
                            continue 
                        _1513 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = _1218
                        idx = 0
                        while idx < _1218:
                            mem[idx + _1513 + 68] = mem[idx + _1234 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1218) > _1218:
                            mem[_1218 + _1513 + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_1218) + _1513 + -mem[64] + 68
                    mem[_1218 + _1234 + 32] = 0
                    if delegate.return_code:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _1115
                        idx = idx + 1
                        continue 
                    _1515 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1218
                    idx = 0
                    while idx < _1218:
                        mem[idx + _1515 + 68] = mem[idx + _1234 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1218) > _1218:
                        mem[_1218 + _1515 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1218) + _1515 + -mem[64] + 68
                if return_data.size < 68:
                    _1157 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1157] = 29
                    mem[_1157 + 32] = 'Transaction reverted silently'
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _1115
                        idx = idx + 1
                        continue 
                    _1221 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 29
                    idx = 0
                    while idx < 29:
                        mem[idx + _1221 + 68] = mem[idx + _1157 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1221 + 97] = 0
                    revert with memory
                      from mem[64]
                       len _1221 + -mem[64] + 100
                _1156 = Mask(224, 0, return_data.size), mem[_1115 + 32 len 4]
                require Mask(224, 0, return_data.size), mem[_1115 + 32 len 4] >= 32
                _1205 = mem[_1115 + 36]
                require mem[_1115 + 36] <= test266151307()
                require _1115 + mem[_1115 + 36] + 67 < _1115 + Mask(224, 0, return_data.size), mem[_1115 + 32 len 4] + 36
                _1236 = mem[_1115 + mem[_1115 + 36] + 36]
                require mem[_1115 + mem[_1115 + 36] + 36] <= test266151307()
                _1244 = mem[64]
                require mem[64] + ceil32(mem[_1115 + mem[_1115 + 36] + 36]) + 32 >= mem[64] and mem[64] + ceil32(mem[_1115 + mem[_1115 + 36] + 36]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_1115 + mem[_1115 + 36] + 36]) + 32
                mem[_1244] = _1236
                require _1156 + 36 >= _1236 + _1205 + 68
                s = 0
                while s < _1236:
                    mem[s + _1244 + 32] = mem[s + _1115 + _1205 + 68]
                    s = s + 32
                    continue 
                if ceil32(_1236) <= _1236:
                    if not arg2:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = bool(delegate.return_code)
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _1115
                        idx = idx + 1
                        continue 
                    _1517 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = _1236
                    idx = 0
                    while idx < _1236:
                        mem[idx + _1517 + 68] = mem[idx + _1244 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1236) > _1236:
                        mem[_1236 + _1517 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_1236) + _1517 + -mem[64] + 68
                mem[_1236 + _1244 + 32] = 0
                if not arg2:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = bool(delegate.return_code)
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = _1115
                    idx = idx + 1
                    continue 
                _1519 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _1236
                idx = 0
                while idx < _1236:
                    mem[idx + _1519 + 68] = mem[idx + _1244 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1236) > _1236:
                    mem[_1236 + _1519 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_1236) + _1519 + -mem[64] + 68
            _1009 = mem[64]
            mem[mem[64]] = 64
            _1011 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _1011:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1009 + 32] = (32 * _1011) + 96
            _1418 = mem[(32 * arg1.length) + 128]
            mem[_1009 + (32 * _1011) + 96] = mem[(32 * arg1.length) + 128]
            idx = 0
            s = (32 * arg1.length) + 160
            t = _1009 + (32 * _1011) + (32 * _1418) + 128
            u = _1009 + (32 * _1011) + 128
            while idx < _1418:
                mem[u] = t + -_1009 + -(32 * _1011) - 128
                _1613 = mem[s]
                _1625 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1625:
                    mem[v + t + 32] = mem[v + _1613 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1625) > _1625:
                    mem[_1625 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1625) + t + 32
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
