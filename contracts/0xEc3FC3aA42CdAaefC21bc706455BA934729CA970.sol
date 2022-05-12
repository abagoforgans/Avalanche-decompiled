contract main {




// =====================  Runtime code  =====================


#
#  - executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5)
#  - initialize(string arg1, string arg2, uint8 arg3, address arg4)
#
const APPROVE_WITH_AUTHORIZATION_TYPEHASH = 0x808c10407a796f3ef2c7ea38c0638ea9d2b8a1c63e3ca9e1f56ce84ae59df73c

const WITHDRAW_WITH_AUTHORIZATION_TYPEHASH = 0x6c8f8f5f82f0c140edd12e80d10ff715a36d6e5f73e406394862b5f1eb44c4f9

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const DECREASE_ALLOWANCE_WITH_AUTHORIZATION_TYPEHASH = 0xb70559e94cbda91958ebec07f9b65b3b490097c8d25c8dacd71105df1015b6d8

const RESCUER_ROLE = 0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050

const TRANSFER_WITH_AUTHORIZATION_TYPEHASH = 0x7c7c6cdb67a18743f49ec6fa9b35f50d52ed05cbed4cc592e13b44501c1a2267

const DEFAULT_ADMIN_ROLE = 0

const DEPOSITOR_ROLE = 0x8f4f2da22e8ac8f11e15f9fc141cddbb5deea8800186560abb6e68c5496619a9

const INCREASE_ALLOWANCE_WITH_AUTHORIZATION_TYPEHASH = 0x424222bb050a1f7f14017232a5671f2680a2d3420f504bd565cf03035c53198a

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const CANCEL_AUTHORIZATION_TYPEHASH = 0x158b0a9edf7a828aad02f63cd515c68ef2f50ba807396f6d12842833a1597429

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a

const EIP712_VERSION = '1'

const BLACKLISTER_ROLE = 0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9

const META_TRANSACTION_TYPEHASH = 0x23d10def3caacba2e4042e0c75d44a42d2558aabcf5ce951d0642a8032e1e653


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct roleAdmin;
array of struct stor7;
uint8 stor8;
uint256 DOMAIN_SEPARATOR;
mapping of uint256 nonces;
mapping of uint8 authorizationState;
mapping of uint8 stor12;
uint8 stor13;

function name() {
    return name[0 len name.length]
}

function initialized() {
    return bool(stor8)
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
    return bool(stor13)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    return nonces[address(arg1)]
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

function authorizationState(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require authorizationState[address(arg1)][arg2] <= 2
    return authorizationState[address(arg1)][arg2]
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[address(arg1)])
}

function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function pause() {
    if msg.sender != this.address:
        if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(msg.sender)].field_0:
            stor13 = 1
            emit Pause()
        mem[164] = uint256(stor7.field_0)
        idx = 164
        s = 0
        while stor7.length + 164 > idx + 32:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(mem[calldata.size + 96])].field_0:
        stor13 = 1
        emit Pause()
    mem[ceil32(calldata.size) + 196] = uint256(stor7.field_0)
    idx = ceil32(calldata.size) + 196
    s = 0
    while ceil32(calldata.size) + stor7.length + 196 > idx + 32:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 
                32,
                stor7.length,
                mem[ceil32(calldata.size) + 196 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
}

function unpause() {
    if msg.sender != this.address:
        if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(msg.sender)].field_0:
            stor13 = 0
            emit Unpause()
        mem[164] = uint256(stor7.field_0)
        idx = 164
        s = 0
        while stor7.length + 164 > idx + 32:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(mem[calldata.size + 96])].field_0:
        stor13 = 0
        emit Unpause()
    mem[ceil32(calldata.size) + 196] = uint256(stor7.field_0)
    idx = ceil32(calldata.size) + 196
    s = 0
    while ceil32(calldata.size) + stor7.length + 196 > idx + 32:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 
                32,
                stor7.length,
                mem[ceil32(calldata.size) + 196 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9][1][address(msg.sender)].field_0:
            stor12[address(arg1)] = 1
            emit Blacklisted(arg1);
        mem[164] = uint256(stor7.field_0)
        idx = 164
        s = 0
        while stor7.length + 164 > idx + 32:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9][1][address(mem[calldata.size + 96])].field_0:
        stor12[address(arg1)] = 1
        emit Blacklisted(arg1);
    mem[ceil32(calldata.size) + 196] = uint256(stor7.field_0)
    idx = ceil32(calldata.size) + 196
    s = 0
    while ceil32(calldata.size) + stor7.length + 196 > idx + 32:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 
                32,
                stor7.length,
                mem[ceil32(calldata.size) + 196 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
}

function unBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9][1][address(msg.sender)].field_0:
            stor12[address(arg1)] = 0
            emit UnBlacklisted(arg1);
        mem[164] = uint256(stor7.field_0)
        idx = 164
        s = 0
        while stor7.length + 164 > idx + 32:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9][1][address(mem[calldata.size + 96])].field_0:
        stor12[address(arg1)] = 0
        emit UnBlacklisted(arg1);
    mem[ceil32(calldata.size) + 196] = uint256(stor7.field_0)
    idx = ceil32(calldata.size) + 196
    s = 0
    while ceil32(calldata.size) + stor7.length + 196 > idx + 32:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 
                32,
                stor7.length,
                mem[ceil32(calldata.size) + 196 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
}

function cancelAuthorization(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    if stor13:
        revert with 0, 'Pausable: paused'
    require authorizationState[address(arg1)][arg2] <= 2
    if authorizationState[address(arg1)][arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x734761734162737472616374696f6e3a20617574686f72697a6174696f6e2069732075736564206f722063616e63656c65,
                    mem[213 len 15]
    if arg5 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 32, 38, 0x7345435265636f7665723a20696e76616c6964207369676e6174757265202773272076616c75, mem[428 len 26]
    if arg3 != 27:
        if arg3 != 28:
            revert with 0, 32, 38, 0x6545435265636f7665723a20696e76616c6964207369676e6174757265202776272076616c75, mem[428 len 26]
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x158b0a9edf7a828aad02f63cd515c68ef2f50ba807396f6d12842833a1597429, address(arg1), arg2)), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 32, 33, 0x524761734162737472616374696f6e3a20696e76616c6964207369676e61747572, Mask(216, 0, arg5), mem[482 len 4]
    authorizationState[address(arg1)][arg2] = 2
    emit AuthorizationCanceled(arg1, arg2);
}

function updateMetadata(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.sender != this.address:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            mem[164] = uint256(stor7.field_0)
            idx = 164
            s = 0
            while stor7.length + 164 > idx + 32:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin[0][1][address(mem[calldata.size + 96])].field_0:
            mem[ceil32(calldata.size) + 196] = uint256(stor7.field_0)
            idx = ceil32(calldata.size) + 196
            s = 0
            while ceil32(calldata.size) + stor7.length + 196 > idx + 32:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 
                        32,
                        stor7.length,
                        mem[ceil32(calldata.size) + 196 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    DOMAIN_SEPARATOR = sha3(0x36c25de3e541d5d970f66e4210d728721220fff5c077cc6cd008b3a0c62adab7, sha3(arg1[all]), sha3('1'), this.address, chainid)
}

function deposit(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.sender != this.address:
        if not roleAdmin[0x8f4f2da22e8ac8f11e15f9fc141cddbb5deea8800186560abb6e68c5496619a9][1][address(msg.sender)].field_0:
            mem[164] = uint256(stor7.field_0)
            idx = 164
            s = 0
            while stor7.length + 164 > idx + 32:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin[0x8f4f2da22e8ac8f11e15f9fc141cddbb5deea8800186560abb6e68c5496619a9][1][address(mem[calldata.size + 96])].field_0:
            mem[ceil32(calldata.size) + 196] = uint256(stor7.field_0)
            idx = ceil32(calldata.size) + 196
            s = 0
            while ceil32(calldata.size) + stor7.length + 196 > idx + 32:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 
                        32,
                        stor7.length,
                        mem[ceil32(calldata.size) + 196 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
    require arg2.length >= 32
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if cd[(arg2 + 36)] + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += cd[(arg2 + 36)]
    if cd[(arg2 + 36)] + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += cd[(arg2 + 36)]
    emit Transfer(cd[(arg2 + 36)], 0, arg1);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
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
            if msg.sender != this.address:
                emit RoleGranted(arg1, arg2, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(arg1, arg2, mem[calldata.size + 108 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(mem[calldata.size + 96])].field_0:
            revert with 0, 
                        32,
                        47,
                        0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                        mem[ceil32(calldata.size) + 243 len 17]
        if not roleAdmin[arg1][1][address(arg2)].field_0:
            roleAdmin[arg1].field_0++
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
            roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
            if msg.sender != this.address:
                emit RoleGranted(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
}

function pausers() {
    require roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0 <= test266151307()
    if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0:
        mem[128 len 32 * roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0] = call.data[calldata.size len 32 * roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0]
    idx = 0
    while idx < roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0:
        mem[32] = 6
        if idx >= roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0) + 230 len 30]
        mem[0] = sha3(0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a, 6)
        require idx < roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0
        mem[(32 * idx) + 128] = roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0) + 192 len floor32(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0)] = mem[128 len floor32(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0)]
    return Array(len=roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0, data=mem[128 len floor32(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0)], mem[(32 * roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0) + floor32(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0) + 192 len (32 * roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0) - floor32(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a].field_0)]), 
}

