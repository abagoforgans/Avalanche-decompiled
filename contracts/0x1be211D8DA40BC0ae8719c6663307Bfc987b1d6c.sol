contract main {




// =====================  Runtime code  =====================


const tokenTemplate = 2

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86


uint256 DOMAIN_SEPARATOR;
mapping of uint256 balanceOf;
mapping of uint256 nonces;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
bool stor8; offset 256
uint8 decimals;
uint8 stor8; offset 8
uint8 stor8; offset 16

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function decimals() {
    return decimals
}

function DOMAIN_SEPARATOR() {
    return DOMAIN_SEPARATOR
}

function paused() {
    return bool(uint8(stor8.field_16))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    return nonces[arg1]
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

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function init(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
}

function pause() {
    if not roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x734d696e7461626c65546f6b656e3a206d75737420686176652070617573657220726f6c6520746f2070617573,
                    mem[209 len 19]
    if uint8(stor8.field_16):
        revert with 0, 'Pausable: paused'
    uint8(stor8.field_16) = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x744d696e7461626c65546f6b656e3a206d75737420686176652070617573657220726f6c6520746f20756e70617573,
                    mem[211 len 17]
    if not uint8(stor8.field_16):
        revert with 0, 'Pausable: not paused'
    uint8(stor8.field_16) = 0
    emit Unpaused(msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if uint8(stor8.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x6545524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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

function getInitData(string arg1, string arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[192] = arg3
    mem[224] = arg4
    mem[128] = 128
    mem[256] = arg1.length
    mem[288 len arg1.length] = arg1[all]
    mem[arg1.length + 288] = 0
    mem[160] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 288] = arg2.length
    mem[ceil32(arg1.length) + 320 len arg2.length] = arg2[all]
    return Array(len=ceil32(arg1.length) + ceil32(arg2.length) + 192, data=mem[128 len floor32(ceil32(arg1.length) + ceil32(arg2.length) + 31) + 6], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 31) + 390 len (3 * ceil32(arg1.length)) + (3 * ceil32(arg2.length)) + -floor32(ceil32(arg1.length) + ceil32(arg2.length) + 31) + 186]), 
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x21416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x654d696e7461626c65546f6b656e3a206d7573742068617665206d696e74657220726f6c6520746f206d696e,
                    mem[208 len 20]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if uint8(stor8.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    if not arg1:
        revert with 0, 'ERC20: Owner cannot be 0'
    if block.timestamp >= arg4:
        revert with 0, 'ERC20: Expired'
    nonces[address(arg1)]++
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg1:
        revert with 0, 'ERC20: Invalid Signature'
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[642 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[642 len 4]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x2a45524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x7445524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if uint8(stor8.field_16):
        revert with 0, 32, 42, 0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[302 len 22]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x6545524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if uint8(stor8.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if uint8(stor8.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function initToken(string arg1, string arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if uint8(stor8.field_8):
        revert with 0, 
                    32,
                    42,
                    0x6545524332303a20746f6b656e2068617320616c7265616479206265656e20696e697469616c697a6564,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 270 len 22]
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = chainid
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = this.address
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    DOMAIN_SEPARATOR = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
    decimals = 18
    uint8(stor8.field_8) = 1
    stor8.field_256 % 1 = 0
    if not roleAdmin[1][address(arg3)].field_0:
        uint256(roleAdmin.field_0)++
        stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0 = arg3
        stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160 = 0
        roleAdmin[1][address(arg3)].field_0 = uint256(roleAdmin.field_0)
        emit RoleGranted(0, arg3, msg.sender);
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg3)].field_0:
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0++
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0 = arg3
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_160 = 0
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg3)].field_0 = roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0
        emit RoleGranted(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, arg3, msg.sender);
    if not roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(arg3)].field_0:
        roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0++
        roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0].field_0 = arg3
        roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0].field_160 = 0
        roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(arg3)].field_0 = roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0
        emit RoleGranted(0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86, arg3, msg.sender);
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if uint8(stor8.field_16):
        revert with 0, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 398 len 22]
    if arg4 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg4
    if arg4 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg4
    emit Transfer(arg4, 0, msg.sender);
}

