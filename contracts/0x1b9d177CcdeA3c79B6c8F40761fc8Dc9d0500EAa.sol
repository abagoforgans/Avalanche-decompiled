contract main {




// =====================  Runtime code  =====================


#
#  - initToken(bytes arg1)
#
const tokenTemplate = 3

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


uint256 DOMAIN_SEPARATOR;
mapping of uint256 balanceOf;
mapping of uint256 nonces;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct name;
array of uint256 symbol;
bool stor8; offset 256
uint8 decimals;
uint8 stor8; offset 8
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 sigNonces;

function name() {
    return name[0 len name.length].field_0
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

function delegates(address arg1) {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function numCheckpoints(address arg1) {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
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

function checkpoints(address arg1, uint32 arg2) {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function sigNonces(address arg1) {
    require calldata.size - 4 >= 32
    return sigNonces[arg1]
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

function getCurrentVotes(address arg1) {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
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
                    0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
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
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[642 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[642 len 4]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7353555348493a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[204 len 24]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 10)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor11[address(arg1)] + -(uint32(stor11[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor11[address(arg1)] + -(uint32(stor11[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor11[address(arg1)] + -(uint32(stor11[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor11[address(arg1)] + -(uint32(stor11[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor11[address(arg1)] + -(uint32(stor11[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x745375736869546f6b656e3a206d7573742068617665206d696e74657220726f6c6520746f206d696e,
                    mem[205 len 23]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    if delegates[0] != delegates[arg1]:
        if arg2 > 0:
            if not delegates[0]:
                if delegates[arg1]:
                    if numCheckpoints[stor9[arg1]]:
                        if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[181 len 11])
                        if numCheckpoints[stor9[arg1]] <= 0:
                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                        else:
                            if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                    else:
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[181 len 11])
                        if numCheckpoints[stor9[arg1]] <= 0:
                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                        else:
                            if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
            else:
                if numCheckpoints[stor9[0]]:
                    if arg2 > checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[181 len 11])
                    if numCheckpoints[stor9[0]] <= 0:
                        checkpoints[stor9[0]][stor11[stor9[0]]].field_0 = uint32(block.number)
                        checkpoints[stor9[0]][stor11[stor9[0]]].field_256 = checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 - arg2
                        numCheckpoints[stor9[0]] = uint32(numCheckpoints[stor9[0]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256, checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 - arg2, delegates[0]);
                        if delegates[arg1]:
                            if numCheckpoints[stor9[arg1]]:
                                if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                if numCheckpoints[stor9[arg1]] <= 0:
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                    numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                else:
                                    if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                if numCheckpoints[stor9[arg1]] <= 0:
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                    numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                else:
                                    if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                    else:
                        if checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 -= arg2
                            emit DelegateVotesChanged(checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256, checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 - arg2, delegates[0]);
                            if delegates[arg1]:
                                if numCheckpoints[stor9[arg1]]:
                                    if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                        else:
                            checkpoints[stor9[0]][stor11[stor9[0]]].field_0 = uint32(block.number)
                            checkpoints[stor9[0]][stor11[stor9[0]]].field_256 = checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor9[0]] = uint32(numCheckpoints[stor9[0]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256, checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 - arg2, delegates[0]);
                            if delegates[arg1]:
                                if numCheckpoints[stor9[arg1]]:
                                    if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[181 len 11])
                    if numCheckpoints[stor9[0]] <= 0:
                        checkpoints[stor9[0]][stor11[stor9[0]]].field_0 = uint32(block.number)
                        checkpoints[stor9[0]][stor11[stor9[0]]].field_256 = -arg2
                        numCheckpoints[stor9[0]] = uint32(numCheckpoints[stor9[0]] + 1)
                        emit DelegateVotesChanged(0, -arg2, delegates[0]);
                        if delegates[arg1]:
                            if numCheckpoints[stor9[arg1]]:
                                if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                if numCheckpoints[stor9[arg1]] <= 0:
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                    numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                else:
                                    if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                if numCheckpoints[stor9[arg1]] <= 0:
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                    numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                else:
                                    if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                    else:
                        if checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 = -arg2
                            emit DelegateVotesChanged(0, -arg2, delegates[0]);
                            if delegates[arg1]:
                                if numCheckpoints[stor9[arg1]]:
                                    if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                        else:
                            checkpoints[stor9[0]][stor11[stor9[0]]].field_0 = uint32(block.number)
                            checkpoints[stor9[0]][stor11[stor9[0]]].field_256 = -arg2
                            numCheckpoints[stor9[0]] = uint32(numCheckpoints[stor9[0]] + 1)
                            emit DelegateVotesChanged(0, -arg2, delegates[0]);
                            if delegates[arg1]:
                                if numCheckpoints[stor9[arg1]]:
                                    if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
    if delegates[address(msg.sender)] != delegates[arg1]:
        if arg2 > 0:
            if not delegates[address(msg.sender)]:
                if delegates[arg1]:
                    if numCheckpoints[stor9[arg1]]:
                        if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                        if numCheckpoints[stor9[arg1]] <= 0:
                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                        else:
                            if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                    else:
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                        if numCheckpoints[stor9[arg1]] <= 0:
                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                        else:
                            if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
            else:
                if numCheckpoints[stor9[address(msg.sender)]]:
                    if arg2 > checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                    if numCheckpoints[stor9[address(msg.sender)]] <= 0:
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - arg2
                        numCheckpoints[stor9[address(msg.sender)]] = uint32(numCheckpoints[stor9[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                        if delegates[arg1]:
                            if numCheckpoints[stor9[arg1]]:
                                if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                if numCheckpoints[stor9[arg1]] <= 0:
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                    numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                else:
                                    if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                if numCheckpoints[stor9[arg1]] <= 0:
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                    numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                else:
                                    if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                    else:
                        if checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                            emit DelegateVotesChanged(checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor9[arg1]]:
                                    if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[373 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[373 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                        else:
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor9[address(msg.sender)]] = uint32(numCheckpoints[stor9[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor9[arg1]]:
                                    if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                    if numCheckpoints[stor9[address(msg.sender)]] <= 0:
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = -arg2
                        numCheckpoints[stor9[address(msg.sender)]] = uint32(numCheckpoints[stor9[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                        if delegates[arg1]:
                            if numCheckpoints[stor9[arg1]]:
                                if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                if numCheckpoints[stor9[arg1]] <= 0:
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                    numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                else:
                                    if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                if numCheckpoints[stor9[arg1]] <= 0:
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                    numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                else:
                                    if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                    else:
                        if checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor9[arg1]]:
                                    if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[373 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[373 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                        else:
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = -arg2
                            numCheckpoints[stor9[address(msg.sender)]] = uint32(numCheckpoints[stor9[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if delegates[arg1]:
                                if numCheckpoints[stor9[arg1]]:
                                    if arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 < checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256, delegates[arg1]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                    if numCheckpoints[stor9[arg1]] <= 0:
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                        numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    else:
                                        if checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg1]][stor11[stor9[arg1]]].field_256 = arg2
                                            numCheckpoints[stor9[arg1]] = uint32(numCheckpoints[stor9[arg1]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function delegate(address arg1) {
    require calldata.size - 4 >= 32
    if delegates[address(msg.sender)] != arg1:
        delegates[address(msg.sender)] = arg1
        emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[181 len 11])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[181 len 11])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor9[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[181 len 11])
                    if numCheckpoints[stor9[address(msg.sender)]] <= 0:
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor9[address(msg.sender)]] = uint32(numCheckpoints[stor9[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor9[address(msg.sender)]] = uint32(numCheckpoints[stor9[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[181 len 11])
                    if numCheckpoints[stor9[address(msg.sender)]] <= 0:
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor9[address(msg.sender)]] = uint32(numCheckpoints[stor9[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(msg.sender)]][stor11[stor9[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor9[address(msg.sender)]] = uint32(numCheckpoints[stor9[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[341 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    require calldata.size - 4 >= 192
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len name.length]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    39,
                    0x6553555348493a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    Mask(168, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    sigNonces[address(signer)]++
    if arg2 != sigNonces[address(signer)]:
        revert with 0, 
                    32,
                    35,
                    0x6553555348493a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(200, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    39,
                    0x7453555348493a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    Mask(168, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if delegates[address(signer)] != arg1:
        delegates[address(signer)] = arg1
        emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, Mask(88, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, Mask(88, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor9[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, Mask(88, 0, arg5))
                    if numCheckpoints[stor9[address(signer)]] <= 0:
                        checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor9[address(signer)]] = uint32(numCheckpoints[stor9[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256, checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 823 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 823 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256, checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 759 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 759 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor9[address(signer)]] = uint32(numCheckpoints[stor9[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256, checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 823 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 823 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, Mask(88, 0, arg5))
                    if numCheckpoints[stor9[address(signer)]] <= 0:
                        checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor9[address(signer)]] = uint32(numCheckpoints[stor9[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 823 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 823 len 11])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 759 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 759 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(signer)]][stor11[stor9[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor9[address(signer)]] = uint32(numCheckpoints[stor9[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 823 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 823 len 11])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor11[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor11[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
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
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
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
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if arg4 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg4
    if arg4 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg4
    if delegates[0] != delegates[msg.sender]:
        if arg4 > 0:
            if not delegates[0]:
                if delegates[msg.sender]:
                    if numCheckpoints[stor9[msg.sender]]:
                        if arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 < checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 373 len 11])
                        if numCheckpoints[stor9[msg.sender]] <= 0:
                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                            numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                        else:
                            if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 += arg4
                            else:
                                checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, delegates[msg.sender]);
                    else:
                        if arg4 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 373 len 11])
                        if numCheckpoints[stor9[msg.sender]] <= 0:
                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                            numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                        else:
                            if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 = arg4
                            else:
                                checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                        emit DelegateVotesChanged(0, arg4, delegates[msg.sender]);
            else:
                if numCheckpoints[stor9[0]]:
                    if arg4 > checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 373 len 11])
                    if numCheckpoints[stor9[0]] <= 0:
                        checkpoints[stor9[0]][stor11[stor9[0]]].field_0 = uint32(block.number)
                        checkpoints[stor9[0]][stor11[stor9[0]]].field_256 = checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 - arg4
                        numCheckpoints[stor9[0]] = uint32(numCheckpoints[stor9[0]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256, checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 - arg4, delegates[0]);
                        if delegates[msg.sender]:
                            if numCheckpoints[stor9[msg.sender]]:
                                if arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 < checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 533 len 11])
                                if numCheckpoints[stor9[msg.sender]] <= 0:
                                    checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                    numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                else:
                                    if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 += arg4
                                    else:
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, delegates[msg.sender]);
                            else:
                                if arg4 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 533 len 11])
                                if numCheckpoints[stor9[msg.sender]] <= 0:
                                    checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                    numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                else:
                                    if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 = arg4
                                    else:
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                emit DelegateVotesChanged(0, arg4, delegates[msg.sender]);
                    else:
                        if checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 -= arg4
                            emit DelegateVotesChanged(checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256, checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 - arg4, delegates[0]);
                            if delegates[msg.sender]:
                                if numCheckpoints[stor9[msg.sender]]:
                                    if arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 < checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 469 len 11])
                                    if numCheckpoints[stor9[msg.sender]] <= 0:
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    else:
                                        if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 += arg4
                                        else:
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                            numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, delegates[msg.sender]);
                                else:
                                    if arg4 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 469 len 11])
                                    if numCheckpoints[stor9[msg.sender]] <= 0:
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    else:
                                        if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 = arg4
                                        else:
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                            numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    emit DelegateVotesChanged(0, arg4, delegates[msg.sender]);
                        else:
                            checkpoints[stor9[0]][stor11[stor9[0]]].field_0 = uint32(block.number)
                            checkpoints[stor9[0]][stor11[stor9[0]]].field_256 = checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 - arg4
                            numCheckpoints[stor9[0]] = uint32(numCheckpoints[stor9[0]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256, checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 - arg4, delegates[0]);
                            if delegates[msg.sender]:
                                if numCheckpoints[stor9[msg.sender]]:
                                    if arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 < checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 533 len 11])
                                    if numCheckpoints[stor9[msg.sender]] <= 0:
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    else:
                                        if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 += arg4
                                        else:
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                            numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, delegates[msg.sender]);
                                else:
                                    if arg4 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 533 len 11])
                                    if numCheckpoints[stor9[msg.sender]] <= 0:
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    else:
                                        if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 = arg4
                                        else:
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                            numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    emit DelegateVotesChanged(0, arg4, delegates[msg.sender]);
                else:
                    if arg4 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 373 len 11])
                    if numCheckpoints[stor9[0]] <= 0:
                        checkpoints[stor9[0]][stor11[stor9[0]]].field_0 = uint32(block.number)
                        checkpoints[stor9[0]][stor11[stor9[0]]].field_256 = -arg4
                        numCheckpoints[stor9[0]] = uint32(numCheckpoints[stor9[0]] + 1)
                        emit DelegateVotesChanged(0, -arg4, delegates[0]);
                        if delegates[msg.sender]:
                            if numCheckpoints[stor9[msg.sender]]:
                                if arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 < checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 533 len 11])
                                if numCheckpoints[stor9[msg.sender]] <= 0:
                                    checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                    numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                else:
                                    if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 += arg4
                                    else:
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, delegates[msg.sender]);
                            else:
                                if arg4 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 533 len 11])
                                if numCheckpoints[stor9[msg.sender]] <= 0:
                                    checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                    numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                else:
                                    if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 = arg4
                                    else:
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                emit DelegateVotesChanged(0, arg4, delegates[msg.sender]);
                    else:
                        if checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[0]][stor11[stor9[0]] - 1 << 224].field_256 = -arg4
                            emit DelegateVotesChanged(0, -arg4, delegates[0]);
                            if delegates[msg.sender]:
                                if numCheckpoints[stor9[msg.sender]]:
                                    if arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 < checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 469 len 11])
                                    if numCheckpoints[stor9[msg.sender]] <= 0:
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    else:
                                        if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 += arg4
                                        else:
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                            numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, delegates[msg.sender]);
                                else:
                                    if arg4 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 469 len 11])
                                    if numCheckpoints[stor9[msg.sender]] <= 0:
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    else:
                                        if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 = arg4
                                        else:
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                            numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    emit DelegateVotesChanged(0, arg4, delegates[msg.sender]);
                        else:
                            checkpoints[stor9[0]][stor11[stor9[0]]].field_0 = uint32(block.number)
                            checkpoints[stor9[0]][stor11[stor9[0]]].field_256 = -arg4
                            numCheckpoints[stor9[0]] = uint32(numCheckpoints[stor9[0]] + 1)
                            emit DelegateVotesChanged(0, -arg4, delegates[0]);
                            if delegates[msg.sender]:
                                if numCheckpoints[stor9[msg.sender]]:
                                    if arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 < checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 533 len 11])
                                    if numCheckpoints[stor9[msg.sender]] <= 0:
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    else:
                                        if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 += arg4
                                        else:
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256
                                            numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, arg4 + checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256, delegates[msg.sender]);
                                else:
                                    if arg4 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[ceil32(arg1.length) + ceil32(arg2.length) + 533 len 11])
                                    if numCheckpoints[stor9[msg.sender]] <= 0:
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                        numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    else:
                                        if checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]] - 1 << 224].field_256 = arg4
                                        else:
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[msg.sender]][stor11[stor9[msg.sender]]].field_256 = arg4
                                            numCheckpoints[stor9[msg.sender]] = uint32(numCheckpoints[stor9[msg.sender]] + 1)
                                    emit DelegateVotesChanged(0, arg4, delegates[msg.sender]);
    emit Transfer(arg4, 0, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
    if delegates[address(arg1)] == delegates[arg2]:
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if arg3 <= 0:
            emit Transfer(arg3, arg1, arg2);
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if not delegates[address(arg1)]:
                if not delegates[arg2]:
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                else:
                    if numCheckpoints[stor9[arg2]]:
                        if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                        if numCheckpoints[stor9[arg2]] <= 0:
                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[424 len 24],
                                            mem[472 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                        else:
                            if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[360 len 24],
                                                mem[408 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                            else:
                                checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[424 len 24],
                                                mem[472 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                    else:
                        if arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                        Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                        if numCheckpoints[stor9[arg2]] <= 0:
                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[424 len 24],
                                            mem[472 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                        else:
                            if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[360 len 24],
                                                mem[408 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                            else:
                                checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[424 len 24],
                                                mem[472 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
            else:
                if numCheckpoints[stor9[address(arg1)]]:
                    if arg3 > checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                    if numCheckpoints[stor9[address(arg1)]] <= 0:
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg3
                        numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256, checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                        if not delegates[arg2]:
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[424 len 24],
                                            mem[472 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                        else:
                            if numCheckpoints[stor9[arg2]]:
                                if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                if numCheckpoints[stor9[arg2]] <= 0:
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                    numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[584 len 24],
                                                    mem[632 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                else:
                                    if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                        emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[520 len 24],
                                                        mem[568 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                    else:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                            else:
                                if arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                if numCheckpoints[stor9[arg2]] <= 0:
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                    numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[584 len 24],
                                                    mem[632 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                else:
                                    if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[520 len 24],
                                                        mem[568 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                    else:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                    else:
                        if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 -= arg3
                            emit DelegateVotesChanged(checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256, checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                            if not delegates[arg2]:
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[360 len 24],
                                                mem[408 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                            else:
                                if numCheckpoints[stor9[arg2]]:
                                    if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[373 len 11])
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[520 len 24],
                                                        mem[568 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[456 len 24],
                                                            mem[504 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[520 len 24],
                                                            mem[568 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[373 len 11])
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[520 len 24],
                                                        mem[568 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[456 len 24],
                                                            mem[504 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[520 len 24],
                                                            mem[568 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                        else:
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg3
                            numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256, checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                            if not delegates[arg2]:
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[424 len 24],
                                                mem[472 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                            else:
                                if numCheckpoints[stor9[arg2]]:
                                    if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[520 len 24],
                                                            mem[568 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[584 len 24],
                                                            mem[632 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[520 len 24],
                                                            mem[568 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[584 len 24],
                                                            mem[632 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                else:
                    if arg3 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[277 len 11])
                    if numCheckpoints[stor9[address(arg1)]] <= 0:
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = -arg3
                        numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                        if not delegates[arg2]:
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[424 len 24],
                                            mem[472 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                        else:
                            if numCheckpoints[stor9[arg2]]:
                                if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                if numCheckpoints[stor9[arg2]] <= 0:
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                    numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[584 len 24],
                                                    mem[632 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                else:
                                    if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                        emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[520 len 24],
                                                        mem[568 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                    else:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                            else:
                                if arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                if numCheckpoints[stor9[arg2]] <= 0:
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                    checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                    numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[584 len 24],
                                                    mem[632 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                else:
                                    if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[520 len 24],
                                                        mem[568 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                    else:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                    else:
                        if checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]] - 1 << 224].field_256 = -arg3
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if not delegates[arg2]:
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[360 len 24],
                                                mem[408 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                            else:
                                if numCheckpoints[stor9[arg2]]:
                                    if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[373 len 11])
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[520 len 24],
                                                        mem[568 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[456 len 24],
                                                            mem[504 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[520 len 24],
                                                            mem[568 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[373 len 11])
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[520 len 24],
                                                        mem[568 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[456 len 24],
                                                            mem[504 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[520 len 24],
                                                            mem[568 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                        else:
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor9[address(arg1)]][stor11[stor9[address(arg1)]]].field_256 = -arg3
                            numCheckpoints[stor9[address(arg1)]] = uint32(numCheckpoints[stor9[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if not delegates[arg2]:
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[424 len 24],
                                                mem[472 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                            else:
                                if numCheckpoints[stor9[arg2]]:
                                    if arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 < checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[520 len 24],
                                                            mem[568 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[584 len 24],
                                                            mem[632 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6553555348493a3a5f7772697465436865636b706f696e743a20626c6f636b20,
                                                    Mask(168, 0, 0x6e756d626572206578636565647320333220626974, mem[437 len 11])
                                    if numCheckpoints[stor9[arg2]] <= 0:
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                        checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                        numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    else:
                                        if checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[520 len 24],
                                                            mem[568 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                        else:
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_0 = uint32(block.number)
                                            checkpoints[stor9[arg2]][stor11[stor9[arg2]]].field_256 = arg3
                                            numCheckpoints[stor9[arg2]] = uint32(numCheckpoints[stor9[arg2]] + 1)
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[584 len 24],
                                                            mem[632 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