function rescuers() {
    require roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0 <= test266151307()
    if roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0:
        mem[128 len 32 * roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0] = call.data[calldata.size len 32 * roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0]
    idx = 0
    while idx < roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0:
        mem[32] = 6
        if idx >= roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0) + 230 len 30]
        mem[0] = sha3(0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050, 6)
        require idx < roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0
        mem[(32 * idx) + 128] = roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050][idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0) + 192 len floor32(roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0)] = mem[128 len floor32(roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0)]
    return Array(len=roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0, data=mem[128 len floor32(roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0)], mem[(32 * roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0) + floor32(roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0) + 192 len (32 * roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0) - floor32(roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050].field_0)]), 
}

function blacklisters() {
    require roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0 <= test266151307()
    if roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0:
        mem[128 len 32 * roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0] = call.data[calldata.size len 32 * roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0]
    idx = 0
    while idx < roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0:
        mem[32] = 6
        if idx >= roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0) + 230 len 30]
        mem[0] = sha3(0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9, 6)
        require idx < roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0
        mem[(32 * idx) + 128] = roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9][idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0) + 192 len floor32(roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0)] = mem[128 len floor32(roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0)]
    return Array(len=roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0, data=mem[128 len floor32(roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0)], mem[(32 * roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0) + floor32(roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0) + 192 len (32 * roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0) - floor32(roleAdmin[0x98db8a220cd0f09badce9f22d0ba7e93edb3d404448cc3560d391ab096ad16e9].field_0)]), 
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    if stor13:
        revert with 0, 'Pausable: paused'
    if stor12[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if stor12[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if this.address == msg.sender:
        revert with 0, 'Caller is this contract'
    if arg4 < block.timestamp:
        revert with 0, 'Permit: permit is expired'
    nonces[address(arg1)]++
    if arg7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 32, 38, 0x7345435265636f7665723a20696e76616c6964207369676e6174757265202773272076616c75, mem[524 len 26]
    if arg5 != 27:
        if arg5 != 28:
            revert with 0, 32, 38, 0x6545435265636f7665723a20696e76616c6964207369676e6174757265202776272076616c75, mem[524 len 26]
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'Permit: invalid signature'
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[578 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[578 len 4]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
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
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + 108 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg2 != mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        47,
                        0x6f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                        mem[ceil32(calldata.size) + 243 len 17]
        if roleAdmin[arg1][1][address(arg2)].field_0:
            require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
            require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
            roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
            require roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
            roleAdmin[arg1].field_0--
            roleAdmin[arg1][1][address(arg2)].field_0 = 0
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
}

function withdrawWithAuthorization(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) {
    require calldata.size - 4 >= 256
    if stor13:
        revert with 0, 'Pausable: paused'
    if stor12[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if block.timestamp <= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x734761734162737472616374696f6e3a20617574686f72697a6174696f6e206973206e6f74207965742076616c69,
                    mem[210 len 18]
    if block.timestamp >= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654761734162737472616374696f6e3a20617574686f72697a6174696f6e20697320657870697265,
                    mem[204 len 24]
    require authorizationState[address(arg1)][arg5] <= 2
    if authorizationState[address(arg1)][arg5]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x734761734162737472616374696f6e3a20617574686f72697a6174696f6e2069732075736564206f722063616e63656c65,
                    mem[213 len 15]
    if arg8 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 32, 38, 0x7345435265636f7665723a20696e76616c6964207369676e6174757265202773272076616c75, mem[524 len 26]
    if arg6 != 27:
        if arg6 != 28:
            revert with 0, 32, 38, 0x6545435265636f7665723a20696e76616c6964207369676e6174757265202776272076616c75, mem[524 len 26]
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6c8f8f5f82f0c140edd12e80d10ff715a36d6e5f73e406394862b5f1eb44c4f9, address(arg1), arg2, arg3, arg4, arg5)), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 32, 33, 0x524761734162737472616374696f6e3a20696e76616c6964207369676e61747572, Mask(216, 0, arg8), mem[578 len 4]
    authorizationState[address(arg1)][arg5] = 1
    emit AuthorizationUsed(arg1, arg5);
    if not arg1:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, Mask(216, 0, arg8), mem[578 len 4]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, Mask(240, 0, arg7), 0
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x64416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + 108 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(mem[calldata.size + 96])].field_0:
            revert with 0, 
                        32,
                        48,
                        0x64416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                        mem[ceil32(calldata.size) + 244 len 16]
        if roleAdmin[arg1][1][address(arg2)].field_0:
            require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
            require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
            roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
            require roleAdmin[arg1].field_0
            roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
            roleAdmin[arg1].field_0--
            roleAdmin[arg1][1][address(arg2)].field_0 = 0
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
}

