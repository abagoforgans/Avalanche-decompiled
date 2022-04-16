contract main {




// =====================  Runtime code  =====================


#
#  - sub_4550e033(?)
#  - initialize(string arg1, string arg2)
#
const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86


array of struct roleAdmin;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 paused;
mapping of uint256 sub_a009b710;
array of struct sub_89661ca6;
mapping of address delegates;
mapping of uint256 numCheckpoints;
mapping of struct checkpoints;
mapping of uint256 sub_1d2112a5;
array of address stor106968586475988853986186077966640523925636648872160694772589986884757677643363;

function name() payable {
    return name[0 len name.length]
}

function checkpoints(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function totalSupply() payable {
    return totalSupply
}

function sub_1d2112a5(?) payable {
    require calldata.size - 4 >= 32
    return sub_1d2112a5[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function decimals() payable {
    return decimals
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[arg1]
}

function paused() payable {
    return bool(paused)
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_89661ca6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_89661ca6.length
    return sub_89661ca6[arg1].field_0
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_a009b710(?) payable {
    require calldata.size - 4 >= 32
    return sub_a009b710[arg1]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function removeHacker(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'onlyAdmin'
    if sub_1d2112a5[address(arg1)]:
        sub_1d2112a5[address(arg1)] = 0
        emit HackerEvent(0, arg1);
}

function addHacker(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'onlyAdmin'
    if sub_1d2112a5[address(arg1)] != 1:
        sub_1d2112a5[address(arg1)] = 1
        emit HackerEvent(1, arg1);
}

function addSender(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'onlyAdmin'
    if sub_a009b710[address(arg1)] != 1:
        sub_89661ca6.length++
        storEC7E[stor352.length] = arg1
        sub_a009b710[address(arg1)] = 1
}

function pause() payable {
    if not roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x7345524332305072657365744d696e7465725061757365723a206d75737420686176652070617573657220726f6c6520746f2070617573,
                    mem[219 len 9]
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0x6565d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d86][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6545524332305072657365744d696e7465725061757365723a206d75737420686176652070617573657220726f6c6520746f20756e70617573,
                    mem[221 len 7]
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function removeSender(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'onlyAdmin'
    idx = 0
    while idx < sub_89661ca6.length:
        mem[0] = 352
        if sub_89661ca6[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        if idx < sub_89661ca6.length - 1:
            require sub_89661ca6.length - 1 < sub_89661ca6.length
            require idx < sub_89661ca6.length
            sub_89661ca6[idx].field_0 = sub_89661ca6[sub_89661ca6.length].field_0
        require sub_89661ca6.length
        sub_89661ca6[sub_89661ca6.length].field_0 = 0
        sub_89661ca6.length--
        sub_a009b710[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) payable {
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function grantRole(bytes32 arg1, address arg2) payable {
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function getSenders() payable {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'onlyAdmin'
    if not sub_89661ca6.length:
        mem[(32 * sub_89661ca6.length) + 128] = 32
        mem[(32 * sub_89661ca6.length) + 160] = sub_89661ca6.length
        mem[(32 * sub_89661ca6.length) + 192 len floor32(sub_89661ca6.length)] = mem[128 len floor32(sub_89661ca6.length)]
        return memory
          from (32 * sub_89661ca6.length) + 128
           len (96 * sub_89661ca6.length) + 64
    mem[128] = address(sub_89661ca6.field_0)
    idx = 128
    s = 0
    while (32 * sub_89661ca6.length) + 96 > idx:
        mem[idx + 32] = sub_89661ca6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_89661ca6.length) + 192 len floor32(sub_89661ca6.length)] = mem[128 len floor32(sub_89661ca6.length)]
    return Array(len=sub_89661ca6.length, data=mem[128 len floor32(sub_89661ca6.length)], mem[(32 * sub_89661ca6.length) + floor32(sub_89661ca6.length) + 192 len (32 * sub_89661ca6.length) - floor32(sub_89661ca6.length)]), 
}

function renounceRole(bytes32 arg1, address arg2) payable {
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
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
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0, 'INSUR::GPV:1'
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor354[address(arg1)] - 1].field_0:
        return checkpoints[address(arg1)][stor354[address(arg1)] - 1].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    if 1 > numCheckpoints[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    idx = 0
    while numCheckpoints[address(arg1)] - 1 > idx:
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = 0
        mem[_34 + 32] = 0
        mem[0] = numCheckpoints[address(arg1)] + -(numCheckpoints[address(arg1)] + -idx - 1 / 2) - 1
        mem[32] = sha3(address(arg1), 355)
        _37 = mem[64]
        mem[64] = mem[64] + 64
        mem[_37] = checkpoints[address(arg1)][stor354[address(arg1)] + -(0.5 / stor354[address(arg1)] + -idx - 1) - 1].field_0
        mem[_37 + 32] = checkpoints[address(arg1)][stor354[address(arg1)] + -(0.5 / stor354[address(arg1)] + -idx - 1) - 1].field_256
        if arg2 == checkpoints[address(arg1)][stor354[address(arg1)] + -(0.5 / stor354[address(arg1)] + -idx - 1) - 1].field_0:
            return checkpoints[address(arg1)][stor354[address(arg1)] + -(0.5 / stor354[address(arg1)] + -idx - 1) - 1].field_256
        if arg2 <= checkpoints[address(arg1)][stor354[address(arg1)] + -(0.5 / stor354[address(arg1)] + -idx - 1) - 1].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(numCheckpoints[address(arg1)] + -idx - 1 / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx].field_256
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x2a45524332305072657365744d696e7465725061757365723a206d7573742068617665206d696e74657220726f6c6520746f206d696e,
                    mem[218 len 10]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if 1 == sub_1d2112a5[0]:
        revert with 0, 'InsurAceToken: invalid sender'
    if sub_89661ca6.length:
        if sub_a009b710[0] != 1:
            revert with 0, 'InsurAceToken: invalid sender'
    if 1 == sub_1d2112a5[address(arg1)]:
        revert with 0, 'InsurAceToken: invalid receipt'
    if delegates[0] != delegates[arg1]:
        if arg2 > 0:
            if delegates[0]:
                if numCheckpoints[stor353[0]]:
                    if arg2 > checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not numCheckpoints[stor353[0]]:
                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 - arg2
                        numCheckpoints[stor353[0]]++
                    else:
                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 -= arg2
                        else:
                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 - arg2
                            numCheckpoints[stor353[0]]++
                    emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 - arg2, delegates[0]);
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not numCheckpoints[stor353[0]]:
                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = -arg2
                        numCheckpoints[stor353[0]]++
                    else:
                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = -arg2
                        else:
                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = -arg2
                            numCheckpoints[stor353[0]]++
                    emit DelegateVotesChanged(0, -arg2, delegates[0]);
            if delegates[arg1]:
                if numCheckpoints[stor353[arg1]]:
                    if arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 < checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if not numCheckpoints[stor353[arg1]]:
                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                        numCheckpoints[stor353[arg1]]++
                    else:
                        if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                            checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 += arg2
                        else:
                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                            numCheckpoints[stor353[arg1]]++
                    emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not numCheckpoints[stor353[arg1]]:
                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                        numCheckpoints[stor353[arg1]]++
                    else:
                        if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                            checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 = arg2
                        else:
                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                            numCheckpoints[stor353[arg1]]++
                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if delegates[address(msg.sender)]:
                if numCheckpoints[stor353[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not numCheckpoints[stor353[address(msg.sender)]]:
                        checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_0 = block.number
                        checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_256 = checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor353[address(msg.sender)]]++
                    else:
                        if block.number == checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_0:
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 -= balanceOf[address(msg.sender)]
                        else:
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_0 = block.number
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_256 = checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor353[address(msg.sender)]]++
                    emit DelegateVotesChanged(checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256, checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not numCheckpoints[stor353[address(msg.sender)]]:
                        checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_0 = block.number
                        checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor353[address(msg.sender)]]++
                    else:
                        if block.number == checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_0:
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 = -balanceOf[address(msg.sender)]
                        else:
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_0 = block.number
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor353[address(msg.sender)]]++
                    emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
            if arg1:
                if numCheckpoints[address(arg1)]:
                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor354[address(arg1)] - 1].field_256 < checkpoints[address(arg1)][stor354[address(arg1)] - 1].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if not numCheckpoints[address(arg1)]:
                        checkpoints[address(arg1)][stor354[address(arg1)]].field_0 = block.number
                        checkpoints[address(arg1)][stor354[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor354[address(arg1)] - 1].field_256
                        numCheckpoints[address(arg1)]++
                    else:
                        if block.number == checkpoints[address(arg1)][stor354[address(arg1)] - 1].field_0:
                            checkpoints[address(arg1)][stor354[address(arg1)] - 1].field_256 += balanceOf[address(msg.sender)]
                        else:
                            checkpoints[address(arg1)][stor354[address(arg1)]].field_0 = block.number
                            checkpoints[address(arg1)][stor354[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor354[address(arg1)] - 1].field_256
                            numCheckpoints[address(arg1)]++
                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor354[address(arg1)] - 1].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor354[address(arg1)] - 1].field_256, arg1);
                else:
                    if balanceOf[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not numCheckpoints[address(arg1)]:
                        checkpoints[address(arg1)][stor354[address(arg1)]].field_0 = block.number
                        checkpoints[address(arg1)][stor354[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                        numCheckpoints[address(arg1)]++
                    else:
                        if block.number == checkpoints[address(arg1)][stor354[address(arg1)] - 1].field_0:
                            checkpoints[address(arg1)][stor354[address(arg1)] - 1].field_256 = balanceOf[address(msg.sender)]
                        else:
                            checkpoints[address(arg1)][stor354[address(arg1)]].field_0 = block.number
                            checkpoints[address(arg1)][stor354[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)]++
                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if paused:
        revert with 0, 32, 42, 0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[302 len 22]
    if 1 == sub_1d2112a5[address(arg1)]:
        revert with 0, 'InsurAceToken: invalid sender'
    if sub_89661ca6.length:
        if sub_a009b710[address(arg1)] != 1:
            revert with 0, 'InsurAceToken: invalid sender'
    if 1 == sub_1d2112a5[0]:
        revert with 0, 'InsurAceToken: invalid receipt'
    if delegates[address(arg1)] == delegates[0]:
        if arg2 > balanceOf[address(arg1)]:
            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    else:
        if arg2 > 0:
            if not delegates[address(arg1)]:
                if not delegates[0]:
                    if arg2 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                else:
                    if numCheckpoints[stor353[0]]:
                        if arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if not numCheckpoints[stor353[0]]:
                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                            numCheckpoints[stor353[0]]++
                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                            if arg2 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                        else:
                            if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg2
                                emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                if arg2 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                            else:
                                checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                numCheckpoints[stor353[0]]++
                                emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                if arg2 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                    else:
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not numCheckpoints[stor353[0]]:
                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                            numCheckpoints[stor353[0]]++
                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                            if arg2 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                        else:
                            if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg2
                                emit DelegateVotesChanged(0, arg2, delegates[0]);
                                if arg2 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                            else:
                                checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                numCheckpoints[stor353[0]]++
                                emit DelegateVotesChanged(0, arg2, delegates[0]);
                                if arg2 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
            else:
                if numCheckpoints[stor353[address(arg1)]]:
                    if arg2 > checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not numCheckpoints[stor353[address(arg1)]]:
                        checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_0 = block.number
                        checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_256 = checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 - arg2
                        numCheckpoints[stor353[address(arg1)]]++
                        emit DelegateVotesChanged(checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256, checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 - arg2, delegates[address(arg1)]);
                        if not delegates[0]:
                            if arg2 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                        else:
                            if numCheckpoints[stor353[0]]:
                                if arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[0]]:
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                    numCheckpoints[stor353[0]]++
                                    emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                    if arg2 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                else:
                                    if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                        checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg2
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                    else:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[0]]:
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                    numCheckpoints[stor353[0]]++
                                    emit DelegateVotesChanged(0, arg2, delegates[0]);
                                    if arg2 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                else:
                                    if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                        checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg2
                                        emit DelegateVotesChanged(0, arg2, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                    else:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(0, arg2, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                    else:
                        if block.number == checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_0:
                            checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 -= arg2
                            emit DelegateVotesChanged(checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256, checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 - arg2, delegates[address(arg1)]);
                            if not delegates[0]:
                                if arg2 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                            else:
                                if numCheckpoints[stor353[0]]:
                                    if arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg2
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(0, arg2, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg2
                                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                        else:
                            checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_0 = block.number
                            checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_256 = checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 - arg2
                            numCheckpoints[stor353[address(arg1)]]++
                            emit DelegateVotesChanged(checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256, checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 - arg2, delegates[address(arg1)]);
                            if not delegates[0]:
                                if arg2 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                            else:
                                if numCheckpoints[stor353[0]]:
                                    if arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg2
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(0, arg2, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg2
                                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not numCheckpoints[stor353[address(arg1)]]:
                        checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_0 = block.number
                        checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_256 = -arg2
                        numCheckpoints[stor353[address(arg1)]]++
                        emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                        if not delegates[0]:
                            if arg2 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                        else:
                            if numCheckpoints[stor353[0]]:
                                if arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[0]]:
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                    numCheckpoints[stor353[0]]++
                                    emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                    if arg2 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                else:
                                    if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                        checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg2
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                    else:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[0]]:
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                    numCheckpoints[stor353[0]]++
                                    emit DelegateVotesChanged(0, arg2, delegates[0]);
                                    if arg2 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                else:
                                    if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                        checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg2
                                        emit DelegateVotesChanged(0, arg2, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                    else:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(0, arg2, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                    else:
                        if block.number == checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_0:
                            checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 = -arg2
                            emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                            if not delegates[0]:
                                if arg2 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                            else:
                                if numCheckpoints[stor353[0]]:
                                    if arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg2
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(0, arg2, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg2
                                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                        else:
                            checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_0 = block.number
                            checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_256 = -arg2
                            numCheckpoints[stor353[address(arg1)]]++
                            emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                            if not delegates[0]:
                                if arg2 > balanceOf[address(arg1)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                            else:
                                if numCheckpoints[stor353[0]]:
                                    if arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg2
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg2 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(0, arg2, delegates[0]);
                                        if arg2 > balanceOf[address(arg1)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg2
                                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg2
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(0, arg2, delegates[0]);
                                            if arg2 > balanceOf[address(arg1)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[386 len 30], mem[446 len 2]
            ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 101))))
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if 1 == sub_1d2112a5[address(msg.sender)]:
        revert with 0, 'InsurAceToken: invalid sender'
    if sub_89661ca6.length:
        if sub_a009b710[address(msg.sender)] != 1:
            revert with 0, 'InsurAceToken: invalid sender'
    if 1 == sub_1d2112a5[0]:
        revert with 0, 'InsurAceToken: invalid receipt'
    if delegates[address(msg.sender)] == delegates[0]:
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    else:
        if arg1 > 0:
            if not delegates[address(msg.sender)]:
                if not delegates[0]:
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                else:
                    if numCheckpoints[stor353[0]]:
                        if arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if not numCheckpoints[stor353[0]]:
                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                            numCheckpoints[stor353[0]]++
                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                            if arg1 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        else:
                            if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg1
                                emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                if arg1 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                            else:
                                checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                numCheckpoints[stor353[0]]++
                                emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                if arg1 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                    else:
                        if arg1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not numCheckpoints[stor353[0]]:
                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                            numCheckpoints[stor353[0]]++
                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                            if arg1 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        else:
                            if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg1
                                emit DelegateVotesChanged(0, arg1, delegates[0]);
                                if arg1 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                            else:
                                checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                numCheckpoints[stor353[0]]++
                                emit DelegateVotesChanged(0, arg1, delegates[0]);
                                if arg1 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
            else:
                if numCheckpoints[stor353[address(msg.sender)]]:
                    if arg1 > checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not numCheckpoints[stor353[address(msg.sender)]]:
                        checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_0 = block.number
                        checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_256 = checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - arg1
                        numCheckpoints[stor353[address(msg.sender)]]++
                        emit DelegateVotesChanged(checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256, checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - arg1, delegates[address(msg.sender)]);
                        if not delegates[0]:
                            if arg1 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        else:
                            if numCheckpoints[stor353[0]]:
                                if arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[0]]:
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                    numCheckpoints[stor353[0]]++
                                    emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                    if arg1 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                                else:
                                    if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                        checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg1
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                    else:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                            else:
                                if arg1 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[0]]:
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                    numCheckpoints[stor353[0]]++
                                    emit DelegateVotesChanged(0, arg1, delegates[0]);
                                    if arg1 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                                else:
                                    if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                        checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg1
                                        emit DelegateVotesChanged(0, arg1, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                    else:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(0, arg1, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                    else:
                        if block.number == checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_0:
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 -= arg1
                            emit DelegateVotesChanged(checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256, checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - arg1, delegates[address(msg.sender)]);
                            if not delegates[0]:
                                if arg1 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                            else:
                                if numCheckpoints[stor353[0]]:
                                    if arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg1
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                else:
                                    if arg1 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(0, arg1, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg1
                                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        else:
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_0 = block.number
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_256 = checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - arg1
                            numCheckpoints[stor353[address(msg.sender)]]++
                            emit DelegateVotesChanged(checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256, checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - arg1, delegates[address(msg.sender)]);
                            if not delegates[0]:
                                if arg1 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                            else:
                                if numCheckpoints[stor353[0]]:
                                    if arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg1
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                                else:
                                    if arg1 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(0, arg1, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg1
                                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                else:
                    if arg1 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not numCheckpoints[stor353[address(msg.sender)]]:
                        checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_0 = block.number
                        checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_256 = -arg1
                        numCheckpoints[stor353[address(msg.sender)]]++
                        emit DelegateVotesChanged(0, -arg1, delegates[address(msg.sender)]);
                        if not delegates[0]:
                            if arg1 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        else:
                            if numCheckpoints[stor353[0]]:
                                if arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[0]]:
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                    numCheckpoints[stor353[0]]++
                                    emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                    if arg1 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                                else:
                                    if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                        checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg1
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                    else:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                            else:
                                if arg1 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[0]]:
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                    checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                    numCheckpoints[stor353[0]]++
                                    emit DelegateVotesChanged(0, arg1, delegates[0]);
                                    if arg1 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                                else:
                                    if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                        checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg1
                                        emit DelegateVotesChanged(0, arg1, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                    else:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(0, arg1, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                    else:
                        if block.number == checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_0:
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 = -arg1
                            emit DelegateVotesChanged(0, -arg1, delegates[address(msg.sender)]);
                            if not delegates[0]:
                                if arg1 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                            else:
                                if numCheckpoints[stor353[0]]:
                                    if arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg1
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                else:
                                    if arg1 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(0, arg1, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg1
                                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                        else:
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_0 = block.number
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_256 = -arg1
                            numCheckpoints[stor353[address(msg.sender)]]++
                            emit DelegateVotesChanged(0, -arg1, delegates[address(msg.sender)]);
                            if not delegates[0]:
                                if arg1 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                            else:
                                if numCheckpoints[stor353[0]]:
                                    if arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 < checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 += arg1
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, arg1 + checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                                else:
                                    if arg1 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[0]]:
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                        checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                        numCheckpoints[stor353[0]]++
                                        emit DelegateVotesChanged(0, arg1, delegates[0]);
                                        if arg1 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                                    else:
                                        if block.number == checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_0:
                                            checkpoints[stor353[0]][stor354[stor353[0]] - 1].field_256 = arg1
                                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
                                        else:
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_0 = block.number
                                            checkpoints[stor353[0]][stor354[stor353[0]]].field_256 = arg1
                                            numCheckpoints[stor353[0]]++
                                            emit DelegateVotesChanged(0, arg1, delegates[0]);
                                            if arg1 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
            ('le', ('param', 'arg1'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 101))))
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) payable {
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
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if 1 == sub_1d2112a5[address(msg.sender)]:
        revert with 0, 'InsurAceToken: invalid sender'
    if sub_89661ca6.length:
        if sub_a009b710[address(msg.sender)] != 1:
            revert with 0, 'InsurAceToken: invalid sender'
    if 1 == sub_1d2112a5[address(arg1)]:
        revert with 0, 'InsurAceToken: invalid receipt'
    if delegates[address(msg.sender)] == delegates[arg1]:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
    else:
        if arg2 > 0:
            if not delegates[address(msg.sender)]:
                if not delegates[arg1]:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                else:
                    if numCheckpoints[stor353[arg1]]:
                        if arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 < checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if not numCheckpoints[stor353[arg1]]:
                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                            numCheckpoints[stor353[arg1]]++
                            emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                        else:
                            if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 += arg2
                                emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                            else:
                                checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                numCheckpoints[stor353[arg1]]++
                                emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                    else:
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not numCheckpoints[stor353[arg1]]:
                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                            numCheckpoints[stor353[arg1]]++
                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                        else:
                            if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 = arg2
                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                            else:
                                checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                numCheckpoints[stor353[arg1]]++
                                emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
            else:
                if numCheckpoints[stor353[address(msg.sender)]]:
                    if arg2 > checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not numCheckpoints[stor353[address(msg.sender)]]:
                        checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_0 = block.number
                        checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_256 = checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - arg2
                        numCheckpoints[stor353[address(msg.sender)]]++
                        emit DelegateVotesChanged(checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256, checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - arg2, delegates[address(msg.sender)]);
                        if not delegates[arg1]:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                        else:
                            if numCheckpoints[stor353[arg1]]:
                                if arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 < checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[arg1]]:
                                    checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                    checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                    numCheckpoints[stor353[arg1]]++
                                    emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                else:
                                    if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 += arg2
                                        emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                    else:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                        numCheckpoints[stor353[arg1]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[arg1]]:
                                    checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                    checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                    numCheckpoints[stor353[arg1]]++
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                else:
                                    if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 = arg2
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                    else:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                        numCheckpoints[stor353[arg1]]++
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                    else:
                        if block.number == checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_0:
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 -= arg2
                            emit DelegateVotesChanged(checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256, checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - arg2, delegates[address(msg.sender)]);
                            if not delegates[arg1]:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                            else:
                                if numCheckpoints[stor353[arg1]]:
                                    if arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 < checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg1]]:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                        numCheckpoints[stor353[arg1]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                    else:
                                        if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 += arg2
                                            emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                        else:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                            numCheckpoints[stor353[arg1]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg1]]:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                        numCheckpoints[stor353[arg1]]++
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                    else:
                                        if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 = arg2
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                        else:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                            numCheckpoints[stor353[arg1]]++
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                        else:
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_0 = block.number
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_256 = checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - arg2
                            numCheckpoints[stor353[address(msg.sender)]]++
                            emit DelegateVotesChanged(checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256, checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 - arg2, delegates[address(msg.sender)]);
                            if not delegates[arg1]:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                            else:
                                if numCheckpoints[stor353[arg1]]:
                                    if arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 < checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg1]]:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                        numCheckpoints[stor353[arg1]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                    else:
                                        if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 += arg2
                                            emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                        else:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                            numCheckpoints[stor353[arg1]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg1]]:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                        numCheckpoints[stor353[arg1]]++
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                    else:
                                        if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 = arg2
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                        else:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                            numCheckpoints[stor353[arg1]]++
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not numCheckpoints[stor353[address(msg.sender)]]:
                        checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_0 = block.number
                        checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_256 = -arg2
                        numCheckpoints[stor353[address(msg.sender)]]++
                        emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                        if not delegates[arg1]:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                        else:
                            if numCheckpoints[stor353[arg1]]:
                                if arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 < checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[arg1]]:
                                    checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                    checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                    numCheckpoints[stor353[arg1]]++
                                    emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                else:
                                    if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 += arg2
                                        emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                    else:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                        numCheckpoints[stor353[arg1]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[arg1]]:
                                    checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                    checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                    numCheckpoints[stor353[arg1]]++
                                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                else:
                                    if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 = arg2
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                    else:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                        numCheckpoints[stor353[arg1]]++
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                    else:
                        if block.number == checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_0:
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]] - 1].field_256 = -arg2
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if not delegates[arg1]:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                            else:
                                if numCheckpoints[stor353[arg1]]:
                                    if arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 < checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg1]]:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                        numCheckpoints[stor353[arg1]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                    else:
                                        if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 += arg2
                                            emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                        else:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                            numCheckpoints[stor353[arg1]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg1]]:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                        numCheckpoints[stor353[arg1]]++
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                    else:
                                        if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 = arg2
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                        else:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                            numCheckpoints[stor353[arg1]]++
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                        else:
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_0 = block.number
                            checkpoints[stor353[address(msg.sender)]][stor354[stor353[address(msg.sender)]]].field_256 = -arg2
                            numCheckpoints[stor353[address(msg.sender)]]++
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if not delegates[arg1]:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                            else:
                                if numCheckpoints[stor353[arg1]]:
                                    if arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 < checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg1]]:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                        numCheckpoints[stor353[arg1]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                    else:
                                        if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 += arg2
                                            emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                        else:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256
                                            numCheckpoints[stor353[arg1]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, arg2 + checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg1]]:
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                        checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                        numCheckpoints[stor353[arg1]]++
                                        emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                    else:
                                        if block.number == checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_0:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]] - 1].field_256 = arg2
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                        else:
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_0 = block.number
                                            checkpoints[stor353[arg1]][stor354[stor353[arg1]]].field_256 = arg2
                                            numCheckpoints[stor353[arg1]]++
                                            emit DelegateVotesChanged(0, arg2, delegates[arg1]);
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
            ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 101))))
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6645524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if 1 == sub_1d2112a5[address(arg1)]:
        revert with 0, 'InsurAceToken: invalid sender'
    if sub_89661ca6.length:
        if sub_a009b710[address(arg1)] != 1:
            revert with 0, 'InsurAceToken: invalid sender'
    if 1 == sub_1d2112a5[address(arg2)]:
        revert with 0, 'InsurAceToken: invalid receipt'
    if delegates[address(arg1)] == delegates[arg2]:
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
                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if arg3 <= 0:
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
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
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if not delegates[address(arg1)]:
                if not delegates[arg2]:
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
                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                else:
                    if numCheckpoints[stor353[arg2]]:
                        if arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 < checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if not numCheckpoints[stor353[arg2]]:
                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                            numCheckpoints[stor353[arg2]]++
                            emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[328 len 24],
                                            mem[376 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                        else:
                            if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 += arg3
                                emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
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
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[264 len 24],
                                                mem[312 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                            else:
                                checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                numCheckpoints[stor353[arg2]]++
                                emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[328 len 24],
                                                mem[376 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                    else:
                        if arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not numCheckpoints[stor353[arg2]]:
                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                            numCheckpoints[stor353[arg2]]++
                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[328 len 24],
                                            mem[376 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                        else:
                            if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 = arg3
                                emit DelegateVotesChanged(0, arg3, delegates[arg2]);
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
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[264 len 24],
                                                mem[312 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                            else:
                                checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                numCheckpoints[stor353[arg2]]++
                                emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[328 len 24],
                                                mem[376 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
            else:
                if numCheckpoints[stor353[address(arg1)]]:
                    if arg3 > checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not numCheckpoints[stor353[address(arg1)]]:
                        checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_0 = block.number
                        checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_256 = checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 - arg3
                        numCheckpoints[stor353[address(arg1)]]++
                        emit DelegateVotesChanged(checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256, checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 - arg3, delegates[address(arg1)]);
                        if not delegates[arg2]:
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[328 len 24],
                                            mem[376 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                        else:
                            if numCheckpoints[stor353[arg2]]:
                                if arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 < checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[arg2]]:
                                    checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                    checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                    numCheckpoints[stor353[arg2]]++
                                    emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[392 len 24],
                                                    mem[440 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                                else:
                                    if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 += arg3
                                        emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[328 len 24],
                                                        mem[376 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                    else:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                        numCheckpoints[stor353[arg2]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[392 len 24],
                                                        mem[440 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                            else:
                                if arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[arg2]]:
                                    checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                    checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                    numCheckpoints[stor353[arg2]]++
                                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[392 len 24],
                                                    mem[440 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                                else:
                                    if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 = arg3
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[328 len 24],
                                                        mem[376 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                    else:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                        numCheckpoints[stor353[arg2]]++
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[392 len 24],
                                                        mem[440 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                    else:
                        if block.number == checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_0:
                            checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 -= arg3
                            emit DelegateVotesChanged(checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256, checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 - arg3, delegates[address(arg1)]);
                            if not delegates[arg2]:
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
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[264 len 24],
                                                mem[312 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                            else:
                                if numCheckpoints[stor353[arg2]]:
                                    if arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 < checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg2]]:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                        numCheckpoints[stor353[arg2]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[328 len 24],
                                                        mem[376 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                    else:
                                        if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
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
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[264 len 24],
                                                            mem[312 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                        else:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                            numCheckpoints[stor353[arg2]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[328 len 24],
                                                            mem[376 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg2]]:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                        numCheckpoints[stor353[arg2]]++
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[328 len 24],
                                                        mem[376 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                    else:
                                        if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
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
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[264 len 24],
                                                            mem[312 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                        else:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                            numCheckpoints[stor353[arg2]]++
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[328 len 24],
                                                            mem[376 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                        else:
                            checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_0 = block.number
                            checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_256 = checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 - arg3
                            numCheckpoints[stor353[address(arg1)]]++
                            emit DelegateVotesChanged(checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256, checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 - arg3, delegates[address(arg1)]);
                            if not delegates[arg2]:
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[328 len 24],
                                                mem[376 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                            else:
                                if numCheckpoints[stor353[arg2]]:
                                    if arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 < checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg2]]:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                        numCheckpoints[stor353[arg2]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[392 len 24],
                                                        mem[440 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                                    else:
                                        if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[328 len 24],
                                                            mem[376 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                        else:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                            numCheckpoints[stor353[arg2]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[392 len 24],
                                                            mem[440 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg2]]:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                        numCheckpoints[stor353[arg2]]++
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[392 len 24],
                                                        mem[440 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                                    else:
                                        if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[328 len 24],
                                                            mem[376 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                        else:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                            numCheckpoints[stor353[arg2]]++
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[392 len 24],
                                                            mem[440 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                else:
                    if arg3 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not numCheckpoints[stor353[address(arg1)]]:
                        checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_0 = block.number
                        checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_256 = -arg3
                        numCheckpoints[stor353[address(arg1)]]++
                        emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                        if not delegates[arg2]:
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                            emit Transfer(arg3, arg1, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[328 len 24],
                                            mem[376 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                        else:
                            if numCheckpoints[stor353[arg2]]:
                                if arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 < checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[arg2]]:
                                    checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                    checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                    numCheckpoints[stor353[arg2]]++
                                    emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[392 len 24],
                                                    mem[440 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                                else:
                                    if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 += arg3
                                        emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[328 len 24],
                                                        mem[376 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                    else:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                        numCheckpoints[stor353[arg2]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[392 len 24],
                                                        mem[440 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                            else:
                                if arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not numCheckpoints[stor353[arg2]]:
                                    checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                    checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                    numCheckpoints[stor353[arg2]]++
                                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[392 len 24],
                                                    mem[440 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                                else:
                                    if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 = arg3
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[328 len 24],
                                                        mem[376 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                    else:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                        numCheckpoints[stor353[arg2]]++
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[392 len 24],
                                                        mem[440 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                    else:
                        if block.number == checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_0:
                            checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]] - 1].field_256 = -arg3
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if not delegates[arg2]:
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
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[264 len 24],
                                                mem[312 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                            else:
                                if numCheckpoints[stor353[arg2]]:
                                    if arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 < checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg2]]:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                        numCheckpoints[stor353[arg2]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[328 len 24],
                                                        mem[376 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                    else:
                                        if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
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
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[264 len 24],
                                                            mem[312 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                        else:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                            numCheckpoints[stor353[arg2]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[328 len 24],
                                                            mem[376 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg2]]:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                        numCheckpoints[stor353[arg2]]++
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[328 len 24],
                                                        mem[376 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                    else:
                                        if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
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
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[264 len 24],
                                                            mem[312 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                        else:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                            numCheckpoints[stor353[arg2]]++
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[328 len 24],
                                                            mem[376 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                        else:
                            checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_0 = block.number
                            checkpoints[stor353[address(arg1)]][stor354[stor353[address(arg1)]]].field_256 = -arg3
                            numCheckpoints[stor353[address(arg1)]]++
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if not delegates[arg2]:
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                emit Transfer(arg3, arg1, arg2);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[328 len 24],
                                                mem[376 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                            else:
                                if numCheckpoints[stor353[arg2]]:
                                    if arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 < checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg2]]:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                        numCheckpoints[stor353[arg2]]++
                                        emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[392 len 24],
                                                        mem[440 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                                    else:
                                        if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[328 len 24],
                                                            mem[376 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                        else:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256
                                            numCheckpoints[stor353[arg2]]++
                                            emit DelegateVotesChanged(checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, arg3 + checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256, delegates[arg2]);
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[392 len 24],
                                                            mem[440 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not numCheckpoints[stor353[arg2]]:
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                        checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                        numCheckpoints[stor353[arg2]]++
                                        emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(arg1)] -= arg3
                                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                        emit Transfer(arg3, arg1, arg2);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[392 len 24],
                                                        mem[440 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
                                    else:
                                        if block.number == checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_0:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]] - 1].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[328 len 24],
                                                            mem[376 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                                        else:
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_0 = block.number
                                            checkpoints[stor353[arg2]][stor354[stor353[arg2]]].field_256 = arg3
                                            numCheckpoints[stor353[arg2]]++
                                            emit DelegateVotesChanged(0, arg3, delegates[arg2]);
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(arg1)] -= arg3
                                            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                            emit Transfer(arg3, arg1, arg2);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[392 len 24],
                                                            mem[440 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[520 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[518 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
