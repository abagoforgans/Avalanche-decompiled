contract main {




// =====================  Runtime code  =====================


const getChainId = chainid

const ERC712_VERSION = ''

const DEFAULT_ADMIN_ROLE = 0

const PREDICATE_ROLE = sha3(Mask(112, 144, 'PREDICATE_ROLE') >> 144)


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct roleAdmin;
array of struct stor7;
uint256 domainSeperator;
mapping of uint256 nonce;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function getDomainSeperator() {
    return domainSeperator
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 232 len 28]
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[ceil32(calldata.size) + 230 len 30]
        allowance[mem[calldata.size + 108 len 20]][address(arg1)] = arg2
        emit Approval(arg2, mem[calldata.size + 108 len 20], arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if not roleAdmin['PREDICATE_ROLE'][1][address(msg.sender)].field_0:
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
        if not roleAdmin['PREDICATE_ROLE'][1][address(mem[calldata.size + 96])].field_0:
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
        allowance[address(msg.sender)][address(arg1)] += arg2
        emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(calldata.size) + 128] = calldata.size
        mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
        if arg2 + allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] < allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 264 len 28]
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 262 len 30]
        allowance[address(mem[calldata.size + 96])][address(arg1)] = arg2 + allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)]
        emit Approval((arg2 + allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)]), mem[calldata.size + 108 len 20], arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x6845524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                        0x6845524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[ceil32(calldata.size) + 198 len 26],
                        mem[ceil32(calldata.size) + 250 len 6]
        balanceOf[address(mem[calldata.size + 96])] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, mem[calldata.size + 108 len 20], arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 
                        32,
                        37,
                        0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                        mem[165 len 27],
                        mem[219 len 5]
        if not msg.sender:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
        if not arg1:
            revert with 0, 32, 34, 0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
        allowance[address(msg.sender)][address(arg1)] -= arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
        return 1
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 224] = calldata.size
    mem[ceil32(calldata.size) + 256 len calldata.size] = call.data[0 len calldata.size]
    if arg2 <= allowance[mem[calldata.size + ceil32(calldata.size) + 236 len 20]][address(arg1)]:
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 360 len 28]
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 358 len 30]
        allowance[address(mem[calldata.size + 96])][address(arg1)] = allowance[mem[calldata.size + ceil32(calldata.size) + 236 len 20]][address(arg1)] - arg2
        emit Approval((allowance[mem[calldata.size + ceil32(calldata.size) + 236 len 20]][address(arg1)] - arg2), mem[calldata.size + 108 len 20], arg1);
        return 1
    mem[(2 * ceil32(calldata.size)) + 260] = 32
    mem[(2 * ceil32(calldata.size)) + 292] = 37
    mem[(2 * ceil32(calldata.size)) + 324 len 64] = 0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[ceil32(calldata.size) + 197 len 27]
    mem[(2 * ceil32(calldata.size)) + 356] = calldata.size % 1099511627776
    revert with 0, 
                32,
                37,
                0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                mem[ceil32(calldata.size) + 197 len 27],
                calldata.size % 1099511627776
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

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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
                        0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 160] = 0
    if not arg1:
        revert with 0, 
                    32,
                    37,
                    0x654e61746976654d6574615472616e73616374696f6e3a20494e56414c49445f5349474e45,
                    mem[ceil32(arg2.length) + 425 len 27]
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0x744d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 
                    32,
                    33,
                    0x655369676e657220616e64207369676e617475726520646f206e6f74206d617463,
                    Mask(216, 0, arg4),
                    mem[ceil32(arg2.length) + 866 len 4]
    if nonce[address(arg1)] + 1 < nonce[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    nonce[address(arg1)]++
    mem[ceil32(arg2.length) + 770] = msg.sender
    mem[ceil32(arg2.length) + 802] = 96
    mem[ceil32(arg2.length) + 834] = arg2.length
    mem[ceil32(arg2.length) + 866 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[ceil32(arg2.length) + 770 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 802 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 770] = address(arg1)
    mem[arg2.length + ceil32(arg2.length) + 790 len floor32(arg2.length + 20)] = call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 770 len floor32(arg2.length + 20) - floor32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 20) + -(arg2.length + 20 % 32) + 822 len arg2.length + 20 % 32] = Mask(8 * (arg2.length + 20 % 32) + -floor32(arg2.length + 20) + arg2.length - 12, 0, arg1), Mask(8 * floor32(arg2.length + 20), -(8 * floor32(arg2.length + 20)) + 256, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 770 len floor32(arg2.length + 20) - floor32(arg2.length)]) << (8 * floor32(arg2.length + 20)) - 256, mem[ceil32(arg2.length) + arg2.length + floor32(arg2.length + 20) + 790 len (2 * floor32(arg2.length + 20)) + -arg2.length + 12]
    call this.address.mem[arg2.length + ceil32(arg2.length) + 790 len 4] with:
         gas gas_remaining wei
        args mem[arg2.length + ceil32(arg2.length) + 794 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6845524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                        0x5245524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
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
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 456 len 28]
        if not mem[calldata.size + 204 len 20]:
            revert with 0, 
                        32,
                        34,
                        0x2945524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[(2 * ceil32(calldata.size)) + 454 len 30]
        allowance[address(arg1)][address(mem[calldata.size + 192])] = allowance[address(arg1)][mem[calldata.size + ceil32(calldata.size) + 332 len 20]] - arg3
        emit Approval((allowance[address(arg1)][mem[calldata.size + ceil32(calldata.size) + 332 len 20]] - arg3), arg1, mem[calldata.size + 204 len 20]);
        return 1
    mem[(2 * ceil32(calldata.size)) + 356] = 32
    mem[(2 * ceil32(calldata.size)) + 388] = 40
    mem[(2 * ceil32(calldata.size)) + 420 len 64] = 0x5245524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(calldata.size) + 296 len 24]
    mem[(2 * ceil32(calldata.size)) + 452] = uint64(calldata.size)
    revert with 0, 
                32,
                40,
                0x5245524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                mem[ceil32(calldata.size) + 296 len 24],
                uint64(calldata.size)
}



}
