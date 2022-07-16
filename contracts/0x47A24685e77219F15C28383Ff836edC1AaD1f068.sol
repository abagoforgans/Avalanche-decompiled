contract main {




// =====================  Runtime code  =====================


#
#  - delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#
const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address sub_f514bf42Address; offset 8
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function sub_f514bf42(?) payable {
    return sub_f514bf42Address
}

function _fallback() payable {
    revert
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)] > 0:
        return checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
    else:
        return 0
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
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
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
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
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_7b6d5cd9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f514bf42Address)
    staticcall sub_f514bf42Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if arg1:
            if arg1 * ext_call.return_data[0] / arg1 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (arg1 * ext_call.return_data[0] / totalSupply)
    revert
}

function sub_64e96f7f(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f514bf42Address)
    staticcall sub_f514bf42Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not balanceOf[address(arg1)]:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if balanceOf[address(arg1)]:
            if balanceOf[address(arg1)] * ext_call.return_data[0] / balanceOf[address(arg1)] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply)
    revert
}

function sub_91b04a7c(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f514bf42Address)
    staticcall sub_f514bf42Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalSupply:
        return arg1
    if not ext_call.return_data[0]:
        return arg1
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if arg1:
            if arg1 * totalSupply / arg1 != totalSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (arg1 * totalSupply / ext_call.return_data[0])
    revert
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654c454f3a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[202 len 26]
    if not numCheckpoints[address(arg1)]:
        return 0
    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 <= arg2:
        return checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256
    if checkpoints[address(arg1)][0].field_0 > arg2:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = 0
        mem[_33 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 7)
        _36 = mem[64]
        mem[64] = mem[64] + 64
        mem[_36] = checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_36 + 32] = checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 == arg2:
            return checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor8[address(arg1)] + -(uint32(stor8[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 >= arg2:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function leave(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f514bf42Address)
    staticcall sub_f514bf42Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0, 32, 33, 0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if delegates[address(msg.sender)]:
            if arg1 > 0:
                if delegates[address(msg.sender)]:
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[403 len 13],
                                    Mask(152, -256, mem[403 len 13]) << 256
                    if numCheckpoints[stor6[address(msg.sender)]] > 0:
                        if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg1
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        else:
                            if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 -= arg1
                            else:
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg1
                                numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg1, delegates[address(msg.sender)]);
                    else:
                        if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -arg1
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        else:
                            if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 = -arg1
                            else:
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -arg1
                                numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -arg1, delegates[address(msg.sender)]);
        require ext_code.size(sub_f514bf42Address)
        call sub_f514bf42Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / totalSupply
    else:
        require arg1
        if arg1 * ext_call.return_data[0] / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not msg.sender:
            revert with 0, 32, 33, 0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if delegates[address(msg.sender)]:
            if arg1 > 0:
                if delegates[address(msg.sender)]:
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[403 len 13],
                                    Mask(152, -256, mem[403 len 13]) << 256
                    if numCheckpoints[stor6[address(msg.sender)]] > 0:
                        if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg1
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        else:
                            if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 -= arg1
                            else:
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg1
                                numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg1, delegates[address(msg.sender)]);
                    else:
                        if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -arg1
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        else:
                            if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 = -arg1
                            else:
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -arg1
                                numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -arg1, delegates[address(msg.sender)]);
        require ext_code.size(sub_f514bf42Address)
        call sub_f514bf42Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1 * ext_call.return_data[0] / totalSupply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function enter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f514bf42Address)
    staticcall sub_f514bf42Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply + arg1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
        if not delegates[address(msg.sender)]:
            delegates[address(msg.sender)] = msg.sender
        if delegates[address(msg.sender)] != 0:
            if arg1 > 0:
                if delegates[address(msg.sender)]:
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[179 len 13],
                                    Mask(152, -256, mem[179 len 13]) << 256
                    if numCheckpoints[stor6[address(msg.sender)]] > 0:
                        if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 + arg1
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        else:
                            if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 += arg1
                            else:
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 + arg1
                                numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 + arg1, delegates[address(msg.sender)]);
                    else:
                        if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = arg1
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        else:
                            if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 = arg1
                            else:
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = arg1
                                numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, arg1, delegates[address(msg.sender)]);
    else:
        if not ext_call.return_data[0]:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
            if not delegates[address(msg.sender)]:
                delegates[address(msg.sender)] = msg.sender
            if delegates[address(msg.sender)] != 0:
                if arg1 > 0:
                    if delegates[address(msg.sender)]:
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[179 len 13],
                                        Mask(152, -256, mem[179 len 13]) << 256
                        if numCheckpoints[stor6[address(msg.sender)]] > 0:
                            if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 + arg1
                                numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            else:
                                if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 += arg1
                                else:
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 + arg1
                                    numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 + arg1, delegates[address(msg.sender)]);
                        else:
                            if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = arg1
                                numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            else:
                                if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 = arg1
                                else:
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = arg1
                                    numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, arg1, delegates[address(msg.sender)]);
        else:
            if not arg1:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (0 / ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / ext_call.return_data[0]
                if balanceOf[address(msg.sender)] + (0 / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                if not delegates[address(msg.sender)]:
                    delegates[address(msg.sender)] = msg.sender
                if delegates[address(msg.sender)] != 0:
                    if 0 / ext_call.return_data[0] > 0:
                        if delegates[address(msg.sender)]:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[243 len 13],
                                            Mask(152, -256, mem[243 len 13]) << 256
                            if numCheckpoints[stor6[address(msg.sender)]] > 0:
                                if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 + (0 / ext_call.return_data[0])
                                    numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                                else:
                                    if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 += 0 / ext_call.return_data[0]
                                    else:
                                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 + (0 / ext_call.return_data[0])
                                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 + (0 / ext_call.return_data[0]), delegates[address(msg.sender)]);
                            else:
                                if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = 0 / ext_call.return_data[0]
                                    numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                                else:
                                    if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 = 0 / ext_call.return_data[0]
                                    else:
                                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = 0 / ext_call.return_data[0]
                                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, 0 / ext_call.return_data[0], delegates[address(msg.sender)]);
            else:
                require arg1
                if arg1 * totalSupply / arg1 != totalSupply:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (arg1 * totalSupply / ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1 * totalSupply / ext_call.return_data[0]
                if balanceOf[address(msg.sender)] + (arg1 * totalSupply / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1 * totalSupply / ext_call.return_data[0]
                emit Transfer((arg1 * totalSupply / ext_call.return_data[0]), 0, msg.sender);
                if not delegates[address(msg.sender)]:
                    delegates[address(msg.sender)] = msg.sender
                if delegates[address(msg.sender)] != 0:
                    if arg1 * totalSupply / ext_call.return_data[0] > 0:
                        if delegates[address(msg.sender)]:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[243 len 13],
                                            Mask(152, -256, mem[243 len 13]) << 256
                            if numCheckpoints[stor6[address(msg.sender)]] > 0:
                                if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 + (arg1 * totalSupply / ext_call.return_data[0])
                                    numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                                else:
                                    if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 += arg1 * totalSupply / ext_call.return_data[0]
                                    else:
                                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 + (arg1 * totalSupply / ext_call.return_data[0])
                                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 + (arg1 * totalSupply / ext_call.return_data[0]), delegates[address(msg.sender)]);
                            else:
                                if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = arg1 * totalSupply / ext_call.return_data[0]
                                    numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                                else:
                                    if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 = arg1 * totalSupply / ext_call.return_data[0]
                                    else:
                                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = arg1 * totalSupply / ext_call.return_data[0]
                                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, arg1 * totalSupply / ext_call.return_data[0], delegates[address(msg.sender)]);
    require ext_code.size(sub_f514bf42Address)
    call sub_f514bf42Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[179 len 13],
                                    Mask(152, -256, mem[179 len 13]) << 256
                    if numCheckpoints[address(arg1)] > 0:
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if block.number >= 4294967296:
                    revert with 0, 
                                32,
                                51,
                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                mem[179 len 13],
                                Mask(152, -256, mem[179 len 13]) << 256
                if numCheckpoints[stor6[address(msg.sender)]] > 0:
                    if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[339 len 13],
                                            Mask(152, -256, mem[339 len 13]) << 256
                            if numCheckpoints[address(arg1)] > 0:
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[275 len 13],
                                                Mask(152, -256, mem[275 len 13]) << 256
                                if numCheckpoints[address(arg1)] > 0:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[339 len 13],
                                                Mask(152, -256, mem[339 len 13]) << 256
                                if numCheckpoints[address(arg1)] > 0:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[339 len 13],
                                            Mask(152, -256, mem[339 len 13]) << 256
                            if numCheckpoints[address(arg1)] > 0:
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[275 len 13],
                                                Mask(152, -256, mem[275 len 13]) << 256
                                if numCheckpoints[address(arg1)] > 0:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[339 len 13],
                                                Mask(152, -256, mem[339 len 13]) << 256
                                if numCheckpoints[address(arg1)] > 0:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor8[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor8[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
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
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if not delegates[address(arg1)]:
        delegates[address(arg1)] = arg1
    if delegates[address(msg.sender)] != delegates[address(arg1)]:
        if arg2 > 0:
            if not delegates[address(msg.sender)]:
                if delegates[address(arg1)]:
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[275 len 13],
                                    Mask(152, -256, mem[275 len 13]) << 256
                    if numCheckpoints[stor6[address(arg1)]] > 0:
                        if numCheckpoints[stor6[address(arg1)]] <= 0:
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                    else:
                        if numCheckpoints[stor6[address(arg1)]] <= 0:
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
            else:
                if block.number >= 4294967296:
                    revert with 0, 
                                32,
                                51,
                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                mem[275 len 13],
                                Mask(152, -256, mem[275 len 13]) << 256
                if numCheckpoints[stor6[address(msg.sender)]] > 0:
                    if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg2
                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[435 len 13],
                                            Mask(152, -256, mem[435 len 13]) << 256
                            if numCheckpoints[stor6[address(arg1)]] > 0:
                                if numCheckpoints[stor6[address(arg1)]] <= 0:
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                    numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                            else:
                                if numCheckpoints[stor6[address(arg1)]] <= 0:
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                    numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    else:
                        if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                            emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[371 len 13],
                                                Mask(152, -256, mem[371 len 13]) << 256
                                if numCheckpoints[stor6[address(arg1)]] > 0:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                else:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                        else:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[435 len 13],
                                                Mask(152, -256, mem[435 len 13]) << 256
                                if numCheckpoints[stor6[address(arg1)]] > 0:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                else:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                else:
                    if numCheckpoints[stor6[address(msg.sender)]] <= 0:
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -arg2
                        numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[435 len 13],
                                            Mask(152, -256, mem[435 len 13]) << 256
                            if numCheckpoints[stor6[address(arg1)]] > 0:
                                if numCheckpoints[stor6[address(arg1)]] <= 0:
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                    numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                            else:
                                if numCheckpoints[stor6[address(arg1)]] <= 0:
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                    numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    else:
                        if checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[371 len 13],
                                                Mask(152, -256, mem[371 len 13]) << 256
                                if numCheckpoints[stor6[address(arg1)]] > 0:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                else:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                        else:
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(msg.sender)]][stor8[stor6[address(msg.sender)]]].field_256 = -arg2
                            numCheckpoints[stor6[address(msg.sender)]] = uint32(numCheckpoints[stor6[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[435 len 13],
                                                Mask(152, -256, mem[435 len 13]) << 256
                                if numCheckpoints[stor6[address(arg1)]] > 0:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                else:
                                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
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
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if not delegates[address(arg2)]:
        delegates[address(arg2)] = arg2
    if delegates[address(arg1)] != delegates[address(arg2)]:
        if arg3 > 0:
            if not delegates[address(arg1)]:
                if delegates[address(arg2)]:
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[371 len 13],
                                    Mask(152, -256, mem[371 len 13]) << 256
                    if numCheckpoints[stor6[address(arg2)]] > 0:
                        if numCheckpoints[stor6[address(arg2)]] <= 0:
                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                        else:
                            if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                            else:
                                checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                    else:
                        if numCheckpoints[stor6[address(arg2)]] <= 0:
                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                        else:
                            if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                            else:
                                checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
            else:
                if block.number >= 4294967296:
                    revert with 0, 
                                32,
                                51,
                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                mem[371 len 13],
                                Mask(152, -256, mem[371 len 13]) << 256
                if numCheckpoints[stor6[address(arg1)]] > 0:
                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 - arg3
                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                        if delegates[address(arg2)]:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[531 len 13],
                                            Mask(152, -256, mem[531 len 13]) << 256
                            if numCheckpoints[stor6[address(arg2)]] > 0:
                                if numCheckpoints[stor6[address(arg2)]] <= 0:
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                    numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                    else:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                            else:
                                if numCheckpoints[stor6[address(arg2)]] <= 0:
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                    numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                    else:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                    else:
                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 -= arg3
                            emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                            if delegates[address(arg2)]:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[467 len 13],
                                                Mask(152, -256, mem[467 len 13]) << 256
                                if numCheckpoints[stor6[address(arg2)]] > 0:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                else:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                        else:
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 - arg3
                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256, checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                            if delegates[address(arg2)]:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[531 len 13],
                                                Mask(152, -256, mem[531 len 13]) << 256
                                if numCheckpoints[stor6[address(arg2)]] > 0:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                else:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                else:
                    if numCheckpoints[stor6[address(arg1)]] <= 0:
                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = -arg3
                        numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                        if delegates[address(arg2)]:
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[531 len 13],
                                            Mask(152, -256, mem[531 len 13]) << 256
                            if numCheckpoints[stor6[address(arg2)]] > 0:
                                if numCheckpoints[stor6[address(arg2)]] <= 0:
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                    numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                    else:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                            else:
                                if numCheckpoints[stor6[address(arg2)]] <= 0:
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                    numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                    else:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                    else:
                        if checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]] - 1 << 224].field_256 = -arg3
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if delegates[address(arg2)]:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[467 len 13],
                                                Mask(152, -256, mem[467 len 13]) << 256
                                if numCheckpoints[stor6[address(arg2)]] > 0:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                else:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                        else:
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor6[address(arg1)]][stor8[stor6[address(arg1)]]].field_256 = -arg3
                            numCheckpoints[stor6[address(arg1)]] = uint32(numCheckpoints[stor6[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if delegates[address(arg2)]:
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734c454f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[531 len 13],
                                                Mask(152, -256, mem[531 len 13]) << 256
                                if numCheckpoints[stor6[address(arg2)]] > 0:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 += arg3
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256, checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                else:
                                    if numCheckpoints[stor6[address(arg2)]] <= 0:
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]] - 1 << 224].field_256 = arg3
                                        else:
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor6[address(arg2)]][stor8[stor6[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor6[address(arg2)]] = uint32(numCheckpoints[stor6[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
    return 1
}



}