function approveWithAuthorization(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require calldata.size - 4 >= 288
    if stor13:
        revert with 0, 'Pausable: paused'
    if stor12[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if stor12[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if block.timestamp <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x734761734162737472616374696f6e3a20617574686f72697a6174696f6e206973206e6f74207965742076616c69,
                    mem[210 len 18]
    if block.timestamp >= arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654761734162737472616374696f6e3a20617574686f72697a6174696f6e20697320657870697265,
                    mem[204 len 24]
    require authorizationState[address(arg1)][arg6] <= 2
    if authorizationState[address(arg1)][arg6]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x734761734162737472616374696f6e3a20617574686f72697a6174696f6e2069732075736564206f722063616e63656c65,
                    mem[213 len 15]
    if arg9 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 32, 38, 0x7345435265636f7665723a20696e76616c6964207369676e6174757265202773272076616c75, mem[556 len 26]
    if arg7 != 27:
        if arg7 != 28:
            revert with 0, 32, 38, 0x6545435265636f7665723a20696e76616c6964207369676e6174757265202776272076616c75, mem[556 len 26]
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x808c10407a796f3ef2c7ea38c0638ea9d2b8a1c63e3ca9e1f56ce84ae59df73c, address(arg1), address(arg2), arg3, arg4, arg5, arg6)), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 32, 33, 0x524761734162737472616374696f6e3a20696e76616c6964207369676e61747572, Mask(216, 0, arg9), mem[610 len 4]
    authorizationState[address(arg1)][arg6] = 1
    emit AuthorizationUsed(arg1, arg6);
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg9),
                    mem[610 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg9), mem[610 len 4]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function decreaseAllowanceWithAuthorization(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require calldata.size - 4 >= 288
    if stor13:
        revert with 0, 'Pausable: paused'
    if stor12[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if stor12[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if block.timestamp <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x734761734162737472616374696f6e3a20617574686f72697a6174696f6e206973206e6f74207965742076616c69,
                    mem[210 len 18]
    if block.timestamp >= arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654761734162737472616374696f6e3a20617574686f72697a6174696f6e20697320657870697265,
                    mem[204 len 24]
    require authorizationState[address(arg1)][arg6] <= 2
    if authorizationState[address(arg1)][arg6]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x734761734162737472616374696f6e3a20617574686f72697a6174696f6e2069732075736564206f722063616e63656c65,
                    mem[213 len 15]
    if arg9 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 32, 38, 0x7345435265636f7665723a20696e76616c6964207369676e6174757265202773272076616c75, mem[556 len 26]
    if arg7 != 27:
        if arg7 != 28:
            revert with 0, 32, 38, 0x6545435265636f7665723a20696e76616c6964207369676e6174757265202776272076616c75, mem[556 len 26]
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xb70559e94cbda91958ebec07f9b65b3b490097c8d25c8dacd71105df1015b6d8, address(arg1), address(arg2), arg3, arg4, arg5, arg6)), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 32, 33, 0x524761734162737472616374696f6e3a20696e76616c6964207369676e61747572, Mask(216, 0, arg9), mem[610 len 4]
    authorizationState[address(arg1)][arg6] = 1
    emit AuthorizationUsed(arg1, arg6);
    if arg3 > allowance[address(arg1)][address(arg2)]:
        revert with 0, 32, 37, 0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, Mask(216, 0, arg8), 0
    if not arg1:
        revert with 0, 32, 36, 0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[682 len 28]
    if not arg2:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[680 len 30]
    allowance[address(arg1)][address(arg2)] -= arg3
    emit Approval((allowance[address(arg1)][address(arg2)] - arg3), arg1, arg2);
}

function increaseAllowanceWithAuthorization(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require calldata.size - 4 >= 288
    if stor13:
        revert with 0, 'Pausable: paused'
    if stor12[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if stor12[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if block.timestamp <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x734761734162737472616374696f6e3a20617574686f72697a6174696f6e206973206e6f74207965742076616c69,
                    mem[210 len 18]
    if block.timestamp >= arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654761734162737472616374696f6e3a20617574686f72697a6174696f6e20697320657870697265,
                    mem[204 len 24]
    require authorizationState[address(arg1)][arg6] <= 2
    if authorizationState[address(arg1)][arg6]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x734761734162737472616374696f6e3a20617574686f72697a6174696f6e2069732075736564206f722063616e63656c65,
                    mem[213 len 15]
    if arg9 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 32, 38, 0x7345435265636f7665723a20696e76616c6964207369676e6174757265202773272076616c75, mem[556 len 26]
    if arg7 != 27:
        if arg7 != 28:
            revert with 0, 32, 38, 0x6545435265636f7665723a20696e76616c6964207369676e6174757265202776272076616c75, mem[556 len 26]
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x424222bb050a1f7f14017232a5671f2680a2d3420f504bd565cf03035c53198a, address(arg1), address(arg2), arg3, arg4, arg5, arg6)), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 32, 33, 0x524761734162737472616374696f6e3a20696e76616c6964207369676e61747572, Mask(216, 0, arg9), mem[610 len 4]
    authorizationState[address(arg1)][arg6] = 1
    emit AuthorizationUsed(arg1, arg6);
    if arg3 + allowance[address(arg1)][address(arg2)] < allowance[address(arg1)][address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg9),
                    mem[610 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg9), mem[610 len 4]
    allowance[address(arg1)][address(arg2)] += arg3
    emit Approval((arg3 + allowance[address(arg1)][address(arg2)]), arg1, arg2);
}

