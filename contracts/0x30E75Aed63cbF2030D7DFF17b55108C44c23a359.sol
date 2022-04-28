contract main {




// =====================  Runtime code  =====================


const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const BURNER_ROLE = 0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct name;
array of uint256 symbol;
uint8 decimals;
array of struct roleAdmin;
address sub_3bc8658eAddress;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function decimals() payable {
    return decimals
}

function sub_3bc8658e(?) payable {
    return sub_3bc8658eAddress
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[address(arg1)]
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
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
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if not arg1:
        revert with 0, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sXPZ::getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _31 = mem[64]
        mem[64] = mem[64] + 64
        mem[_31] = 0
        mem[_31 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 9)
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = checkpoints[address(arg1)][stor10[address(arg1)] + -(uint32(stor10[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_34 + 32] = checkpoints[address(arg1)][stor10[address(arg1)] + -(uint32(stor10[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor10[address(arg1)] + -(uint32(stor10[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor10[address(arg1)] + -(uint32(stor10[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor10[address(arg1)] + -(uint32(stor10[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function grantMinterBurnerRoles(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sXPZ: Need DEFAULT_ADMIN_ROLE ser!'
    if not roleAdmin[roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0:
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0++
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0 = arg1
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_160 = 0
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0 = roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0
        emit RoleGranted(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, arg1, msg.sender);
    if not roleAdmin[roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0:
        roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0++
        roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0 = arg1
        roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_160 = 0
        roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 = roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0
        emit RoleGranted(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, arg1, msg.sender);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0:
        revert with 0, 'sXPZ: Need MINTER_ROLE ser!'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor8[address(arg1)]]:
                    if arg2 + checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                    0
                    if numCheckpoints[stor8[address(arg1)]] <= 0:
                        checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2 + checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256
                        numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2 + checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                    0
                    if numCheckpoints[stor8[address(arg1)]] <= 0:
                        checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function revokeMinterBurnerRoles(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sXPZ: Need DEFAULT_ADMIN_ROLE ser!'
    if not roleAdmin[roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0:
        require roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0 - 1 < roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0
        require roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0 - 1 < roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0].field_0 = roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0].field_0 = roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0
        require roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0].field_0 = 0
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6].field_0--
        roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(arg1)].field_0 = 0
        emit RoleRevoked(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, arg1, msg.sender);
    if not roleAdmin[roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0:
        require roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0 - 1 < roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0
        require roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 - 1 < roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0
        roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0].field_0 = roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0
        roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0].field_0 = roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0
        require roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0
        roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0].field_0 = 0
        roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848].field_0--
        roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(arg1)].field_0 = 0
        emit RoleRevoked(0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848, arg1, msg.sender);
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][1][address(msg.sender)].field_0:
        revert with 0, 'sXPZ: Need BURNER_ROLE ser!'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7342455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor8[address(arg1)]]:
                    if arg2 + checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                    0
                    if numCheckpoints[stor8[address(arg1)]] <= 0:
                        checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2 + checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256
                        numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2 + checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                    0
                    if numCheckpoints[stor8[address(arg1)]] <= 0:
                        checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(arg1)]][stor10[stor8[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor8[address(arg1)]] = uint32(numCheckpoints[stor8[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor8[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                    0
                    if numCheckpoints[stor8[address(msg.sender)]] <= 0:
                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                    0
                    if numCheckpoints[stor8[address(msg.sender)]] <= 0:
                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(msg.sender)]][stor10[stor8[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor8[address(msg.sender)]] = uint32(numCheckpoints[stor8[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 == arg4
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
        revert with 0, 'sXPZ::delegateBySig: invalid signature'
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 'sXPZ::delegateBySig: invalid nonce'
    if block.timestamp > arg3:
        revert with 0, 'sXPZ::delegateBySig: signature expired'
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(96, 0, arg5) >> 160,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(96, 0, arg5) >> 160,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor8[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(96, 0, arg5) >> 160,
                                    0
                    if numCheckpoints[stor8[address(signer)]] <= 0:
                        checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_256 = checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor8[address(signer)]] = uint32(numCheckpoints[stor8[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256, checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256, checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 758 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 758 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_256 = checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor8[address(signer)]] = uint32(numCheckpoints[stor8[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256, checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(96, 0, arg5) >> 160,
                                    0
                    if numCheckpoints[stor8[address(signer)]] <= 0:
                        checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor8[address(signer)]] = uint32(numCheckpoints[stor8[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 758 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 758 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor8[address(signer)]][stor10[stor8[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor8[address(signer)]] = uint32(numCheckpoints[stor8[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x6f7358505a3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 822 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor10[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor10[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}



}
