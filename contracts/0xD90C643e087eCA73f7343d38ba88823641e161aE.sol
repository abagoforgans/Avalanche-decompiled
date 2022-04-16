contract main {




// =====================  Runtime code  =====================


const name = 'FERDI', 0

const decimals = 18

const symbol = 'FERDI', 0

const DOMAIN_TYPEHASH = sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', Mask(24, 232, 'ct)') >> 232)

const PERMIT_TYPEHASH = sha3('Permit(address owner,address spe', 'nder,uint256 value,uint256 nonce', Mask(144, 112, ',uint256 deadline)') >> 112)

const DELEGATION_TYPEHASH = sha3('Delegation(address delegatee,uin', Mask(208, 48, 't256 nonce,uint256 expiry)') >> 48)


uint256 totalSupply;
mapping of uint128 allowance;
mapping of uint128 balanceOf;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function totalSupply() payable {
    return totalSupply
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[arg1]
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
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_32
}

function _fallback() payable {
    revert
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numCheckpoints[address(arg1)] > 0:
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
    else:
        return 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 == -1:
        allowance[address(msg.sender)][address(arg1)] = test266151307()
        emit Approval(test266151307(), msg.sender, arg1);
    else:
        if arg2 >= 0x1000000000000000000000000:
            revert with 0, 32, 39, 0xfe5348455250413a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[167 len 25] >> 56, 0
        allowance[address(msg.sender)][address(arg1)] = Mask(96, 0, arg2)
        emit Approval(Mask(96, 0, arg2), msg.sender, arg1);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SHERPA::getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 <= arg2:
        return checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32
    if checkpoints[address(arg1)][0].field_0 > arg2:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 4)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 == arg2:
            return checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_32
        if checkpoints[address(arg1)][stor5[address(arg1)] + -(uint32(stor5[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 >= arg2:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_32
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if arg3 == -1:
        nonces[address(arg1)]++
        signer = erecover(sha3(0, sha3(sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 'ct)'), sha3('FERDI'), chainid, this.address), sha3(sha3('Permit(address owner,address spe', 'nder,uint256 value,uint256 nonce', ',uint256 deadline)'), address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'SHERPA::permit: invalid signature'
        if address(signer) != arg1:
            revert with 0, 'SHERPA::permit: unauthorized'
        if block.timestamp > arg4:
            revert with 0, 'SHERPA::permit: signature expired'
        allowance[address(arg1)][address(arg2)] = test266151307()
        emit Approval(test266151307(), arg1, arg2);
    else:
        if arg3 >= 0x1000000000000000000000000:
            revert with 0, 32, 38, 0x735348455250413a3a7065726d69743a20616d6f756e74206578636565647320393620626974, mem[166 len 26] >> 48, 0
        nonces[address(arg1)]++
        signer = erecover(sha3(0, sha3(sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 'ct)'), sha3('FERDI'), chainid, this.address), sha3(sha3('Permit(address owner,address spe', 'nder,uint256 value,uint256 nonce', ',uint256 deadline)'), address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'SHERPA::permit: invalid signature'
        if address(signer) != arg1:
            revert with 0, 'SHERPA::permit: unauthorized'
        if block.timestamp > arg4:
            revert with 0, 'SHERPA::permit: signature expired'
        allowance[address(arg1)][address(arg2)] = Mask(96, 0, arg3)
        emit Approval(Mask(96, 0, arg3), arg1, arg2);
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
                    if numCheckpoints[address(arg1)] > 0:
                        if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        41,
                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[169 len 23] >> 72,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[278 len 10] >> 176,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[169 len 23] >> 72,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[278 len 10] >> 176,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor3[address(msg.sender)]] > 0:
                    if balanceOf[address(msg.sender)] > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[170 len 22] >> 80,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[278 len 10] >> 176,
                                    0
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[425 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[534 len 10] >> 176,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[425 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[534 len 10] >> 176,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[361 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[470 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[361 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[470 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[425 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[534 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[425 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[534 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[170 len 22] >> 80,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[278 len 10] >> 176,
                                    0
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[425 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[534 len 10] >> 176,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[425 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[534 len 10] >> 176,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[361 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[470 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[361 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[470 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -balanceOf[address(msg.sender)])
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(msg.sender)]), delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[425 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[534 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(msg.sender)]), arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[425 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[534 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(msg.sender)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    signer = erecover(sha3(0, sha3(sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 'ct)'), sha3('FERDI'), chainid, this.address), sha3(sha3('Delegation(address delegatee,uin', 't256 nonce,uint256 expiry)'), address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'SHERPA::delegateBySig: invalid signature'
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 'SHERPA::delegateBySig: invalid nonce'
    if block.timestamp > arg3:
        revert with 0, 'SHERPA::delegateBySig: signature expired'
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        41,
                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, Mask(184, 0, arg5) >> 72,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[792 len 10] >> 176,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, Mask(184, 0, arg5) >> 72,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[792 len 10] >> 176,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor3[address(signer)]] > 0:
                    if balanceOf[address(signer)] > checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, Mask(176, 0, arg5) >> 80,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[792 len 10] >> 176,
                                    0
                    if numCheckpoints[stor3[address(signer)]] <= 0:
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                        numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[939 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1048 len 10] >> 176,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[939 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1048 len 10] >> 176,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[875 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[984 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[875 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[984 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)])
                            numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 - balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[939 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1048 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[939 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1048 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, Mask(176, 0, arg5) >> 80,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[792 len 10] >> 176,
                                    0
                    if numCheckpoints[stor3[address(signer)]] <= 0:
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                        numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[939 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1048 len 10] >> 176,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[939 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1048 len 10] >> 176,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                    checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]] - 1 << 224].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[875 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[984 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[875 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[984 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(signer)]][stor5[stor3[address(signer)]]].field_32 = Mask(96, 0, -balanceOf[address(signer)])
                            numCheckpoints[stor3[address(signer)]] = uint32(numCheckpoints[stor3[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -balanceOf[address(signer)]), delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]) < checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[939 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1048 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)])
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0, Mask(96, 0, checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 + balanceOf[address(signer)]), arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[939 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[1048 len 10] >> 176,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                        checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor5[address(arg1)] - 1 << 224].field_32 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_0 = balanceOf[address(signer)]
                                            checkpoints[address(arg1)][stor5[address(arg1)]].field_32 = 0
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= 0x1000000000000000000000000:
        revert with 0, 32, 40, 0x735348455250413a3a7472616e736665723a20616d6f756e74206578636565647320393620626974, mem[168 len 24] >> 64, 0
    if not msg.sender:
        revert with 0, 'SHERPA::_transferTokens: cannot transfer from the zero address'
    if not arg1:
        revert with 0, 'SHERPA::_transferTokens: cannot transfer to the zero address'
    if Mask(96, 0, arg2) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    56,
                    0x735348455250413a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[280 len 8] >> 192,
                    0
    balanceOf[address(msg.sender)] = Mask(96, 0, balanceOf[address(msg.sender)] - arg2)
    if Mask(96, 0, balanceOf[address(arg1)] + arg2) < balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    50,
                    0x655348455250413a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[370 len 14] >> 144,
                    0
    balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] + arg2)
    emit Transfer(Mask(96, 0, arg2), msg.sender, arg1);
    if delegates[address(msg.sender)] != delegates[address(arg1)]:
        if Mask(96, 0, arg2) > 0:
            if not delegates[address(msg.sender)]:
                if delegates[address(arg1)]:
                    if numCheckpoints[stor3[address(arg1)]] > 0:
                        if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        41,
                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[457 len 23] >> 72,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[566 len 10] >> 176,
                                        0
                        if numCheckpoints[stor3[address(arg1)]] <= 0:
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                            else:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                    else:
                        if Mask(96, 0, arg2) < 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[457 len 23] >> 72,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[566 len 10] >> 176,
                                        0
                        if numCheckpoints[stor3[address(arg1)]] <= 0:
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                            else:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
            else:
                if numCheckpoints[stor3[address(msg.sender)]] > 0:
                    if Mask(96, 0, arg2) > checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[458 len 22] >> 80,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[566 len 10] >> 176,
                                    0
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor3[address(arg1)]] > 0:
                                if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                0
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                    else:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                            else:
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                0
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor3[address(arg1)]] > 0:
                                    if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[649 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[758 len 10] >> 176,
                                                    0
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[649 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[758 len 10] >> 176,
                                                    0
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 - arg2), delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor3[address(arg1)]] > 0:
                                    if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                    0
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                    0
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                else:
                    if Mask(96, 0, arg2) > 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[458 len 22] >> 80,
                                    0
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[566 len 10] >> 176,
                                    0
                    if numCheckpoints[stor3[address(msg.sender)]] <= 0:
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                        numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor3[address(arg1)]] > 0:
                                if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                0
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                    else:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                            else:
                                if Mask(96, 0, arg2) < 0:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                0
                                if numCheckpoints[stor3[address(arg1)]] <= 0:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                    else:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                    else:
                        if checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]] - 1 << 224].field_32 = Mask(96, 0, -arg2)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor3[address(arg1)]] > 0:
                                    if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[649 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[758 len 10] >> 176,
                                                    0
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[649 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[758 len 10] >> 176,
                                                    0
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
                        else:
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(msg.sender)]][stor5[stor3[address(msg.sender)]]].field_32 = Mask(96, 0, -arg2)
                            numCheckpoints[stor3[address(msg.sender)]] = uint32(numCheckpoints[stor3[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg2), delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor3[address(arg1)]] > 0:
                                    if Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2) < checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                    0
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 + arg2), delegates[address(arg1)]);
                                else:
                                    if Mask(96, 0, arg2) < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                    0
                                    if numCheckpoints[stor3[address(arg1)]] <= 0:
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                        numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, arg2)
                                        else:
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, arg2)
                                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg2), delegates[address(arg1)]);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 >= 0x1000000000000000000000000:
        revert with 0, 32, 39, 0xfe5348455250413a3a617070726f76653a20616d6f756e74206578636565647320393620626974, mem[167 len 25] >> 56, 0
    if msg.sender == arg1:
        if not arg1:
            revert with 0, 'SHERPA::_transferTokens: cannot transfer from the zero address'
        if not arg2:
            revert with 0, 'SHERPA::_transferTokens: cannot transfer to the zero address'
        if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        56,
                        0x735348455250413a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[280 len 8] >> 192,
                        0
        balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
        if Mask(96, 0, balanceOf[address(arg2)] + arg3) < balanceOf[address(arg2)]:
            revert with 0, 
                        32,
                        50,
                        0x655348455250413a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[370 len 14] >> 144,
                        0
        balanceOf[address(arg2)] = Mask(96, 0, balanceOf[address(arg2)] + arg3)
        emit Transfer(Mask(96, 0, arg3), arg1, arg2);
        if delegates[address(arg1)] != delegates[address(arg2)]:
            if Mask(96, 0, arg3) > 0:
                if not delegates[address(arg1)]:
                    if delegates[address(arg2)]:
                        if numCheckpoints[stor3[address(arg2)]] > 0:
                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            41,
                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[457 len 23] >> 72,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[566 len 10] >> 176,
                                            0
                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                            else:
                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                else:
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                        else:
                            if Mask(96, 0, arg3) < 0:
                                revert with 0, 
                                            32,
                                            41,
                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[457 len 23] >> 72,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[566 len 10] >> 176,
                                            0
                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                            else:
                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                else:
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                else:
                    if numCheckpoints[stor3[address(arg1)]] > 0:
                        if Mask(96, 0, arg3) > checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[458 len 22] >> 80,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[566 len 10] >> 176,
                                        0
                        if numCheckpoints[stor3[address(arg1)]] <= 0:
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                            if delegates[address(arg2)]:
                                if numCheckpoints[stor3[address(arg2)]] > 0:
                                    if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                    0
                                    if numCheckpoints[stor3[address(arg2)]] <= 0:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        else:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                else:
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                    0
                                    if numCheckpoints[stor3[address(arg2)]] <= 0:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                        else:
                            if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[649 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[758 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[649 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[758 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                    else:
                        if Mask(96, 0, arg3) > 0:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[458 len 22] >> 80,
                                        0
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[566 len 10] >> 176,
                                        0
                        if numCheckpoints[stor3[address(arg1)]] <= 0:
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                            numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                            if delegates[address(arg2)]:
                                if numCheckpoints[stor3[address(arg2)]] > 0:
                                    if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                    0
                                    if numCheckpoints[stor3[address(arg2)]] <= 0:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        else:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                else:
                                    if Mask(96, 0, arg3) < 0:
                                        revert with 0, 
                                                    32,
                                                    41,
                                                    0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                    0
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                    0
                                    if numCheckpoints[stor3[address(arg2)]] <= 0:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    else:
                                        if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                        else:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                        else:
                            if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[649 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[758 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[649 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[758 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
    else:
        if allowance[address(arg1)][address(msg.sender)] == test266151307():
            if not arg1:
                revert with 0, 'SHERPA::_transferTokens: cannot transfer from the zero address'
            if not arg2:
                revert with 0, 'SHERPA::_transferTokens: cannot transfer to the zero address'
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            56,
                            0x735348455250413a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[280 len 8] >> 192,
                            0
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, balanceOf[address(arg2)] + arg3) < balanceOf[address(arg2)]:
                revert with 0, 
                            32,
                            50,
                            0x655348455250413a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[370 len 14] >> 144,
                            0
            balanceOf[address(arg2)] = Mask(96, 0, balanceOf[address(arg2)] + arg3)
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[address(arg2)]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[address(arg2)]:
                            if numCheckpoints[stor3[address(arg2)]] > 0:
                                if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[457 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[566 len 10] >> 176,
                                                0
                                if numCheckpoints[stor3[address(arg2)]] <= 0:
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    else:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                            else:
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[457 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[566 len 10] >> 176,
                                                0
                                if numCheckpoints[stor3[address(arg2)]] <= 0:
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                    else:
                        if numCheckpoints[stor3[address(arg1)]] > 0:
                            if Mask(96, 0, arg3) > checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[458 len 22] >> 80,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[566 len 10] >> 176,
                                            0
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[649 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[758 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[649 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[758 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[458 len 22] >> 80,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[566 len 10] >> 176,
                                            0
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[649 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[758 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[649 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[758 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[713 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[822 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
        else:
            if Mask(96, 0, arg3) > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            63,
                            0x735348455250413a3a7472616e7366657246726f6d3a207472616e7366657220616d6f756e742065786365656473207370656e64657220616c6c6f77616e63, mem[287 len 1] >> 248,
                            0
            allowance[address(arg1)][address(msg.sender)] = Mask(96, 0, allowance[address(arg1)][address(msg.sender)] - arg3)
            emit Approval(Mask(96, 0, allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            if not arg1:
                revert with 0, 'SHERPA::_transferTokens: cannot transfer from the zero address'
            if not arg2:
                revert with 0, 'SHERPA::_transferTokens: cannot transfer to the zero address'
            if Mask(96, 0, arg3) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            56,
                            0x735348455250413a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[376 len 8] >> 192,
                            0
            balanceOf[address(arg1)] = Mask(96, 0, balanceOf[address(arg1)] - arg3)
            if Mask(96, 0, balanceOf[address(arg2)] + arg3) < balanceOf[address(arg2)]:
                revert with 0, 
                            32,
                            50,
                            0x655348455250413a3a5f7472616e73666572546f6b656e733a207472616e7366657220616d6f756e74206f766572666c6f77, mem[466 len 14] >> 144,
                            0
            balanceOf[address(arg2)] = Mask(96, 0, balanceOf[address(arg2)] + arg3)
            emit Transfer(Mask(96, 0, arg3), arg1, arg2);
            if delegates[address(arg1)] != delegates[address(arg2)]:
                if Mask(96, 0, arg3) > 0:
                    if not delegates[address(arg1)]:
                        if delegates[address(arg2)]:
                            if numCheckpoints[stor3[address(arg2)]] > 0:
                                if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[553 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[662 len 10] >> 176,
                                                0
                                if numCheckpoints[stor3[address(arg2)]] <= 0:
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                    else:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                            else:
                                if Mask(96, 0, arg3) < 0:
                                    revert with 0, 
                                                32,
                                                41,
                                                0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[553 len 23] >> 72,
                                                0
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[662 len 10] >> 176,
                                                0
                                if numCheckpoints[stor3[address(arg2)]] <= 0:
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                else:
                                    if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                    else:
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                        numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                    else:
                        if numCheckpoints[stor3[address(arg1)]] > 0:
                            if Mask(96, 0, arg3) > checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[554 len 22] >> 80,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[662 len 10] >> 176,
                                            0
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[809 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[918 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[809 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[918 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[745 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[854 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[745 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[854 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 - arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[809 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[918 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[809 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[918 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                        else:
                            if Mask(96, 0, arg3) > 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e7420756e646572666c6f77, mem[554 len 22] >> 80,
                                            0
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            54,
                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[662 len 10] >> 176,
                                            0
                            if numCheckpoints[stor3[address(arg1)]] <= 0:
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                if delegates[address(arg2)]:
                                    if numCheckpoints[stor3[address(arg2)]] > 0:
                                        if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[809 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[918 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                    else:
                                        if Mask(96, 0, arg3) < 0:
                                            revert with 0, 
                                                        32,
                                                        41,
                                                        0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[809 len 23] >> 72,
                                                        0
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        54,
                                                        0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[918 len 10] >> 176,
                                                        0
                                        if numCheckpoints[stor3[address(arg2)]] <= 0:
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                            numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        else:
                                            if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                            else:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                            else:
                                if checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]] - 1 << 224].field_32 = Mask(96, 0, -arg3)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[745 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[854 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[745 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[854 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
                                else:
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor3[address(arg1)]][stor5[stor3[address(arg1)]]].field_32 = Mask(96, 0, -arg3)
                                    numCheckpoints[stor3[address(arg1)]] = uint32(numCheckpoints[stor3[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, Mask(96, 0, -arg3), delegates[address(arg1)]);
                                    if delegates[address(arg2)]:
                                        if numCheckpoints[stor3[address(arg2)]] > 0:
                                            if Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3) < checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[809 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[918 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0, Mask(96, 0, checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 + arg3), delegates[address(arg2)]);
                                        else:
                                            if Mask(96, 0, arg3) < 0:
                                                revert with 0, 
                                                            32,
                                                            41,
                                                            0x735348455250413a3a5f6d6f7665566f7465733a20766f746520616d6f756e74206f766572666c6f77, mem[809 len 23] >> 72,
                                                            0
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            54,
                                                            0x735348455250413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[918 len 10] >> 176,
                                                            0
                                            if numCheckpoints[stor3[address(arg2)]] <= 0:
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            else:
                                                if checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]] - 1 << 224].field_32 = Mask(96, 0, arg3)
                                                else:
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor3[address(arg2)]][stor5[stor3[address(arg2)]]].field_32 = Mask(96, 0, arg3)
                                                    numCheckpoints[stor3[address(arg2)]] = uint32(numCheckpoints[stor3[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, Mask(96, 0, arg3), delegates[address(arg2)]);
    return 1
}



}