function initToken(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg1.length >= 128
    require cd[(arg1 + 36)] <= 4294967296
    require cd[(arg1 + 36)] + 68 <= arg1.length + 36
    require cd[(arg1 + cd[(arg1 + 36)] + 36)] <= 4294967296 and cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 36)] + 68 <= arg1.length + 36
    require cd[(arg1 + 68)] <= 4294967296
    require cd[(arg1 + 68)] + 68 <= arg1.length + 36
    require cd[(arg1 + cd[(arg1 + 68)] + 36)] <= 4294967296 and cd[(arg1 + 68)] + cd[(arg1 + cd[(arg1 + 68)] + 36)] + 68 <= arg1.length + 36
    if uint8(stor8.field_8):
        revert with 0, 
                    32,
                    42,
                    0x6545524332303a20746f6b656e2068617320616c7265616479206265656e20696e697469616c697a6564,
                    mem[ceil32(cd[(arg1 + cd[(arg1 + 36)] + 36)]) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 36)]) + 270 len 22]
    name[] = Array(len=cd[(arg1 + cd[(arg1 + 36)] + 36)], data=call.data[arg1 + cd[(arg1 + 36)] + 68 len cd[(arg1 + cd[(arg1 + 36)] + 36)]])
    symbol[] = Array(len=cd[(arg1 + cd[(arg1 + 68)] + 36)], data=call.data[arg1 + cd[(arg1 + 68)] + 68 len cd[(arg1 + cd[(arg1 + 68)] + 36)]])
    mem[ceil32(cd[(arg1 + cd[(arg1 + 36)] + 36)]) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 36)]) + 192] = 0x47e79534a245952e8b16893a336b85a3d9ea9fa8c573f3d803afb92a79469218
    mem[ceil32(cd[(arg1 + cd[(arg1 + 36)] + 36)]) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 36)]) + 224] = chainid
    mem[ceil32(cd[(arg1 + cd[(arg1 + 36)] + 36)]) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 36)]) + 256] = this.address
    mem[ceil32(cd[(arg1 + cd[(arg1 + 36)] + 36)]) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 36)]) + 160] = 96
    DOMAIN_SEPARATOR = sha3(mem[ceil32(cd[(arg1 + cd[(arg1 + 36)] + 36)]) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 36)]) + 192 len Mask(8 * -ceil32(cd[(arg1 + cd[(arg1 + 68)] + 36)]) + cd[(arg1 + cd[(arg1 + 68)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg1 + cd[(arg1 + 36)] + 36)]) + cd[(arg1 + cd[(arg1 + 68)] + 36)] + 192 len -cd[(arg1 + cd[(arg1 + 68)] + 36)] + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 36)])]])
    decimals = 18
    uint8(stor8.field_8) = 1
    stor8.field_256 % 1 = 0
    if not roleAdmin[1][address(cd[(arg1 + 100)])].field_0:
        uint256(roleAdmin.field_0)++
        stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0 = address(cd[(arg1 + 100)])
        stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160 = 0
        roleAdmin[1][address(cd[(arg1 + 100)])].field_0 = uint256(roleAdmin.field_0)
        emit RoleGranted(0, address(cd[(arg1 + 100)]), msg.sender);
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(cd[(arg1 + 100)])].field_0:
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0++
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0 = address(cd[(arg1 + 100)])
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_160 = 0
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(cd[(arg1 + 100)])].field_0 = roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0
        emit RoleGranted(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, address(cd[(arg1 + 100)]), msg.sender);
    if not roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(cd[(arg1 + 100)])].field_0:
        roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0++
        roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0].field_0 = address(cd[(arg1 + 100)])
        roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0].field_160 = 0
        roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(cd[(arg1 + 100)])].field_0 = roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86].field_0
        emit RoleGranted(0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86, address(cd[(arg1 + 100)]), msg.sender);
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if uint8(stor8.field_16):
        revert with 0, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[ceil32(cd[(arg1 + cd[(arg1 + 36)] + 36)]) + ceil32(cd[(arg1 + cd[(arg1 + 68)] + 36)]) + 398 len 22]
    if cd[(arg1 + 132)] + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += cd[(arg1 + 132)]
    if cd[(arg1 + 132)] + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += cd[(arg1 + 132)]
    emit Transfer(cd[(arg1 + 132)], 0, msg.sender);
}



}