function transferWithAuthorization(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require calldata.size - 4 >= 288
    if stor13:
        revert with 0, 'Pausable: paused'
    if stor12[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if stor12[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if block.timestamp <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x734761734162737472616374696f6e3a20617574686f72697a6174696f6e206973206e6f74207965742076616c69,
                    mem[210 len 18]
    if block.timestamp >= arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654761734162737472616374696f6e3a20617574686f72697a6174696f6e20697320657870697265,
                    mem[204 len 24]
    require authorizationState[address(arg1)][arg6] <= 2
    if authorizationState[address(arg1)][arg6]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x734761734162737472616374696f6e3a20617574686f72697a6174696f6e2069732075736564206f722063616e63656c65,
                    mem[213 len 15]
    if arg9 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 32, 38, 0x7345435265636f7665723a20696e76616c6964207369676e6174757265202773272076616c75, mem[556 len 26]
    if arg7 != 27:
        if arg7 != 28:
            revert with 0, 32, 38, 0x6545435265636f7665723a20696e76616c6964207369676e6174757265202776272076616c75, mem[556 len 26]
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x7c7c6cdb67a18743f49ec6fa9b35f50d52ed05cbed4cc592e13b44501c1a2267, address(arg1), address(arg2), arg3, arg4, arg5, arg6)), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 32, 33, 0x524761734162737472616374696f6e3a20696e76616c6964207369676e61747572, Mask(216, 0, arg9), mem[610 len 4]
    authorizationState[address(arg1)][arg6] = 1
    emit AuthorizationUsed(arg1, arg6);
    if not arg1:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    Mask(184, 0, arg9),
                    mem[610 len 4]
    if not arg2:
        revert with 0, 32, 35, 0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573, Mask(200, 0, arg9), mem[610 len 4]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 0, arg8), 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
}

function rescueERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if msg.sender != this.address:
        if not roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050][1][address(msg.sender)].field_0:
            mem[164] = uint256(stor7.field_0)
            idx = 164
            s = 0
            while stor7.length + 164 > idx + 32:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor7.length, mem[164 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
        mem[324 len 0] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
            if not unknown_0xa9059cbb(?????), address(arg2) << 64:
                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        if not roleAdmin[0xcf6f9f892731e14b8859835f2ff35575f447fb501f46243c4eb8bac19e31a050][1][address(mem[calldata.size + 96])].field_0:
            mem[ceil32(calldata.size) + 196] = uint256(stor7.field_0)
            idx = ceil32(calldata.size) + 196
            s = 0
            while ceil32(calldata.size) + stor7.length + 196 > idx + 32:
                mem[idx + 32] = stor7[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 
                        32,
                        stor7.length,
                        mem[ceil32(calldata.size) + 196 len stor7.length + (floor32(stor7.length - 1) + -stor7.length + 32 % 32)]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(calldata.size) + 292 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 224, mem[ceil32(calldata.size) + 356 len 4]
        if not return_data.size:
            if not ext_call.success:
                if calldata.size:
                    revert with call.data[0 len calldata.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if calldata.size:
                require calldata.size >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(calldata.size) + 402 len 22]
        else:
            mem[ceil32(calldata.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(calldata.size) + 324]:
                    revert with 0, 
                                32,
                                42,
                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(calldata.size) + ceil32(return_data.size) + 403 len 22]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor13:
        revert with 0, 'Pausable: paused'
    if msg.sender != this.address:
        if stor12[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[201 len 27]
        if stor12[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[201 len 27]
        if msg.sender != this.address:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[200 len 28]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[198 len 30]
            allowance[address(msg.sender)][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, arg1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if not mem[calldata.size + 108 len 20]:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 232 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 230 len 30]
            allowance[mem[calldata.size + 108 len 20]][address(arg1)] = arg2
            emit Approval(arg2, mem[calldata.size + 108 len 20], arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if stor12[mem[calldata.size + 108 len 20]]:
            revert with 0, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[ceil32(calldata.size) + 233 len 27]
        if stor12[address(arg1)]:
            revert with 0, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[ceil32(calldata.size) + 233 len 27]
        if msg.sender != this.address:
            if not msg.sender:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 232 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 230 len 30]
            allowance[address(msg.sender)][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, arg1);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            if not mem[calldata.size + ceil32(calldata.size) + 140 len 20]:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 264 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 262 len 30]
            allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] = arg2
            emit Approval(arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if stor12[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[201 len 27]
        if msg.sender != this.address:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if not mem[calldata.size + 108 len 20]:
                revert with 0, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 229 len 31]
            if arg1 > balanceOf[address(mem[calldata.size + 96])]:
                revert with 0, 
                            32,
                            34,
                            0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(calldata.size) + 194 len 30],
                            mem[ceil32(calldata.size) + 254 len 2]
            balanceOf[address(mem[calldata.size + 96])] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, mem[calldata.size + 108 len 20], 0);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if stor12[mem[calldata.size + 108 len 20]]:
            revert with 0, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[ceil32(calldata.size) + 233 len 27]
        if msg.sender != this.address:
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 229 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            34,
                            0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(calldata.size) + 194 len 30],
                            mem[ceil32(calldata.size) + 254 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            if not mem[calldata.size + ceil32(calldata.size) + 140 len 20]:
                revert with 0, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 261 len 31]
            mem[(2 * ceil32(calldata.size)) + 192 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(mem[calldata.size + ceil32(calldata.size) + 128])]:
                revert with 0, 
                            32,
                            34,
                            0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            mem[(2 * ceil32(calldata.size)) + 226 len 30],
                            mem[(2 * ceil32(calldata.size)) + 286 len 2]
            balanceOf[address(mem[calldata.size + ceil32(calldata.size) + 128])] -= arg1
            mem[(2 * ceil32(calldata.size)) + 256] = 30
            mem[(2 * ceil32(calldata.size)) + 288] = 'SafeMath: subtraction overflow'
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            mem[(2 * ceil32(calldata.size)) + 320] = arg1
            emit Transfer(arg1, mem[calldata.size + ceil32(calldata.size) + 140 len 20], 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor13:
        revert with 0, 'Pausable: paused'
    if msg.sender != this.address:
        if stor12[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[201 len 27]
        if stor12[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[201 len 27]
        if msg.sender != this.address:
            if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[200 len 28]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[198 len 30]
            allowance[address(msg.sender)][address(arg1)] += arg2
            emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if arg2 + allowance[mem[calldata.size + 108 len 20]][address(arg1)] < allowance[mem[calldata.size + 108 len 20]][address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[calldata.size + 108 len 20]:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 232 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 230 len 30]
            allowance[address(mem[calldata.size + 96])][address(arg1)] = arg2 + allowance[mem[calldata.size + 108 len 20]][address(arg1)]
            emit Approval((arg2 + allowance[mem[calldata.size + 108 len 20]][address(arg1)]), mem[calldata.size + 108 len 20], arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if stor12[mem[calldata.size + 108 len 20]]:
            revert with 0, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[ceil32(calldata.size) + 233 len 27]
        if stor12[address(arg1)]:
            revert with 0, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[ceil32(calldata.size) + 233 len 27]
        if msg.sender != this.address:
            if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if not msg.sender:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 232 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 230 len 30]
            allowance[address(msg.sender)][address(arg1)] += arg2
            emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            if arg2 + allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] < allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[calldata.size + ceil32(calldata.size) + 140 len 20]:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 264 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 262 len 30]
            allowance[address(mem[calldata.size + ceil32(calldata.size) + 128])][address(arg1)] = arg2 + allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)]
            emit Approval((arg2 + allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)]), mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor13:
        revert with 0, 'Pausable: paused'
    if msg.sender != this.address:
        if stor12[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[201 len 27]
        if stor12[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[201 len 27]
        if msg.sender != this.address:
            if arg2 > allowance[address(msg.sender)][address(arg1)]:
                revert with 0, 
                            32,
                            37,
                            0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                            mem[165 len 27],
                            mem[219 len 5]
            if not msg.sender:
                revert with 0, 32, 36, 0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
            if not arg1:
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
            allowance[address(msg.sender)][address(arg1)] -= arg2
            emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if arg2 > allowance[address(mem[calldata.size + 96])][address(arg1)]:
                revert with 0, 
                            32,
                            37,
                            0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                            mem[ceil32(calldata.size) + 197 len 27],
                            mem[ceil32(calldata.size) + 251 len 5]
            if not mem[calldata.size + 108 len 20]:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 328 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 326 len 30]
            allowance[address(mem[calldata.size + 96])][address(arg1)] -= arg2
            emit Approval((allowance[address(mem[calldata.size + 96])][address(arg1)] - arg2), mem[calldata.size + 108 len 20], arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if stor12[mem[calldata.size + 108 len 20]]:
            revert with 0, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[ceil32(calldata.size) + 233 len 27]
        if stor12[address(arg1)]:
            revert with 0, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[ceil32(calldata.size) + 233 len 27]
        if msg.sender != this.address:
            if arg2 > allowance[address(msg.sender)][address(arg1)]:
                revert with 0, 
                            32,
                            37,
                            0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                            mem[ceil32(calldata.size) + 197 len 27],
                            mem[ceil32(calldata.size) + 251 len 5]
            if not msg.sender:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 328 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 326 len 30]
            allowance[address(msg.sender)][address(arg1)] -= arg2
            emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            mem[(2 * ceil32(calldata.size)) + 192 len 37] = 0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572
            if arg2 > allowance[address(mem[calldata.size + ceil32(calldata.size) + 128])][address(arg1)]:
                revert with 0, 
                            32,
                            37,
                            0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                            mem[(2 * ceil32(calldata.size)) + 229 len 27],
                            mem[(2 * ceil32(calldata.size)) + 283 len 5]
            if not mem[calldata.size + ceil32(calldata.size) + 140 len 20]:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 360 len 28]
            if not arg1:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 358 len 30]
            allowance[address(mem[calldata.size + ceil32(calldata.size) + 128])][address(arg1)] -= arg2
            mem[(2 * ceil32(calldata.size)) + 256] = allowance[address(mem[calldata.size + ceil32(calldata.size) + 128])][address(arg1)] - arg2
            emit Approval((allowance[address(mem[calldata.size + ceil32(calldata.size) + 128])][address(arg1)] - arg2), mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor13:
        revert with 0, 'Pausable: paused'
    if msg.sender != this.address:
        if stor12[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[201 len 27]
        if stor12[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[201 len 27]
        if msg.sender != this.address:
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
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if not mem[calldata.size + 108 len 20]:
                revert with 0, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 233 len 27]
            if not arg1:
                revert with 0, 
                            32,
                            35,
                            0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 231 len 29]
            if arg2 > balanceOf[address(mem[calldata.size + 96])]:
                revert with 0, 
                            32,
                            38,
                            0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(calldata.size) + 198 len 26],
                            mem[ceil32(calldata.size) + 250 len 6]
            balanceOf[address(mem[calldata.size + 96])] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, mem[calldata.size + 108 len 20], arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if stor12[mem[calldata.size + 108 len 20]]:
            revert with 0, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[ceil32(calldata.size) + 233 len 27]
        if stor12[address(arg1)]:
            revert with 0, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[ceil32(calldata.size) + 233 len 27]
        if msg.sender != this.address:
            if not msg.sender:
                revert with 0, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 233 len 27]
            if not arg1:
                revert with 0, 
                            32,
                            35,
                            0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 231 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(calldata.size) + 198 len 26],
                            mem[ceil32(calldata.size) + 250 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            if not mem[calldata.size + ceil32(calldata.size) + 140 len 20]:
                revert with 0, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 265 len 27]
            if not arg1:
                revert with 0, 
                            32,
                            35,
                            0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 263 len 29]
            mem[(2 * ceil32(calldata.size)) + 192 len 38] = 0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(mem[calldata.size + ceil32(calldata.size) + 128])]:
                revert with 0, 
                            32,
                            38,
                            0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[(2 * ceil32(calldata.size)) + 230 len 26],
                            mem[(2 * ceil32(calldata.size)) + 282 len 6]
            balanceOf[address(mem[calldata.size + ceil32(calldata.size) + 128])] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            mem[(2 * ceil32(calldata.size)) + 256] = arg2
            emit Transfer(arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        mem[132] = msg.sender
        require ext_code.size(this.address)
        staticcall this.address.0xdd62ed3e with:
                gas gas_remaining wei
               args address(arg1), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x6845524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[200 len 28]
        if msg.sender != this.address:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[200 len 28]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[198 len 30]
            allowance[address(arg1)][address(msg.sender)] = ext_call.return_data[0] - arg2
            emit Approval((ext_call.return_data[0] - arg2), arg1, msg.sender);
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 'tERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if not arg1:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 232 len 28]
            if not mem[calldata.size + 108 len 20]:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 230 len 30]
            allowance[address(arg1)][address(mem[calldata.size + 96])] = ext_call.return_data[0] - arg2
            emit Approval((ext_call.return_data[0] - arg2), arg1, mem[calldata.size + 108 len 20]);
            if not arg1:
                revert with 0, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 229 len 31]
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            34,
                            0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(calldata.size) + 194 len 30],
                            mem[ceil32(calldata.size) + 254 len 2]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(calldata.size) + 164] = mem[calldata.size + 108 len 20]
        require ext_code.size(this.address)
        staticcall this.address.0xdd62ed3e with:
                gas gas_remaining wei
               args address(arg1), mem[calldata.size + 108 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 
                        32,
                        36,
                        0x6845524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[ceil32(calldata.size) + 232 len 28]
        if msg.sender != this.address:
            if not arg1:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 232 len 28]
            if not msg.sender:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 230 len 30]
            allowance[address(arg1)][address(msg.sender)] = ext_call.return_data[0] - arg2
            emit Approval((ext_call.return_data[0] - arg2), arg1, msg.sender);
            if not arg1:
                revert with 0, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(calldata.size) + 229 len 31]
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            34,
                            0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(calldata.size) + 194 len 30],
                            mem[ceil32(calldata.size) + 254 len 2]
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            if not arg1:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 264 len 28]
            if not mem[calldata.size + ceil32(calldata.size) + 140 len 20]:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 262 len 30]
            allowance[address(arg1)][address(mem[calldata.size + ceil32(calldata.size) + 128])] = ext_call.return_data[0] - arg2
            emit Approval((ext_call.return_data[0] - arg2), arg1, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
            if not arg1:
                revert with 0, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 261 len 31]
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            34,
                            0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            mem[(2 * ceil32(calldata.size)) + 226 len 30],
                            mem[(2 * ceil32(calldata.size)) + 286 len 2]
    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor13:
        revert with 0, 'Pausable: paused'
    if msg.sender != this.address:
        if stor12[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[201 len 27]
        if stor12[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[201 len 27]
        if stor12[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                        mem[201 len 27]
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
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if msg.sender != this.address:
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            return 1
        mem[192] = calldata.size
        mem[224 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(calldata.size) + 320] = calldata.size
        mem[ceil32(calldata.size) + 352 len calldata.size] = call.data[0 len calldata.size]
        if arg3 <= allowance[address(arg1)][mem[calldata.size + ceil32(calldata.size) + 332 len 20]]:
            if not arg1:
                revert with 0, 
                            32,
                            36,
                            0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 456 len 28]
            if not mem[calldata.size + 204 len 20]:
                revert with 0, 
                            32,
                            34,
                            0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(2 * ceil32(calldata.size)) + 454 len 30]
            allowance[address(arg1)][address(mem[calldata.size + 192])] = allowance[address(arg1)][mem[calldata.size + ceil32(calldata.size) + 332 len 20]] - arg3
            emit Approval((allowance[address(arg1)][mem[calldata.size + ceil32(calldata.size) + 332 len 20]] - arg3), arg1, mem[calldata.size + 204 len 20]);
            return 1
        mem[(2 * ceil32(calldata.size)) + 356] = 32
        mem[(2 * ceil32(calldata.size)) + 388] = 40
        mem[(2 * ceil32(calldata.size)) + 420 len 64] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(calldata.size) + 296 len 24]
        mem[(2 * ceil32(calldata.size)) + 452] = uint64(calldata.size)
        revert with 0, 
                    32,
                    40,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[ceil32(calldata.size) + 296 len 24],
                    uint64(calldata.size)
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if stor12[mem[calldata.size + 108 len 20]]:
        revert with 0, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[ceil32(calldata.size) + 233 len 27]
    if stor12[address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[ceil32(calldata.size) + 233 len 27]
    if stor12[address(arg2)]:
        revert with 0, 
                    32,
                    37,
                    0x64426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[ceil32(calldata.size) + 233 len 27]
    if not arg1:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[ceil32(calldata.size) + 233 len 27]
    if not arg2:
        revert with 0, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(calldata.size) + 231 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[ceil32(calldata.size) + 198 len 26],
                    mem[ceil32(calldata.size) + 250 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if msg.sender != this.address:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[ceil32(calldata.size) + 296 len 24],
                        mem[ceil32(calldata.size) + 344 len 8]
        if not arg1:
            revert with 0, 
                        32,
                        36,
                        0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 424 len 28]
        if not msg.sender:
            revert with 0, 
                        32,
                        34,
                        0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 422 len 30]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        mem[ceil32(calldata.size) + 224] = calldata.size
        mem[ceil32(calldata.size) + 256 len calldata.size] = call.data[0 len calldata.size]
        mem[(2 * ceil32(calldata.size)) + 288 len 40] = 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
        mem[(2 * ceil32(calldata.size)) + 352] = calldata.size
        mem[(2 * ceil32(calldata.size)) + 384 len calldata.size] = call.data[0 len calldata.size]
        mem[(2 * ceil32(calldata.size)) + calldata.size + 384] = 0
        if arg3 > allowance[address(arg1)][mem[calldata.size + (2 * ceil32(calldata.size)) + 364 len 20]]:
            revert with 0, 
                        32,
                        40,
                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[(2 * ceil32(calldata.size)) + 328 len 24],
                        uint64(calldata.size)
        if not arg1:
            revert with 0, 
                        32,
                        36,
                        0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[(4 * ceil32(calldata.size)) + 488 len 28]
        if not mem[calldata.size + ceil32(calldata.size) + 236 len 20]:
            revert with 0, 
                        32,
                        34,
                        0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[(4 * ceil32(calldata.size)) + 486 len 30]
        allowance[address(arg1)][address(mem[calldata.size + ceil32(calldata.size) + 224])] = allowance[address(arg1)][mem[calldata.size + (2 * ceil32(calldata.size)) + 364 len 20]] - arg3
        mem[(4 * ceil32(calldata.size)) + 384] = allowance[address(arg1)][mem[calldata.size + (2 * ceil32(calldata.size)) + 364 len 20]] - arg3
        emit Approval((allowance[address(arg1)][mem[calldata.size + (2 * ceil32(calldata.size)) + 364 len 20]] - arg3), arg1, mem[calldata.size + ceil32(calldata.size) + 236 len 20]);
    return 1
}



}
